<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Login - ${realm.name}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/locale.css">
    <link rel="stylesheet" href="${url.resourcesPath}/css/background.css">
</head>
<body>
    <div class="header-bar">
        <div class="header-content">
            <a href="https://www.platformscience.com/" target="_blank">
                <img src="${url.resourcesPath}/img/logo-top.png" alt="Logo" class="header-logo">
            </a>
            <#if realm.internationalizationEnabled && locale.supported?size gt 1>
                <#assign localeLabels = {
                    "pt-BR": "Português",
                    "en": "English",
                    "es": "Español"
                }>
                <div class="locale-selector">
                    <div class="locale-dropdown">
                        <a href="#" id="kc-current-locale-link">${locale.current}</a>
                        <ul class="locale-options">
                            <#list locale.supported as l>
                                <#assign langCode = l.url?keep_after("kc_locale=")>
                                <li><a href="${l.url}">${localeLabels[langCode]!l.label}</a></li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </#if>
        </div>
    </div>
    <div class="login-container">
        <div class="login-card">
            <img src="${url.resourcesPath}/img/logo-login.png" alt="Logo" class="logo">
            <form id="kc-form-login" action="${url.loginAction}" method="post">
                <label for="username">${msg("usernameOrEmail")}</label>
                <input type="text" id="username" name="username"
                       value="${(login.username!'')}" autofocus required>
                <label for="password">${msg("password")}</label>
                <input type="password" id="password" name="password" required>
                <button type="submit">${msg("doLogIn")}</button>
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