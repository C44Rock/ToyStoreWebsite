<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<c:import url="/WEB-INF/jsp/header.jsp">
			 <c:param name="pageTitle" value="Product Table View" />
		</c:import>

        <c:forEach var = "toy" items = "${productList}">
            <div class="row">
                <img src="img/${toy.imageName}">
                <div class="content">
                    ${toy.name}<br>
                    ${toy.manufacturer}<br>
                    ${toy.price}<br>
                    ${toy.weightInLbs}<br>
                    ${toy.averageRating}<br>
                </div>
                <hr> <!-- horizontal rule(line) -->
           </div>
        </c:forEach>
       
       <c:import url="/WEB-INF/jsp/footer.jsp"></c:import>
