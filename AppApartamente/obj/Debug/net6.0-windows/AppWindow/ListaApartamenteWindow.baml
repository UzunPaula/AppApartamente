   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:AppApartamente.AppWindowAppApartamente.AppWindow  5   	   5    /AppApartamente.AppWindow.ListaApartamenteWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:AppApartamente.AppWindow     5   	     � Title$  ListaApartamenteWindow��5   	   $	��450��6(   $	��750��65   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   
����ح�.+�5      �� $��Lista apartamentelor��6   $��20(�64   $��Center=�6B   
����  �$
��Bold"�6u   5      �� 5   
   $��1��6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgApartamente��5         AutoGenerateColumns$ False��6.   $��10q�6J   $��20(�6V      
IsReadOnly$ False��6d   ��6w   �� *Apartamente+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Etaj��6)      MinWidth$	 150Q�6P   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 67   �� *Etaj+6P     5      $ Numarul de camere��6)   $	 150Q�6a   	 6D   �� *
nrCamere+6a     5      $
 Pret��6)   $ 80Q�6P   	 67   �� *Pret+6P     5      $ Metri patrati��6)   $	 150Q�6a   	 6@   �� *metriPatrati+6a     5      $ 
Nume agent��6)   $	 150Q�6\   	 6=   �� *
Agent.Nume+6\   
 � ContextMenu
 5       �� 5!      .@�5"      m� -   5        $��Editare��5"   #   64   m� 5#      -   5        $��Stergere��5#   #   65   5$      5&      5'      5(      5)      