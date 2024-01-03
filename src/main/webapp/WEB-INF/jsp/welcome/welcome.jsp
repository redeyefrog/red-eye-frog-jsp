<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>RED EYE FROG</title>
        <jsp:include page="/WEB-INF/jsp/layout/header.jsp" />
    </head>
    <script>
        function callAjax(step) {
            event.preventDefault();

            let uri = "/rest/do" + step;

            ajax(step.toUpperCase(), uri, JSON.stringify(getParams()), showMsg);
        }

        function showMsg(arg) {
            document.getElementsByClassName("msg")[0].innerHTML = arg;
        }
    </script>
    <body>
        <div class="container-fluid mt-3 min-vh">
            <p class="text-center msg">${welcome}</p>
            <form>
                <div class="d-flex gap-2 justify-content-center">
                    <button type="button" class="btn btn-outline-primary" onclick="callAjax('Get');">SELECT</button>
                    <button type="button" class="btn btn-outline-success" onclick="callAjax('Post');">SAVE</button>
                    <button type="button" class="btn btn-outline-warning" onclick="callAjax('Put')">UPDATE</button>
                    <button type="button" class="btn btn-outline-danger" onclick="callAjax('Delete')">DELETE</button>
                </div>
            </form>
        </div>
        <jsp:include page="/WEB-INF/jsp/layout/footer.jsp" />
    </body>
</html>
