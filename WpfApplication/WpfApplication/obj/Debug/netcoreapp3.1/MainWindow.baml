   M S B A M L   `   `   `  ����I  EWpfApplication, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:WpfApplicationWpfApplication  5   	       WpfApplication.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:WpfApplication     5   	   -   5          � Title$  Application��5   	   $	��550��6   $	��800��6*    � 	Resources 5	         ordersViewSource  orderDetailsViewSource �� Source �� Source  myLabelStyle �� 
TargetType �� Property �� Value  repoDetailTextBox��%�  &	        &	      7   &	 I     &	 
    �� 5
   
   6   �� 5   
    5      �� *OrderDetails+8   �� 5   
   " ��6%   .�5      ��  � ��$ 12(�6)   �� 5       � ��$ Calibri)�6+   �� 5       � ��$ Italic$�6*   �� 5       � ��$ Center=�62   5      �� 5   
   " ��6*   .�5      ��  � ��$
 Bold"�6+   �� 5       �@��
IsReadOnly$
 True��6+   �� 5       � ��$ 0q�60   �� 5       � ��$ Center=�62   5      5      .��5      � $��15q�5   	    � ColumnDefinitions 5   
   �� 5      $
��326* �6   �� 5      $	��59* �6    � RowDefinitions 5!   
   �� 5"      6   �� 5#      6   �� 5$      $
��auto �6   6,   �� 5%      6   .+�5(   
   &   System.Windows.Controls.DataGrid  -   5        	  Name$	 ordersDataGrid��5(      
   AutoGenerateColumns$
 False��6+   $��0��6H      EnableRowVirtualization$
 True��5)         RowDetailsVisibilityMode$ VisibleWhenSelected=�5+      $��2��6;   ��5*      �� # [     Columns 5,      0  *System.Windows.Controls.DataGridTextColumn  5-      ,  &System.Windows.Controls.DataGridColumn   Header$ Order Id��5.         Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6/      
IsReadOnly$
 True��5/      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5-   %   �� *Id+5/        50      $ 
Order Name��6C   $ SizeToHeader 51       50   %   �� *	OrderName+51        52      $ 	Client Id��6B   $ SizeToHeader 53       52   %   �� *
ClientId+53        54      $ 
Order Date��6`   $ * 55       54   %   �� *	OrderDate+ �� StringFormat$ {0:dd-MM-yy}��55        56      $ 	Net Value��6R   $ * 57       56   %   �� *
NetValue+$ C��57        58      $ Gross Value��6T   $ * 59       58   %   �� *
GrossValue+$ C��59      4  .System.Windows.Controls.DataGridTemplateColumn  5:      $ Delete��6)      CellTemplate 5;      �� 5<      .R�5=      ��  ��Name$ delete��6%   -   5        $��Delete��5=   5   5>      5?      5A      5C        5D   
   -   5        $	 orderDetailsDataGrid��5D      $
 False��5E      $
 True��5F      $ VisibleWhenSelected=�5H       J� RenderTransformOrigin$ 0.488,0.251&�5I      $��2��6/   $��
0,159,0,26q�6C   $��3��6W   ��5G      �� # [  5J        5K      $ Id��5L   %   $ SizeToHeader 5M   %   $
 True��5N   %    5K   %   �� *Id+5N   %     5O      $ Item Id��5P   %   $ * 5Q   %    5O   %   �� *ItemId+5Q   %     5R      $ 	Item Name��5S   %   $ * 5T   %   $
 True��5U   %    5R   %   �� *Item.ItemName+5U   %     5V      $ Unit Net Price��5W   %   $ * 5X   %   $
 True��5Y   %    5V   %   �� *Item.UnitNetPrice+$ C��5Y   %     5Z      $ Quantity��5[   %   $ SizeToHeader 5\   %    5Z   %   �� *
Quantity+5\   %     5]      $ 	Net Value��5^   %   $ * 5_   %   $
 True��5`   %    5]   %   �� *
NetValue+$ C��5`   %     5a      $ Gross Value��5b   %   $ * 5c   %   $
 True��5d   %    5a   %   �� *
GrossValue+$ C��5d   %     5e      $ Delete��6)    5f      �� 5g      .R�5h      �� $ deleteOrderDetail��6%   -   5        $��Delete��5i   %   5k      5l      5n      5p      �� 5q   
   -   5        $
��Save��5q      $
��Left=�6    $��	325,3,0,3q�6;   $��20��5r      $	��120��6*   $��2��66   $
��Bold"�6C   ���	#FF11A62C6U   �� 5s   
   $��3��6   $��2��6#    5t       �� BasedOn��%`   '��       7  '�� "     7  �� 5u      8   " ��6@   6_   �� 5v      8   " ��6E   6f   5w      .+�5x      �� $��Repository details:��6   $��2,0,2,0q�5y      $��14(�5z      $��Normal$�5{      $
��Bold"�6(   �� 5      $��1��6    �� Orientation$ 
Horizontal=�6&   .+�5�      �� .��6   Repository name:6+   �� 5�      -   5        $��RepoNameTextBox��5�      63   5�      �� 5�      $��2��6   $ 
Horizontal=�6&   .+�5�      �� .��6   Updated at:6%   �� 5�      -   5        $��UpdatedAtTextBox��5�      65   5�      �� 5�      $��3��6   $ 
Horizontal=�6&   .+�5�      �� .��6   Watchers number:6*   �� 5�      -	   5        $��WatchersTextBox��5�      64   5�      �� 5�      $��4��6   $ 
Horizontal=�6&   .+�5�      �� .��6   Owner Name:6%   �� 5�      -
   5        $��OwnerNameTextBox��5�      65   5�      �� 5�      $��5��6   $ 
Horizontal=�6&   .+�5�      �� .��6   Owner type:6%   �� 5�      -   5        $��OwnerTypeTextBox��5�      65   5�      5�      5�      5�      