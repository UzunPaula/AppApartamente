   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:AppApartamente.AppWindowAppApartamente.AppWindow  5   	   0    *AppApartamente.AppWindow.ListaAgentiWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:AppApartamente.AppWindow     5   	     � Title$  ListaAgentiWindow��5   	   $	��450��6#   $	��550��60   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   
����ح�.+�5      �� $��Lista agentilor��6   $��Center=�6/   $��20(�6L    �� Padding$ 10q�6Z   $��10q�6g   $
��Bold"�6s   
����  �6�   5      �� 5   
   $��1��6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgAgenti��5         AutoGenerateColumns$ False��6)   $��10q�5      $��18(�6#      
IsReadOnly$ False��5      ��5   1   �� *Agenti+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)   	   MinWidth$	 20Q�6R   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 65   �� *
CodAgent+6R     5      $
 Nume��6)   $		 150Q�6P   
 67   �� *Nume+6P     5      $ Prenume��6)   $		 150Q�6V   
 6:   �� *	Prenume+6V     5      $ Varsta��6)   $	 50Q�6T   
 69   �� *Varsta+6T     5      $ Telefon��6)   $		 150Q�6V   
 6:   �� *	Telefon+6V    � ContextMenu 5"      �� 5#      .@�5$      m� -   5        $��Editare��5$   #   64   m� 5%      -   5        $��Stergere��5%   #   65   5&      5(      5*      5+      5,      