using System.Windows;
using System.Diagnostics;
using IronPython.Hosting;
using Microsoft.Scripting.Hosting;
using Microsoft.Scripting.Utils;
using IronPython.Runtime;
using System.IO;
using Newtonsoft.Json;

namespace RevitPlugin
{
    public partial class MainWindow : Window
    {
        // 构造函数
        public MainWindow()
        {
            InitializeComponent();
        }

        // 按钮点击事件处理函数
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string input = inputTextBox.Text;

            // 调用生成代码的函数
            string code = GenerateCode(input);

            // 执行生成的代码
            ScriptEngine engine = Python.CreateEngine();
            ScriptScope scope = engine.CreateScope();
            engine.Runtime.LoadAssembly(typeof(ScriptEngine).Assembly);
            engine.Execute(code, scope);

            // 显示“执行完成”的消息
            MessageBox.Show("执行完成");
        }

        // 生成代码的函数
        private string GenerateCode(string input)
        {
            // 加载并初始化Python解释器
            ScriptEngine engine = Python.CreateEngine();
            engine.Runtime.LoadAssembly(typeof(ScriptEngine).Assembly);

            // 导入generate_code.py模块
            ScriptScope scope = engine.CreateScope();
            engine.ExecuteFile(@"generate_code.py", scope);

            // 调用generate_code函数生成代码
            dynamic generate_code = scope.GetVariable("generate_code");
            string code = generate_code(input);

            return code;
        }
    }
}
