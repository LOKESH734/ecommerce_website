<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Product Delivery Status</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 15px;
            text-align: center;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        .status-pending {
            color: orange;
        }
        .status-delivered {
            color: green;
        }
        .status-in-progress {
            color: blue;
        }
    </style>
</head>
<body>
    <h1>Product Delivery Status</h1>
    <table>
        <thead>
            <tr>
                <th>Admin ID</th>
                <th>Product ID</th>
                <th>Quantity</th>
                <th>Delivery Status</th>
                <th>Delivery Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "tiger");

                    String sql = "SELECT a.admin_id, p.product_id, ap.quantity, ap.delivery_status, ap.delivery_date " +
                                 "FROM Admin_Products ap " +
                                 "JOIN Admin a ON ap.admin_id = a.admin_id " +
                                 "JOIN Products p ON ap.product_id = p.id";

                    stmt = conn.prepareStatement(sql);
                    rs = stmt.executeQuery();

                    while (rs.next()) {
                        int adminId = rs.getInt("admin_id");
                        int productId = rs.getInt("product_id");
                        int quantity = rs.getInt("quantity");
                        String deliveryStatus = rs.getString("delivery_status");
                        Date deliveryDate = rs.getDate("delivery_date");

                        out.println("<tr>");
                        out.println("<td>" + adminId + "</td>");
                        out.println("<td>" + productId + "</td>");
                        out.println("<td>" + quantity + "</td>");
                        out.println("<td class='status-" + deliveryStatus.replace(" ", "-").toLowerCase() + "'>" + deliveryStatus + "</td>");
                        out.println("<td>" + (deliveryDate != null ? deliveryDate.toString() : "N/A") + "</td>");
                        out.println("</tr>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<tr><td colspan='5'>An error occurred while retrieving delivery status.</td></tr>");
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                    if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                    if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                }
            %>
        </tbody>
    </table>
</body>
</html>
