   M S B A M L   `   `   `  ����  Revit 2023 for chatgpt    RevitPlugin.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$  Revit For ChatGPT��5      $	��200��6   $	��500��6*   .��5      � ��5   
   �� 5       �� ImageSource$ Images/background.png��6    j� Stretch$ UniformToFill=�6=    �� Opacity$	 0.7Q�6U   .+�5	   
   �� $��10q�6   .+�5
      �� -   5         ��Name$ inputTextBox��5
      $��你要做什么...��6,   $��0 0 0 10q�6<   $��45��6N    J� Opacity$
 0.60Q�6Z   $��微软雅黑)�6i    �� TextAlignment$ Center=�6{   �� 5      -   5        $��执行��5      $
 0.60Q�67   $��	0 80 0 10q�6F   $��微软雅黑)�6Y   � 5      -   5         �Name$ progressGrid��5      $y�	Collapsed=�6)    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5      � $��0��6   	 � IsIndeterminate	 . $��0 0 0 10q�6B   �� 5      $��1��6   $!��正在连接，请稍候...��6)   $��微软雅黑)�6<   
 �� TextAlignment$
 Center=�6N   5      5      5      5      