<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.DAO.indexDao" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%@ page import="java.util.Random" %>

<%

%>

<section id="feedback" class="testemonial">
    <div class="container">

        <div class="gallary-header text-center">
            <h2>Đánh giá khách hàng</h2>
            <p>
                Đánh giá của khách hàng là tiêu chí quan trọng nhất để cải thiện dịch vụ.
            </p>

        </div><!--/.gallery-header-->

        <div class="owl-carousel owl-theme" id="testemonial-carousel">
            <% for (Feedback f : fback) { %>
            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img"><% Random random = new Random();%>
                        <img src="assets/images/client/<%=random.nextInt(3)+1%>.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            <%=f.getText()%>
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                <% String uN = ind.getUserNameById(1); %>
                                <%=uN%>
                            </a>
                        </h3>
                        <h4><%=f.getDate()%>></h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->
            </div><!--/.item-->
            <% } %>

        </div><!--/.testemonial-carousel-->
    </div><!--/.container-->

</section><!--/.testimonial-->

