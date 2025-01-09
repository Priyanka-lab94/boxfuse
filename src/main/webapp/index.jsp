<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Development Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            padding: 10px 15px;
            background-color: #5cb85c;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 14px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Development Page</h1>
        <p>This page is for testing deployments and configurations in the development environment.</p>

        <h2>Environment Details</h2>
        <ul>
            <li>Server Name: <%= request.getServerName() %></li>
            <li>Server Port: <%= request.getServerPort() %></li>
            <li>Context Path: <%= request.getContextPath() %></li>
        </ul>

        <h2>Test Deployment</h2>
        <form method="POST" action="testDeployment">
            <label for="artifactName">Artifact Name</label>
            <input type="text" id="artifactName" name="artifactName" placeholder="Enter artifact name">

            <label for="version">Version</label>
            <input type="text" id="version" name="version" placeholder="Enter version">

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
