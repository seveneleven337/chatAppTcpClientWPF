using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Net;
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
using System.Reflection;
using System.Net.Http;
using chatAppClient.PureCSClass;

namespace chatAppClient.View
{
    /// <summary>
    /// Interaction logic for ChatView.xaml
    /// </summary>
    public partial class ChatView : Page
    {


        static TcpClient tcpClient = new TcpClient("172.104.250.232", 6000);
        StreamWriter streamWriter = new StreamWriter(tcpClient.GetStream());
        SocketHandle socketHandle = new SocketHandle();

        public ChatView(string text)
        {
            InitializeComponent();
            socketHandle.StartClient(text, streamWriter);
        }

        private void btnSend_Click(object sender, RoutedEventArgs e)
        {
            
            if(tcpClient.Connected) 
            {
                if (socketHandle.StartClient(txtChatSend.Text, streamWriter))
                {
                    //networkStream.Flush();
                    streamWriter.Close();
                    tcpClient.Dispose();
                    tcpClient.Close();
                }
            } else
            {
                MessageBox.Show("socket disconnected");
   
            }
            txtChatSend.Text = String.Empty;   
            
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            socketHandle.StartClient("disconnected<EOF>", streamWriter);
            //Application.Current.Shutdown();
        }



        
    }
}
