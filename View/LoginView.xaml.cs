﻿using chatAppClient.PureCSClass;
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

namespace chatAppClient.View
{
    /// <summary>
    /// Interaction logic for LoginView.xaml
    /// </summary>
    public partial class LoginView : Page
    {
        public LoginView()
        {
            InitializeComponent();
        }
        

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new ChatView(txtBoxUsername.Text));
            /*Database db = new Database();
            if (db.validateUser(txtBoxUsername.Text, txtBoxPassword.Password.ToString()))               //validate user in mariadb 
            {
                this.NavigationService.Navigate(new ChatView(txtBoxUsername.Text));                     //move to chat page after auth
            }
            else
            {
                MessageBox.Show("access denied");
            }*/
        }

        private void txtNotRegistered_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new RegisterView());                                        //move to registration page
        }
    }
}
