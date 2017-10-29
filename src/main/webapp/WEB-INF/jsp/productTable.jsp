<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<c:import url="/WEB-INF/jsp/header.jsp">
	   		 <c:param name="pageTitle" value="Product Table View" />
		</c:import>
	
		<table>
			<tr>
				<td colspan = "2">&nbsp;</td>
				
				<c:forEach var = "product" items = "${productList}">
					<c:url var="productDetailUrl" value="/productDetail">
		        			<c:param name="productId" value="${product.productId}"/>
		        		</c:url>
					<td colspan = "2">
						<a href = "${productDetailUrl}"><img src = "img/${product.imageName}" alt = "${product.name}"></a>
					</td>
				</c:forEach>
			</tr>
			<tr>
				<td class = "background" colspan = "2">Name</td>
				<c:forEach var = "toy" items = "${productList}">
					<td class = "background" colspan = "2">${toy.name}</td>
				</c:forEach>
			</tr>
			<tr>
				<td colspan = "2">Rating</td>
				<c:forEach var = "toy" items = "${productList}">
					<c:choose>
						<c:when test = "${toy.averageRating >= 4.5}">
							<td colspan = "2"><img src = "img/5-star.png" alt = "5 Stars"></td>
						</c:when>
						<c:when test = "${toy.averageRating >= 3.5}">
							<td colspan = "2"><img src = "img/4-star.png" alt = "4 Stars"></td>
						</c:when>
						<c:when test = "${toy.averageRating >= 2.5}">
							<td colspan = "2"><img src = "img/3-star.png" alt = "3 Stars"></td>
						</c:when>
						<c:when test = "${toy.averageRating >= 1.5}">
							<td colspan = "2"><img src = "img/2-star.png" alt = "2 Stars"></td>
						</c:when>
						<c:otherwise>
							<td colspan = "2"><img src = "img/1-star.png" alt = "1 Stars"></td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</tr>
			<tr>
				<td class = "background" colspan = "2">Mfr</td>
				<c:forEach var = "toy" items = "${productList}">
					<td class = "background" colspan = "2">${toy.manufacturer}</td>
				</c:forEach>
			</tr>
			<tr>
				<td colspan = "2">Price</td>
				<c:forEach var = "toy" items = "${productList}">
					<td colspan = "2">$${toy.price}</td>
				</c:forEach>
			</tr>
			<tr>
				<td class = "background" colspan = "2">Wt. (in lbs)</td>
				<c:forEach var = "toy" items = "${productList}">
					<td class = "background" colspan = "2">${toy.weightInLbs}</td>
				</c:forEach>
			</tr>
		</table>
		
		<c:import url="/WEB-INF/jsp/footer.jsp"></c:import>