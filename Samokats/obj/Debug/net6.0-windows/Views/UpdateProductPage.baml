   M S B A M L   `   `   `  ����C  ?Samokats, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Samokats.ViewsSamokats.Views  5      9!clr-namespace:Samokats.ConvertersSamokats.Converters  5      &     Samokats.Views.UpdateProductPage   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Samokats.Views     5      2conv!clr-namespace:Samokats.Converters     5        N� Title$  UpdateProductPage��5
       � 	Resources 5      9   3Samokats.Converters.HasErrorsToEnableMultiConverter   errorsToVisibilityConverter,  &Samokats.Converters.ImagePathConverter  imageConverter��%:   &	        &	        5   
   6/     5   
   6"   5      .��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $	��200 �6   .+�5   
   �� $��1��6   $
��10 0q�6%   .+�5      �� -   5         ��Name$ 
photoImage��5      ��6)   �� *Samokat.Photo+ �� 	Converter# [ �� 5      
���  ����6)   ��  �� ElementName$ 
photoImage�� �� Path$) #(Validation.Errors)[0].ErrorContent��� 5      $��Изменить��6   ��6(   �� *ImageCommand+5      �� 5   
   $
��10 0q�6   .+�5      �� $��Название��6   �� 5      -   5         ��Name$ nameTextBox��5      ��6+   �� *Samokat.Name+ �� ValidatesOnDataErrors$
 True��	 �� UpdateSourceTrigger$	 PropertyChanged=��� 5      
���  ����6)   �� $ nameTextBox��$) #(Validation.Errors)[0].ErrorContent��� 5      $��Тип��6   �� 5       -   5        
 ��Name$
 typeComboBox��5        �� DisplayMemberPath$ TypeName��6K   ��6-   �� *Types+ �� SelectedItem 6h   �� *Samokat.ProductType+$
 True���� 5!      
���  ����6)   �� $ typeComboBox��$) #(Validation.Errors)[0].ErrorContent��� 5#      $ ��Производитель��6   �� 5$      -   5        $
 manuComboBox��5$      $ NameManu��6V   ��6-   �� *ManufacturerList+ 6s   �� *Samokat.Manufactur+$
 True���� 5%      
���  ����6)   �� $ manuComboBox��$) #(Validation.Errors)[0].ErrorContent��� 5'      $��Цена��6   �� 5(      -   5        $ priceTextBox��5(      ��6,   �� *Samokat.Price+$
 True���� 5)      
���  ����6)   �� $ priceTextBox��$) #(Validation.Errors)[0].ErrorContent��� 5*      $F��@Максимальная грузоподъемность (кг)��6   �� 5+      -   5        $ loadTextBox��5+      ��6+   �� *Samokat.MaxLoad+$
 True���� 5,      
���  ����6)   �� $ loadTextBox��$) #(Validation.Errors)[0].ErrorContent��� 5.      $ ��Запас хода (км)��6   �� 5/      -   5        $ powerTextBox��5/      ��6,   �� *Samokat.PowerReserve+$
 True���� 50      
���  ����6)   �� $ powerTextBox��$) #(Validation.Errors)[0].ErrorContent��� 52      $9��3Максимальная скорость (км/ч)��6   �� 53      -   5        $ speedTextBox��53      ��6,   �� *Samokat.MaxSpeed+$
 True���� 54      
���  ����6)   �� $ speedTextBox��$) #(Validation.Errors)[0].ErrorContent��� 55      $��Мощность (Вт)��6   �� 56      -	   5        $ wattTextBox��56      ��6+   �� *Samokat.MaxWatt+$
 True���� 57      
���  ����6)   �� $ wattTextBox��$) #(Validation.Errors)[0].ErrorContent��� 58      $��Сохранить��6   $
��0 10q�6)   ��67   �� *SaveCommand+{�59      `� 5:       `� 	Converter# [  6#   .1�5;      �� $ nameTextBox��6"   $ (Validation.HasError)�6<   �� 5<      $ priceTextBox��6"   $ (Validation.HasError)�6=   �� 5=      $ powerTextBox��6"   $ (Validation.HasError)�6=   �� 5>      $ speedTextBox��6"   $ (Validation.HasError)�6=   �� 5?      $ wattTextBox��6"   $ (Validation.HasError)�6<   �� 5@      $ loadTextBox��6"   $ (Validation.HasError)�6<   �� 5A      $ typeComboBox��6"   $ (Validation.HasError)�6=   �� 5B      $ manuComboBox��6"   $ (Validation.HasError)�6=   5C      5E      �� 5F      $��
Назад��6   ��6%   �� *BackCommand+5G      5H      5I      