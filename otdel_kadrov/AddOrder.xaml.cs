using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace otdel_kadrov
{
    /// <summary>
    /// Логика взаимодействия для AddOrder.xaml
    /// </summary>
    public partial class AddOrder : Window
    {
        Database1Entities db = new Database1Entities();
        public AddOrder()
        {
            InitializeComponent();
            postT.ItemsSource = db.Post.ToList();
        }

        private void addO_Click(object sender, RoutedEventArgs e)
        {
            if (surnameT.Text != "" && nameT.Text != "" && phoneT.Text != "" && postT.SelectedIndex > -1)
            {
                People p = new People()
                {
                    Surname = surnameT.Text,
                    Name = nameT.Text,
                    Phone = phoneT.Text,
                };
                db.People.Add(p);
                db.SaveChanges();
                NewWorkers nW = new NewWorkers()
                {
                    People_id = p.ID,
                    Answer_id = 1,
                    WorkPost_id = Convert.ToInt32(postT.SelectedValue)
                };
                db.NewWorkers.Add(nW);
                db.SaveChanges();
                MessageBox.Show("Заявка успешно отправлена");
                Close();
            }
            else MessageBox.Show("Заполните значения");
        }
    }
}
