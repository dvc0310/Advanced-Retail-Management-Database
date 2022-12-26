# Team-Project-Store-Database

**Introduction:**

Stores are important businesses that often have a lot to manage. They employ many
people and often have vast inventories that need to be managed with databases. Some of our
group members have worked in stores, and as such, we know that a lot goes into successfully
operating the different business transactions that occur in a store. As a result, we are interested in
creating a database that can manage a store’s payroll, positions, employees, items, and inventory.
This would help the restaurant run more smoothly and make it easier for employers and
employees alike to manage their pay, hours, and positions. Having worked in retail, we have the
experience to know that they use similar databases to keep track of their employees and sales, so
this is a useful and practical application of databases that we have seen in professional
environments. Finally, it is a universal acknowledgement that everyone wants to be paid properly
for the time they work, and this database can help with that.
A business must know what food and items they have in their inventory and what they
are running low on. Otherwise, they won’t know when to make an order for more supplies to
replenish inventory. This database can assist with that as well as much more.

**Database Description:**

Our database will track employees, what position they have in the store, whether they
have multiple roles, how many hours they have worked at each position, how much they are paid
hourly for each job, the items they sell, the customers they sell to, as well as the various
purchases and sales that occur in the store. Our database will also include tables for items in the
inventory, including the different types of items and the quantity of each, as well as the cost of
the items and how much the store makes on them. This way, a manager can quickly tell which
items are running low, which items are expensive for the store to purchase, which items make the
store the most money, and which items sell the fastest. Every table in the database is connected
with each other through foreign keys or composite keys, forming different relationships among
each other to replicate an advanced database.
This database will be of great use to store managers who are looking to manage their
inventories and employees. An in-depth analysis of this database will allow someone to evaluate
different business strategies in order to improve business performance while also keeping track
of those working for them in an organized manner.

**Logical Design**

![image](https://user-images.githubusercontent.com/96139120/209569120-77973b53-c79f-451b-b656-dd243cb2a95a.png)

For the ERD part of this project, we worked with TAs and the instructional team to come
up with recommendations for tables and different keys that would pair best with our existing
tables. The different tables are quite self-explanatory, with different keys indicating the various
pieces of information that the database holds. The payroll table keeps track of the payroll that is
run every two weeks. The locations table keeps track of the location of the store where the
transactions are taking place; the positions table keeps track of the positions of employees in the

store; the employee table keeps track of the employees working for the store; the sales table
keeps track of the sales being conducted by the company; the customers table keeps track of the
customers that make a purchase at the store; the items table keeps track of the items that are held;
the types of things table keeps track of the different kinds of objects; and the sales items link
table connects items and sales so that people can make multiple purchases within a single sale.

**Views/Queries:**

● **Sale_transaction_view:** Shows the employee id and connects it with the sale
transactions they made as well as the profit made for each transaction.

● **Low_position_employee_sales:** shows the employee name with their position and their
sale transactions but only for employees that make under $15 an hour.

● **Employee_most_hours_view:** Shows the employees and their hours worked alongside
their salaries, ordered by hours worked. This only includes employees who have worked
less than 10 years for the store.

● **Customer_sales:** Groups sale transactions by customer to show how much each
customer has spent at the store in total and places orders by total sales per customer.

● **Hours_worked_common_state:** Shows employees hours worked, ordered by hours
worked, and only includes employees from the most common state for employees.

**Lessons Learned and Future Work:**

Future work on this project would include more queries involving more advanced
functions that combine more tables that we would be able to incorporate into an inventory based
business. We would work on creating more logical tables as well as keys to include some more
complexity which in turn would potentially open a gate to include more diversity into our
system.
Upon completion of this project, we learned a lot about databases and working with them.
The experience gained from working on this project is equivalent to a real world opportunity in
which we would potentially work for an organization that would ask us to create a database
similar to the one we have made. The logical, physical, as well as the CRUD queries have
successfully prepared us for working with databases either with companies or for a personal
project that we can decide to work on in the future.

**Credit:**

David Chun, Sanjana Sankar, James Igwenagu, Ryan Flint, Ildreed Mbami
