   M S B A M L   `   `   `  ���� I  EFolderExplorer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:FolderExplorerFolderExplorer      FolderExplorer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:FolderExplorer       � Title$  Folder Explorer��$	��450��$	��800�� � 	Resources    RootFolderDataProvider S� ObjectInstance  FolderExplorer.Folder   FullPath �� DataType �� ItemsSource �� Path��%r   &	        (��      *, +)S�    $	 c:\���� "   �� $ 
SubFolders�.R��� ���� $
 Name�.���  � ColumnDefinitions �� $��* ��� $��2* � � RowDefinitions �� $��1* ��� $��1* �.+�R� -   	 R�Name$	 	treeView1��$��0��$��0��$��1��$��2��$
��Auto��$��Stretch=�$��0q�$��Stretch=�$
��Auto��.@�Q� $��Folders������ $ 
SubFolders�
 �� Source#
 [  �� -    ��Name$ 	listView1��$��0��$��1��$��1��$��1��$
��Auto��$��Stretch=�$��0q�$��Stretch=�$
��Auto������ $ SelectedItem.SubFolders� �� ElementName$ 	treeView1���� -   $ 	listView2��$��1��$��1��$��1��$��1��$
��Auto��$��Stretch=�$��0q�$��Stretch=�$
��Auto������ $ SelectedItem.Files�$ 	treeView1�� �� Mode$ OneWay=�