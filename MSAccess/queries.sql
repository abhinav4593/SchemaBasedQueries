--2
	Select fname,lname,city,state,phone from Employees where state='AZ'
--3
	Select S.address,S.city,S.state,S.zip,E.fname,E.lname,E.phone from Stores S, employees E where S.manager = E.empID
--4
	Select product,price from Inventory where price <10 order by price desc

--5
    Select city,product,price,quantity from Inventory I , (Select invid,quantity,city from stock S , (Select StoreId,city from Stores where city='Memphis') t where s.storeid = t.storeId) f  where f.invid = I.invid order by product
	
--6
   Select product,price from inventory where product like '*water*'
   
--7
  Insert into Employees (empID,fname,lname,address,city,state,zip,phone) values('2001','Robert','Bartleh','125 Birdy Lane','Tucson','AZ','85705','520-535-5523')
 
--8  
  Insert into Emp_store  (empID,StoreID,startDate) values('2001','3','7/24/2013')
  
--9
  Update stores set manager= '2001'  where state='MS'
    
--10
  Select S.address,S.city,S.state,S.zip,E.fname,E.lname,E.phone from Stores S, employees E where S.manager = E.empID

