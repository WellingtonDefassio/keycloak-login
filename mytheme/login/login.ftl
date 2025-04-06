<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Login - ${realm.name}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/locale.css">
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                <div class="locale-selector">
                    <div class="locale-dropdown">
                        <a href="#" id="kc-current-locale-link">${locale.current}</a>
                        <ul class="locale-options">
                            <#list locale.supported as l>
                                <li><a href="${l.url}">${l.label}</a></li>
                                <a href="${msg("linkSolucoes")}" target="_blank">${msg("solucoes")}</a>
                            </#list>
                        </ul>
                    </div>
                </div>
            </#if>
            <img src="${url.resourcesPath}/img/logo.png" alt="Logo" class="logo">
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
            </div>
        </div>
    </div>
</body>
</html>