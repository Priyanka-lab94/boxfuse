<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>QA Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
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
            color: #444;
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
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            padding: 10px 15px;
            background-color: #337ab7;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 14px;
            cursor: pointer;
        }
        button:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the QA Page</h1>
        <p>This page is for testing deployments and configurations in the QA environment.</p>

        <h2>Environment Details</h2>
        <ul>
            <li>Server Name: <%= request.getServerName() %></li>
            <li>Server Port: <%= request.getServerPort() %></li>
            <li>Context Path: <%= request.getContextPath() %></li>
            <li>Environment: QA</li>
        </ul>

        <h2>Test QA Deployment</h2>
        <form method="POST" action="qaDeployment">
            <label for="artifactName">Artifact Name</label>
            <input type="text" id="artifactName" name="artifactName" placeholder="Enter artifact name">

            <label for="buildNumber">Build Number</label>
            <input type="text" id="buildNumber" name="buildNumber" placeholder="Enter build number">

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
