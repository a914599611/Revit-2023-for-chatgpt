using System.Windows;

namespace Revit2023_for_chatgpt
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            // 这里编写调用您的Python代码的逻辑
            // 比如：PythonRunner.RunScript("openapi.py");
        }
    }
}
