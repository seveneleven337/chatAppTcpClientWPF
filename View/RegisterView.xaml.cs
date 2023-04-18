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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Diagnostics;  //Trace.WriteLine(path);
using System.IO;
using chatAppClient.PureCSClass;

namespace chatAppClient.View
{
    /// <summary>
    /// Interaction logic for RegisterView.xaml
    /// </summary>
    public partial class RegisterView : Page
    {
        public RegisterView()
        {
            InitializeComponent();
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            Database db = new Database();
            if (checkFields(db))
            {
                if (checkPassword())
                {
                    
                    db.registerUser(txtRegistrationUsername.Text, txtRegistrationPassword.Password);
                    displayWarning("registered");
                    //clean fields
                    txtRegistrationUsername.Text = String.Empty;
                    txtRegistrationEmail.Text = String.Empty;
                    txtRegistrationPassword.Password= String.Empty;
                    txtRegistrationPassword2.Password = String.Empty;
                    //go bacj to loginpage
                    this.NavigationService.Navigate(new LoginView());
                }
            } 
        }

        private void displayWarning(String warning)
        {
            MessageBox.Show(warning);
        }

        private bool checkPassword()
        {
            if (txtRegistrationPassword.Password.Equals(txtRegistrationPassword2.Password)){
                return true; 
            }
            displayWarning("Password does not match");
            return false;
        }

        private bool checkFields(Database db)
        {
            if (txtRegistrationUsername.Text.Length > 0 && txtRegistrationEmail.Text.Length > 0 &&
                txtRegistrationPassword.Password.Length > 0 && txtRegistrationPassword2.Password.Length > 0 && db.validateInputField(txtRegistrationUsername.Text, txtRegistrationPassword.Password)) {
                return true;
            }
            displayWarning("Empty fields empty or forbidden characters");
            return false;
        }
    }
}
