using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace chatAppClient.PureCSClass
{
    class SocketHandle
    {

       

        public SocketHandle()
        {
            
        }

        public string StartClient(string message, TcpClient tcpClient)
        {
            String res = "not working";
            Trace.WriteLine("in" + message);
            
                try
                {
                    message += "'\n'";
                    Trace.WriteLine("innnnn" + message);
                    NetworkStream networkStream = tcpClient.GetStream();

                    // turn the string message into a byte[] (encode)
                    byte[] messageBytes = Encoding.ASCII.GetBytes(message); // a UTF-8 encoder would be 'better', as this is the standard for network communications

                    // determine length of message
                    int length = messageBytes.Length;

                    // convert the length into bytes using BitConverter (encode)
                    byte[] lengthBytes = System.BitConverter.GetBytes(length);

                    // flip the bytes if we are a little-endian system: reverse the bytes in lengthBytes to do so
                    if (System.BitConverter.IsLittleEndian)
                    {
                        Array.Reverse(lengthBytes);
                    }

                    // send length
                    networkStream.Write(lengthBytes, 0, lengthBytes.Length);

                    // send message
                    networkStream.Write(messageBytes, 0, length);
                    //networkStream.Close();
                    //tcpClient.Close();
                    return res;

                }
                catch (ArgumentNullException ane)
                {
                    Trace.WriteLine("ArgumentNullException : {0}", ane.ToString());
                }
                catch (SocketException se)
                {
                    Trace.WriteLine("ArgumentNullException : {0}", se.ToString());
                }
                catch (Exception e)
                {
                    Trace.WriteLine("ArgumentNullException : {0}", e.ToString());
                }

            
            
            return res;
        }
    }

}
