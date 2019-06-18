<%@include file="templates/header.jsp" %>


<div class="row">
    <div class="col s4 offset-s4 z-depth-3">
        <h4 class="center-align">Ingreso</h4>
        <form action="control.do" method="post">
            <div class="input-field col s12">
                <input name="rut" id="rut" type="text" class="validate">
                <label for="rut">RUT</label>
            </div>
            <div class="input-field col s12">
                <input name="clave" id="clave" type="password" class="validate">
                <label for="clave">Clave:</label>
            </div>
            <button class="btn right" name="boton" value="login">Entrar</button>
            <br/><br/><br/>
            <p class="center-align">
                <a href="registro.jsp">Si no tienes cuenta registrate aqui</a>
            </p>
        </form>
        <br/><br/>
        <p class="red-text">${requestScope.msg}</p>
    </div>
</div>
<%@include file="templates/footer.jsp" %>
