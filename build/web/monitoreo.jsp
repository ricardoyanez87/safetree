<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>

<%clases.Conexion con = new clases.Conexion();
          Connection  cn = con.conexion();
            String sql1="select * from v_medicion";
            Statement st;
            try {
                   st = cn.createStatement();
                   ResultSet r=st.executeQuery(sql1); %>
                   <table class="table col-sm-8 text-center mx-auto d-block">
                       <thead>
                            <tr>
                                <th>
                                    <label>Humedad %</label>
                                </th>
                                <th>
                                    <label>
                                        Temperatura °C
                                    </label>
                                </th>
                                <th>
                                    <label>
                                        CO ppm
                                    </label>
                                </th>
                                <th>
                                    <label>
                                        Fecha del Registro
                                    </label>
                                </th>
                                <th>
                                    <label>
                                        Hora del Registro
                                    </label>
                                </th>
                       </tr>
                       </thead>
                        <%while(r.next()){%> 
                        <tbody>
                            <tr>
                            <th>
                                <label>
                                    <%out.println(r.getFloat("humedad"));%>
                                </label>
                            </th>
                            <th>
                                <label>
                                    <%out.println(r.getFloat("temperatura"));%>
                                </label>
                            </th>
                            <th>
                                <label>
                                    <%out.println(r.getInt("co"));%>
                                </label>
                            </th>
                            <th>
                                <label>
                                    <%out.println(r.getDate("fecha"));%>
                                </label>
                            </th>
                            <th>
                                <label>
                                    <%out.println(r.getTime("fecha"));%>
                                </label>
                            </th>
                        </tr>
                        </tbody>
                        <%}%>
                   </table>
                   <% } catch (SQLException ex) {
                    System.out.println("error: "+ex );
                }%>       