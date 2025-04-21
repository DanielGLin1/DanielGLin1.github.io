<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>生成的考试题</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            color: #333;
        }
        h1 {
            color: #2c3e50;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }
        h2 {
            color: #3498db;
            margin-top: 30px;
        }
        .file-info {
            background: #f5f5f5;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }
        .questions {
            margin-left: 20px;
        }
        .question {
            margin-bottom: 15px;
            padding-bottom: 15px;
            border-bottom: 1px dashed #eee;
        }
        .ai-question {
            white-space: pre-wrap;
            font-family: monospace;
        }
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            background: #3498db;
            color: white;
            padding: 8px 15px;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-btn:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>
    <h1>生成的考试题</h1>
    
    <div class="file-info">
        源文件: <strong>{{ result.filename }}</strong>
    </div>
    
    <h2>基础问题</h2>
    <div class="questions">
        {% for question in result.basic %}
        <div class="question">{{ loop.index }}. {{ question }}</div>
        {% endfor %}
    </div>
    
    {% if result.ai %}
    <h2>AI生成的问题</h2>
    <div class="questions">
        {% for line in result.ai %}
        <div class="question ai-question">{{ line }}</div>
        {% endfor %}
    </div>
    {% endif %}
    
    <a href="/" class="back-btn">返回上传页面</a>
</body>
</html>
