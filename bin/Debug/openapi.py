import openai_secret_manager
import requests
import json

class OpenAI:
    def __init__(self):
        # 获取OpenAI API Key
        assert "openai" in openai_secret_manager.get_services()
        secrets = openai_secret_manager.get_secret("openai")
        
        # 定义OpenAI API的URL和请求头部信息
        self.openai_url = "https://api.openai.com/v1/engines/davinci-3/generate"
        self.headers = {
            'Content-Type': 'application/json',
            'Authorization': f'Bearer {secrets["api_key"]}',
        }
        
        # 定义请求体信息模板
        self.data_template = {
            'prompt': '',
            'temperature': 0.5,
            'max_tokens': 1024,
        }

    # 定义生成代码的函数
    def generate_code(self, input_text):
        data = self.data_template.copy()
        data['prompt'] = input_text
        response = requests.post(self.openai_url, headers=self.headers, data=json.dumps(data))
        result = response.json()['choices'][0]['text']
        return result
