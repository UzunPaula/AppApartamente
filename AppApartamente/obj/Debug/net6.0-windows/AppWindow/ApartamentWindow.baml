   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:AppApartamente.AppWindowAppApartamente.AppWindow  5   	   /    )AppApartamente.AppWindow.ApartamentWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:AppApartamente.AppWindow     5   	     � Title$  ApartamentWindow��5   	   $	��500��6"   $	��800��6/    � 	Resources 5	       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius��%�  '��       '�� �     '�� 4    �� 5
   
   " ��6   .�5      ��  � ��$ 	5 10 5 10q�6'   �� 5       �@��Padding$ 5q�6(   �� 5       � ��$ 18(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 	5 10 5 10q�6'   �� 5       � ��$ 5q�6(   �� 5       � ��$ 18(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 55 20 55 50q�6'   �� 5       � ��$ 2q�6(   �� 5       � ��$ 28(�6)   �� 5       � ��
 ��  �6+   �� 5       � ��$
 Bold"�6+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 20��6!   #��z��63   ._�5       �� $��Center=�6/   $��Center=�6L   $
��Auto��6g   5!      5"      5$      5%      5&      .��5(      �  � ColumnDefinitions 5)   
   �� 5*      $
��Auto �6   �� 5+      $��* �6    � RowDefinitions 5.   
   �� 5/      $
��Auto �6   �� 50      $
��Auto �6   �� 51      $
��Auto �6   �� 52      $
��Auto �6   �� 53      $
��Auto �6   �� 54      $
��Auto �6   �� 55      $��* �6   .+�58   
   �� $��0��6   $��2��6"   
����ح�.+�59      �� $!��Introducerea apartamentelor��6   $
��Bold"�6;   
����  �$��Center=�6c   $��20(�6�   $��10q�6�   	 �� Padding$	 10q�6�   5:      �� 5<   
   $��Etaj:��6   $��1��6!   $��0��6.   �� 5=   
   -   5        
 ��Name$
 tbxEtaj��5=      $��1��6#   $��1��60   ��6@   �� *Etaj+�� 5?   
   $��Numarul camerei:��6   $��2��6,   $��0��69   �� 5@   
   -   5        $
 tbxNrCamere��5@      $��2��6'   $��1��64   ��6D   �� *
nrCamere+�� 5B   
   $��Pret:��6   $��3��6!   $��0��6.   �� 5C   
   -   5        $
 tbxPret��5C      $��3��6#   $��1��60   ��6@   �� *Pret+�� 5E   
   $��Metri patrati:��6   $��4��6*   $��0��67   �� 5F   
   -   5        $
 tbxMetripatrati��5F      $��4��6+   $��1��68   ��6H   �� *metriPatrati+�� 5H   
   $��Agentul:��6   $��5��6$   $��0��61   �� 5I   
   -   5         ��Name$ cbxAgent��5I      $��5��6%   $��1��62    �� DisplayMemberPath$
 Nume��6`   ��6B   �� *Agent+6`   �� 5K   
   -   5         ��Name$ btnAddApartament��5K      $��Adauga apartamentul��6+   $��Center=�6I   $
��Left=�6d   $��6��6   $��76,0,0,0q�6�   $��1��6�    J� RenderTransformOrigin$ 0.471,0.518&�6�   $��76��6�   $	��328��6�   5L      5M      