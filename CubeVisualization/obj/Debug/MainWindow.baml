   M S B A M L   `   `   `  ����L  HCubeVisualization, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CubeVisualizationCubeVisualization  5   	   "    CubeVisualization.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:CubeVisualization     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ button��5
      $��Подключиться��6!   $
��Left=�68   $��
145,12,0,0q�6S   $	��Top=�6g   $	��100��6   6�   �� 5   
   -   5         ��Name$ comboBox��5      $
��Left=�6%   $��	10,10,0,0q�6@   $	��Top=�6S   $	��120��6k   �� 5   
   -   5         ��Name$ label��5      $��Label��6   $
��Left=�6/   $��	10,37,0,0q�6J   $	��Top=�6]   �� 5   
   -   5        $ yawLabel��5      $��Label��6"   $
��Left=�62   $��	10,76,0,0q�6M   $	��Top=�6`   �� 5   
   -   5        $ 
pitchLabel��5      $��Label��6$   $
��Left=�64   $��
10,102,0,0q�6O   $	��Top=�6c   �� 5   
   -   5        $ 	rollLabel��5      $��Label��6#   $
��Left=�63   $��
10,128,0,0q�6N   $	��Top=�6b   �� 5   
   -   5         ��Name$ 	yawSlider��5      $
��Left=�6$   $��
180,87,0,0q�6?   $	��Top=�6S   $	��232��6k    � Minimum$
 -180Q�6w    � Maximum$	 180Q�6�   �� 5   
   -   5        $ pitchSlider��5      $
��Left=�6&   $��180,110,0,0q�6A   $	��Top=�6V   $	��232��6n   $	 180Q�6z   $
 -180Q�6�   �� 5   
   -	   5        $ 
rollSlider��5      $
��Left=�6%   $��180,133,0,0q�6@   $	��Top=�6U   $	��232��6m   $	 180Q�6y   $
 -180Q�6�   '� 5   
   -
   5        $��viewport3D1��5      $��-63,68,63,-68q�6(    '� Camera 5      =� 5      -   5        camMain�� � Position$ 6 5 41�5   5   	 � LookDirection$	 -6 -5 -45�6F   5      .x�5      g� 
 g� Content
 5      t� 5      -   5        dirLightMain�� t� 	Direction$ -1,-1,-15�5   =   5      5      g� 5      -   5        MyModel��
 5      � 5        � Geometry 5!      k� 5#       k� 	PositionsQ �    k� TriangleIndices. �$     	

5,   %    � Material 55      u� 56      -   5        matDiffuseMain�� u� Brush 57   "   �� 58   &    �� Color$	 Red��66   5:      5<       g� 	Transform 5>      �� 5?       �� Rotation 5@      �� 5A      -   5        
rotate�� �� Axis$ 0 2 05�5A   B   5C      5E      5F      5G      5H      