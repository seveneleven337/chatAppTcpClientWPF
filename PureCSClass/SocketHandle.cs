using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net.Http;
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

        public bool StartClient(string message, StreamWriter streamWriter)
        {
            bool res = false;
            if (message.Length >= 0)
            {
                try
                {
                    message += "\n";
                    Trace.WriteLine(message);
                    streamWriter.AutoFlush = true;
                    /*networkStream.Flush();
                    // turn the string message into a byte[] (encode)
                    byte[] messageBytes = Encoding.ASCII.GetBytes(message); // a UTF-8 encoder would be 'better', as this is the standard for network communications

                    // determine length of message
                    int length = messageBytes.Length;

                    // convert the length into bytes using BitConverter (encode)
                    byte[] lengthBytes = BitConverter.GetBytes(length);

                    // flip the bytes if we are a little-endian system: reverse the bytes in lengthBytes to do so
                    if (System.BitConverter.IsLittleEndian)
                    {
                        Array.Reverse(lengthBytes);
                    }

                    // send length
                    networkStream.Write(lengthBytes, 0, lengthBytes.Length);

                    // send message
                    networkStream.Write(messageBytes, 0, length);
                    networkStream.Flush();
                    if (message.Contains("EOF"))
                    {
                        //networkStream.Flush();
                        //networkStream.Close();
                        res = true;
                    }*/

                    streamWriter.Write(message);
                    
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
            }
            return res;
        }
    }

}
