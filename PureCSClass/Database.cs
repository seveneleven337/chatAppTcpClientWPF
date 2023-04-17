#pragma warning disable 8622, 8600 , 8602, 8604, IDE1006

using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Diagnostics;  //Trace.WriteLine(path);
using System.IO;
using System.Net.Sockets;
using System.Net;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Threading;
using System.Windows.Documents;
using System.Text.RegularExpressions;

namespace chatAppClient.PureCSClass
{
    class Database
    {
        string connectionString = "server=??;port=??;database=??;uid=??;password=??;";
        readonly string fileName = @"\other\noshare.txt";                                                               //reading file with sensitive data

        public Database()
        {
            readFile();                                                                                                
        }

        private void readFile()                                                                                              //read data from file in other/noShare.txt
        {
            try
            {
                string path = Path.GetDirectoryName(Assembly.GetEntryAssembly().Location);
                path = Directory.GetParent(Directory.GetParent(Directory.GetParent(path).FullName).FullName).FullName + fileName;
                StreamReader sr = new(path);
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        connectionString = line;
                    }
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Can not open local file");
            }

        }

        public bool validateUser(string userName, string password)                                                          //validate user with database 
        {
            List<User> users = ReadDb();
            bool check = false;

            if (validateInputField(userName, password))
            {
                for (int i = 0; i < users.Count; i++)
                {
                    if (users[i].UserName.Equals(userName) && users[i].Password.Equals(password))
                    {
                        check= true;
                    }

                }
            
            }
            return check;
        }

        private List<User> ReadDb()                                                                                         //get the list of user and password from DB
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            List<User> items = new();
            try
            {
                connection.Open();
                string sql = "SELECT * FROM users";
                MySqlCommand cmd = new MySqlCommand(sql, connection);
                MySqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                   items.Add(new User() { UserName = rdr.GetString(1), Password = rdr.GetString(2) , UserStatus =  rdr.GetString(3)});
                }
                rdr.Close();

            }
            catch (Exception)
            {
                MessageBox.Show("Error connecting to database");
            }

            return items;
        }


        private void entryDb(String username, String password, String userStatus)                                                                                //add a new user to the DB
        {
         
            try
            {
                MySqlConnection connection = new MySqlConnection(connectionString);
                string sql = "INSERT INTO users (user, password, status)  VALUES ('" + username + "','" + password + "','" + userStatus + "');";
                MySqlCommand cmd;
                connection.Open();
                cmd = new(sql, connection);
                MySqlDataReader rdr = cmd.ExecuteReader();
                rdr.Close();

            }
            catch (Exception e)
            {
                MessageBox.Show("Error connecting to database" + e);
            }
        }

        private bool validateInputField(String userName, String password)                                                                                       //validate data to avoid sql injections
        {
            bool status = false;

            //Here we define the set of accepted chars
            String acceptedChars = "[<>=&l%like!''#,\\w\\s]*";

            //Here we exclude specified words exactly
            String excludeWords = "^((?!\\b(delete|drop|script|or)\\b).)*$";

            var match = Regex.Match(userName, acceptedChars, RegexOptions.IgnoreCase);   
            var match1 = Regex.Match(userName, excludeWords, RegexOptions.IgnoreCase);  
            var match2 = Regex.Match(password, acceptedChars, RegexOptions.IgnoreCase);   
            var match3 = Regex.Match(password, excludeWords, RegexOptions.IgnoreCase);  

            if (match.Success && match1.Success && match2.Success && match3.Success)  
            {
                status = true;
            }
                   
            return status;
        }

    }

    internal class User
    {

        private String userName;
        private String password;
        private String userStatus;

        public string UserName { get => userName; set => userName = value; }
        public string Password { get => password; set => password = value; }
        public String UserStatus { get => userStatus;set => userStatus = value; }


    }
}
