   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:AppApartamente.AppWindowAppApartamente.AppWindow  5   	   4    .AppApartamente.AppWindow.ListaApartPatruCamere   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:AppApartamente.AppWindow     5   	     � Title$  ListaApartPatruCamere��5   	   $	��450��6'   $	��600��64   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   
����ح�.+�5      �� $D��>Lista apartamentelor cu patru camere aflate la etajele 2 și 3��6   $��20(�6]   $
��Bold"�6k   
����  �$��Center=�5   .   5      �� 5   
   $��1��6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgListaApartPatruCamere��5         AutoGenerateColumns$ False��68   $��20(�5      $��10q�6%      
IsReadOnly$ False��61      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      MinWidth$ 80Q�6W   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 65   �� *CodApartament+6W     5      $
 Etaj��6)   $	 120Q�6P   	 67   �� *Etaj+6P     5      $ Numarul de camere��6)   $	 150Q�6a   	 6D   �� *
nrCamere+6a     5      $ Numele agentului��6)   $	 180Q�6b   	 6C   �� *
Agent.Nume+6b   5!      5"      5#      5$      