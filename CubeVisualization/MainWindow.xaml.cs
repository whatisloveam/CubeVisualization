using System;
using System.IO.Ports;
using System.Text;
using System.Windows;
using System.Windows.Media.Media3D;

namespace CubeVisualization
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string[] ports;
        SerialPort port = new SerialPort();
        AxisAngleRotation3D ax3d;
        public MainWindow()
        {
            InitializeComponent();
            ports = SerialPort.GetPortNames();
            comboBox.ItemsSource = ports;

            ax3d = new AxisAngleRotation3D(new Vector3D(0, 2, 0), 1);
            RotateTransform3D myRotateTransform = new RotateTransform3D(ax3d);
            MyModel.Transform = myRotateTransform;
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            port.PortName = (string)comboBox.SelectedItem;
            port.BaudRate = 115200;
            port.DataReceived += Port_DataReceived;
            port.Open();
        }

        private void Port_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            var serialDevice = sender as SerialPort;
            var buffer = new byte[serialDevice.BytesToRead];
            serialDevice.Read(buffer, 0, buffer.Length);

            Application.Current.Dispatcher.Invoke(new Action(() =>
            {
                label.Content = Encoding.UTF8.GetString(buffer);
                var str = (string)label.Content;
                str = str.Split('\n')[0];
                str = str.Replace('.', ',');
                var parts = str.Split('\t');
                if (parts.Length == 4)
                {
                    
                    yawLabel.Content = parts[1];
                    pitchLabel.Content = parts[2];
                    rollLabel.Content = parts[3];
                    try
                    {
                        yawSlider.Value = Double.Parse(parts[1]);
                        pitchSlider.Value = Double.Parse(parts[2]);
                        rollSlider.Value = Double.Parse(parts[3]);
                    }
                    catch
                    { }

                }
            }));
        }
    }
}
