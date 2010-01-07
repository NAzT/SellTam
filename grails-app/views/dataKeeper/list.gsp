

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dataKeeper.label', default: 'DataKeeper')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'dataKeeper.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="surname" title="${message(code: 'dataKeeper.surname.label', default: 'Surname')}" />
                        
                            <g:sortableColumn property="name" title="${message(code: 'dataKeeper.name.label', default: 'Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dataKeeperInstanceList}" status="i" var="dataKeeperInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${dataKeeperInstance.id}">${fieldValue(bean: dataKeeperInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: dataKeeperInstance, field: "surname")}</td>
                        
                            <td>${fieldValue(bean: dataKeeperInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${dataKeeperInstanceTotal}" />
            </div>
        </div>
    </body>
</html>