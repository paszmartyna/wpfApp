﻿using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApplication.Models;

namespace WpfApplication
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private HttpClient githubHttpClient;

        private readonly AppDbContext _context = new AppDbContext();

        private CollectionViewSource ordersViewSource;

        public MainWindow()
        {
            InitializeComponent();
            ordersViewSource = (CollectionViewSource)FindResource(nameof(ordersViewSource));
            SetGithubHttpClient();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            _context.Database.EnsureCreated();
            _context.Orders.Load();
            ordersViewSource.Source = _context.Orders.Local.ToObservableCollection();
            ShowInfo();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

            _context.SaveChanges();
            ordersDataGrid.Items.Refresh();
            orderDetailsDataGrid.Items.Refresh();
        }

        protected override void OnClosing(CancelEventArgs e)
        {
            _context.Dispose();
            githubHttpClient.Dispose();
            base.OnClosing(e);
        }

        private void Delete_Button_Click(object sender, RoutedEventArgs e)
        {
            var selectedOrderId = (ordersDataGrid.SelectedItem as Order).Id;
            Order order = _context.Orders
                               .SingleOrDefault(order => order.Id == selectedOrderId);

            if (order != null)
            {
                _context.Orders.Remove(order);
            }
            _context.SaveChanges();
            ordersDataGrid.Items.Refresh();
            orderDetailsDataGrid.Items.Refresh();
        }

        private void DeleteOrderDetail_Button_Click(object sender, RoutedEventArgs e)
        {
            var selectedOrderDetailId = (orderDetailsDataGrid.SelectedItem as OrderDetail).Id;
            OrderDetail orderDetail = _context.OrderDetails
                                        .SingleOrDefault(orderDetail => orderDetail.Id == selectedOrderDetailId);

            if (orderDetail != null)
            {
                _context.OrderDetails.Remove(orderDetail);
            }
            _context.SaveChanges();
            ordersDataGrid.Items.Refresh();
            orderDetailsDataGrid.Items.Refresh();
        }

        private void SetGithubHttpClient()
        {
            githubHttpClient = new HttpClient()
            {
                BaseAddress = new Uri("https://api.github.com/")
            };

            githubHttpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            githubHttpClient.DefaultRequestHeaders.Add("User-Agent", "C# App");
        }

        private async void ShowInfo()
        {
            var jsonString = await githubHttpClient.GetStringAsync("repos/paszmartyna/wpfApp");
            var repoDetails = JsonConvert.DeserializeObject<RepoDetail>(jsonString);
        }
    }
}
