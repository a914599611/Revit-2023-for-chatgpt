from openai import OpenAI

openai = OpenAI()
code = openai.generate_code("请帮我生成一段Python代码来读取文件")
print(code)
