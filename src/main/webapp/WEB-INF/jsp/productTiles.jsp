<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

		<c:import url="/WEB-INF/jsp/header.jsp">
	   		 <c:param name="pageTitle" value="Product Table View" />
		</c:import>
		
       <table>
           <tr>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-balls.jpg" alt = "toy balls"></td>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-car.jpg" alt = "toy car"></td>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-gym.jpg" alt = "toy gym"></td>
           </tr>
           
           <tr>
               <c:forEach begin = "0" end = "2" var = "i">
                   <td colspan = "2">${productList.get(i).name}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "0" end = "2" var = "i">
                   <td colspan = "2">${productList.get(i).manufacturer}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "0" end = "2" var = "i">
                   <td colspan = "2">$${productList.get(i).price}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "0" end = "2" var = "i">
                   <td colspan = "2">Weight: ${productList.get(i).weightInLbs} lbs.</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "0" end = "2" var = "i">
                   <c:choose>
                       <c:when test = "${productList.get(i).averageRating >= 4.5}">
                           <td colspan = "2"><img src = "img/5-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 3.5}">
                           <td colspan = "2"><img src = "img/4-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 2.5}">
                           <td colspan = "2"><img src = "img/3-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 1.5}">
                           <td colspan = "2"><img src = "img/2-star.png"></td>
                       </c:when>
                       <c:otherwise>
                           <td colspan = "2"><img src = "img/1-star.png"></td>
                       </c:otherwise>
                   </c:choose>
               </c:forEach>
           </tr>
           
           <tr>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-horse.jpg" alt = "toy horse"></td>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-snail.jpg" alt = "toy snail"></td>
               <td class = "equalImageSpacing" colspan = "2"><img src = "img/toy-tricycle.jpg" alt = "toy tricycle"></td>
           </tr>
           
           <tr>
               <c:forEach begin = "3" end = "5" var = "i">
                   <td colspan = "2">${productList.get(i).name}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "3" end = "5" var = "i">
                   <td colspan = "2">${productList.get(i).manufacturer}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "3" end = "5" var = "i">
                   <td colspan = "2">$${productList.get(i).price}</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "3" end = "5" var = "i">
                   <td colspan = "2">Weight: ${productList.get(i).weightInLbs} lbs.</td>
               </c:forEach>
           </tr>
            <tr>
               <c:forEach begin = "3" end = "5" var = "i">
                   <c:choose>
                       <c:when test = "${productList.get(i).averageRating >= 4.5}">
                           <td colspan = "2"><img src = "img/5-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 3.5}">
                           <td colspan = "2"><img src = "img/4-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 2.5}">
                           <td colspan = "2"><img src = "img/3-star.png"></td>
                       </c:when>
                       <c:when test = "${productList.get(i).averageRating >= 1.5}">
                           <td colspan = "2"><img src = "img/2-star.png"></td>
                       </c:when>
                       <c:otherwise>
                           <td colspan = "2"><img src = "img/1-star.png"></td>
                       </c:otherwise>
                   </c:choose>
               </c:forEach>
           </tr>
       </table>
    		
    		<c:import url="/WEB-INF/jsp/footer.jsp"></c:import>