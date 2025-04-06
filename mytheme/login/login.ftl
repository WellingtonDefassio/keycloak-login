<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Login - ${realm.name}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo">

            <#if message?has_content>
                <div class="alert ${message.type}">
                    ${message.summary}
                </div>
            </#if>

            <form id="kc-form-login" action="${url.loginAction}" method="post">
                <input type="text" id="username" name="username" placeholder="Usuário ou Email"
                       value="${(login.username!'')}" autofocus required>
                <input type="password" id="password" name="password" placeholder="Senha" required>

                <button type="submit">Entrar</button>
            </form>

            <div class="footer">
                <#if realm.password && realm.registrationAllowed>
                    <a href="${url.registrationUrl}">Criar conta</a>
                </#if>
                <#if url.loginResetCredentialsUrl?has_content>
                    <a href="${url.loginResetCredentialsUrl}">Esqueceu a senha?</a>
                </#if>
            </div>
        </div>
    </div>
</body>
</html>