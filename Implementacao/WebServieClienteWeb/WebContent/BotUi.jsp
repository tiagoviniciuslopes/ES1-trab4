<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Help Bot</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://unpkg.com/botui@0.3.9/build/botui.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/botui@0.3.9/build/botui-theme-default.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <style>
      html, body {
        background-color: #41c0cc;
        background-image: linear-gradient(-90deg, #41c0cc, #41cca5);
      }
      .botui-container {
        background-color: inherit;
      }

      .botui-messages-container {
      }

      .botui-actions-container {
        padding: 0px 30px;
      }

      .botui-message {
      }

      .botui-message-content.text {
        background-color: #e1fafc;
        color: #404040;
      }

      .botui-message-content.human {
        background-color: #f7ff61;
        color: #404040;
      }

      .botui-message-content.embed {
      }

      .botui-message-content-link {
      }

      .botui-actions-text-input {
      }

      .botui-actions-text-submit {
      }

      button.botui-actions-buttons-button {
        margin-top: 0px;
      }
    </style>
  </head>
  <body>
    <div class="botui-app-container" id="help-bot">
      <bot-ui></bot-ui>
    </div>
    <!-- use Vue version 2.0.5 for HTML embeds | https://github.com/botui/botui/issues/103-->
     <!-- remove .min from the file name to use in development mode -->
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/botui@0.3.9/build/botui.min.js"></script>
    <script src="./bot-script.js"></script>
  </body>
</html>
