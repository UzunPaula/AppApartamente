   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:AppApartamenteAppApartamente  5   	       AppApartamente.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:AppApartamente     5   	     � Title$  
MainWindow��5   	   $	��750��6   $	��850��6)    � WindowStartupLocation$ CenterScreen=�65    � 	Resources 5
       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius��%�  '��       �� 5   
   " ��6   .�5      ��  � ��$ 12q�6'   �� 5       � ��$ 18(�6)   �� 5       � ��$ 7q�6(   �� 5       � ��
 ��  �6+   �� 5       � ��$
 Bold"�6+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 10��6!   #��z��63   ._�5      �� $��Center=�6/   $��Center=�6L   #��z��6g   5      5      5      5      5      .��5      ]� .+�5   
   �� $	��Top=�6    �� Orientation$ Vertical=�6*   
����ح�.+�5      �� $��Aplicatia Apartamente��6   $
��Bold"�65   $��30(�6G   	 �� TextAlignment$	 Center=�6U   
����  �$��10q�6�   5       �� 5!   
   $
��Left=�6   $ Vertical=�6+   $	��290��6B   ���#ADD8E6.+�5"      �� -   5        
 ��Name$
 btnShowFormAddApart��5"   6   $��Introduceti apartament��6   ��6S   �� *AddCommandApart+�� 5#      -   5        $
 btnShowListaApart��5#   5   $��Lista apartamentelor ��6   ��6P   �� *
ShowAparts+�� 5$      -   5        $
 btnShowFormAddAgent��5$   1   $��Introduceti agent��6   ��6N   �� *AddCommandAgent+�� 5%      -   5        $
 btnShowListaAgent��5%   /   $��Lista agentilor��6   ��6J   �� *
ShowAgents+�� 5&      -   5        $"
 btnListaApartamenteFourRooms��5&      ��6;   �� *ShowApartamenteFourRooms+.��5'      �� $
��Wrap=�6   $=��7Lista apartamentelor cu patru camere la etajele 2 și 3��60   $	 Center=�6n   5(      �� 5*      -   5        $
 btnListaAgentiPhoneAge��5*      ��65   �� *ShowAgentiPhoneAge+.��5+      �� $
��Wrap=�6   $U��OLista agenților cu telefon și vârstă cuprinsă în diapazonul 20 – 30 ani��60   $	 Center=�6   5,      �� 5.      -   5        $
 btnListaAgentiSumaVanzari��5.      ��68   �� *ShowAgentiSumaVanzari+.��5/      �� $
��Wrap=�6   $Q��KLista agenților și suma totală de vânzări acumulată de fiecare din ei��60   $	 Center=�6}   50      52      �� 54   
   $��Bottom=�6   $ 
Horizontal=�6-   $	��569��6G   $��20��6S   
�������.+�55      �� $��Subsol��6   $	 Center=�6&   $��	280 0 0 0q�6=   $
��Bold"�6P   56      �� 57   
   $ 
Horizontal=�6   $��Center=�6.   $��Center=�6K   .+�58      �� $��Resource/apartamente.jpg��6   $
��Fill=�66   $	��658��6E   $	��568��6R   59      5:      5;      