   M S B A M L   `   `   `  ????G  Cotdel_kadrov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:otdel_kadrovotdel_kadrov  5   	       otdel_kadrov.AdminMenu   5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:otdel_kadrov     5   	   -   5          ? Title$  	AdminMenu??5	   	   $	??450??64   $	??800??6A   $	??450??6M   $	??800??6]    ? WindowStartupLocation$ CenterScreen=?6l   .??5
      ? .+?5   
   ?? .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ PrimaryDark=?6    "  MaterialDesignFilledTabControl#??[  5      .@?5      ?? $??Работники??6   .??5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgWorker??5   `      CanUserAddRows .     
IsReadOnly .    AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия и имя??6-   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6D   ?? *
FullName+6c     5      $ Должность??6-   	 6@   ?? *	Post.Name+6`   5      5      ?? 5      $??Ученики??6   .??5        -   5        $ 
dgStudents??5   `    .   .  .   5        5      $ Фамилия и имя??6-   	 6D   ?? *
FullName+6c     5      $ 
Класс??6-   	 6<   ?? *
Class.Name+6]   5      5      ?? 5      $??Заявки??6   .??5        -   5        $ dgNewWorkers??5   N    .   .   5        5       
   
IsReadOnly
 . $ Фамилия и имя??6?   	 6V   ?? *People.FullName+6|     5!      
 . $ Должность??6?   	 6R   ?? *	Post.Name+6r     5"      
 . $! Номер телефона??6?   	 6W   ?? *People.Phone+6z   4  .System.Windows.Controls.DataGridTemplateColumn  5#      $ 
Ответ??61      CellTemplate 5$      ?? 5%   "   .R?5&   &   ?? -   5         ?? DisplayMemberPath$
 Name??5&   B    ?? SelectedValuePath$ ID??6   
 ? Tag 6/   ?? *ID+ ?? SelectedValue 6[   ?? *	Answer_id+6?   5'   #   5)      5+      5,      5-      5.      5/      