<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="text-center col-md-6 mt-5" style="margin-left: 40%">
    <nav class="text-center" aria-label="Page navigation example">
        <ul class="pagination text-center" style="margin-left: 6%;">

            <!-- N?u trang hi?n t?i là trang ??u tiên -->
            <c:if test="${sessionScope.page.getCurrentPage() == 1}">
                <li class="page-item disabled"><a class="page-link">First</a></li>
                <li class="page-item disabled"><a class="page-link">Previous</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getCurrentPage()+1}">Next</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getTotalPage()}">Last</a></li>
            </c:if>

            <!-- N?u trang hi?n t?i là trang cu?i cùng -->
            <c:if test="${sessionScope.page.getCurrentPage() == sessionScope.page.getTotalPage()}">
                <li class="page-item"><a class="page-link" href="fruit?cp=1">First</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getCurrentPage()-1}">Previous</a></li>
                <li class="page-item disabled"><a class="page-link">Next</a></li>
                <li class="page-item disabled"><a class="page-link">Last</a></li>
            </c:if>

            <!-- N?u trang hi?n t?i n?m ? gi?a -->
            <c:if test="${sessionScope.page.getCurrentPage() > 1 && sessionScope.page.getCurrentPage() < sessionScope.page.getTotalPage()}">
                <li class="page-item"><a class="page-link" href="fruit?cp=1">First</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getCurrentPage()-1}">Previous</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getCurrentPage()+1}">Next</a></li>
                <li class="page-item"><a class="page-link" href="fruit?cp=${sessionScope.page.getTotalPage()}">Last</a></li>
            </c:if>

        </ul>
    </nav>
</div>
