use master
go

Create Database MackTrucks
on Primary 
(NAME = 'MackTrucks_Primary', 
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MackTrucks_primary.mdf',
size = 5mb,
maxsize = 10mb,
filegrowth = 1mb),
filegroup MackTrucks_DBI
(NAME = 'MackTrucks_DBI_Dat1',
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MackTrucks_DBI_Dat1.ndf',
size = 5mb,
maxsize = 10mb,
filegrowth = 1mb),
(NAME = 'MackTrucks_DBI_Dat2', 
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MackTrucks_DBI_Dat2.ndf',
size = 5mb,
maxsize = 10mb,
filegrowth = 1mb)
LOG ON 
(NAME = 'MackTrucks_log',
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MackTrucks_log.ldf',
size = 5mb,
maxsize = 10mb,
filegrowth = 1mb)
Go

Create Schema HumanResources
go
Create Schema Production
go
Create Schema Management
go


Create Table Production.Truck
(
Truck_ID int constraint pktruckid primary key not null,
Name nvarchar(50) not null,
Engine nvarchar(50) not null,
Class nvarchar(50) not null,
Body_Style nvarchar(50) not null,
Transmission nvarchar(50) not null,
Fuel_Type nvarchar(50),
Location_Produced nvarchar(50) not null,
Truck_Desciption nvarchar(500)
)



Insert Into Production.Truck 
values(1, 'Mack Super-Liner', 'EA9(V8)', 'Heavy Duty', 'Bonneted Cab-chassis', 'Eaton-Fuller 9 - 18 - Spd', 'Fuel', 'Wuse', 'The model line was a conventional-cab tractor configured primarily for highway and vocational applications, serving as the flagship conventional of the Mack product line in North America. '),
(2, 'Mack Anthem', 'Mack MP7', 'Heavy Duty', 'Long-hood Conventional', 'Allison 6-Speed', 'Fuel', 'Maraba', 'The Anthem is designed as a fuel-efficient highway semi-tractor only.'),
(3, 'Mack Magnum', 'Mack 454hp', 'B Double', 'Cab Over', '18 Spd Roadranger(manual)', 'Fuel', 'Lugbe', 'A division of AB Volvo. It consisted of a Renault Magnum cab and chassis, with an all American Drive line including a Roadranger 18 speed transmission and had either Rockwell or Dana drive axles.'),
(4, 'Mack Pinnacle', 'Mack MP8', 'Heavy Duty', 'Long-hood Conventional Semi-tractor', 'Mack 8 - 18 - Spd', 'Fuel', 'Lugbe', 'The Pinnacles set-forward front axle and high rectangular grille make it high drag and not well-suited for long-distance hauling.It is available with a sleeper but it is commonly used as a day cab for local and regional hauling, where local laws and conditions restrict length or affect weight distribution.'),
(5, 'Mack Terrapro', 'Cummins Westport L9N', 'Heavy Duty', 'Cab Over', 'Eaton-Fuller 9 - 18 - Spd', 'Fuel', 'Maraba', 'They are a forward control cab-over-engine type, where the driver sits in front of the axle. A flat front has two large windshields. A spotting feature is small notches in the lower inside of the windshields. It is used in refuse service and for construction concrete pumps.'),
(6, 'Mack Titan', 'Mack MP8', 'Heavy Duty', 'Bonneted Cab', 'Eaton Manual', 'Fuel', 'Wuse', 'It can haul up to 200 tonnes GCM and comes with many heay duty options that are not usually found on highway trucks.'),
(7, 'Mack Granite', 'Cummins ISL9', 'Semi-tractor', 'Long-hood Conventional', 'Mack 8 Spd', 'Fuel', 'Maraba', 'It has a long, low-profile hood and a high-visibility cab. Designed as straight trucks for local construction, waste removal, and other vocational jobs.'),
(8, 'Mack MD', ' Cummins B6.7L ', 'Medium Duty', 'Short-hood Conventional', 'Allison 6-Speed', 'Fuel', 'Lugbe', 'It has a Short, low-profile hood and a high-visibility cab. It is designed as straight trucks for local delivery, construction, and other vocational jobs.'),
(9, 'Mack LR', 'Cummins Westport L9N', 'Heavy Duty', 'Forward Control Cab-Over', 'Allison 5 - 6 - Spd', 'Fuel', 'Wuse', 'It is a forward control cab-over engine type where the driver sits in front of the axle. It is a very low-profile and has dual driving controls with a stand up driving position on the right side.'),
(10, 'Mack CH613', 'Mack MP8', 'Semi-Truck', 'Short-hood Conventional','Allison 6-Speed', 'Fuel','Lugbe', 'It is built for Tough Road Conditions and long hauling')

Create Table HumanResources.Customer
(
Customer_ID int primary key not null,
Name varchar(100) not null,
Email_Address nvarchar(50),
Phone_Number nvarchar(11),
)

Insert into HumanResources.Customer
values(1, 'Manuel Samuel', 'manuelsamuel@gmail.com', '09023453567'),
(2, 'Mark Robert', 'markrobert2090@gmail.com', '07083467356'),
(3, 'Elijah Bolu', 'bolulijah21@gmail.com', '08183657892'),
(4, 'Amelia Cartson', 'cartsonelia209@gmail.com', '08034672894'),
(5, 'James Matthew', 'matthewthejames@gmail.com', '08192836478'),
(6, 'Ava Williams', 'williamsavaperv@gmail.com', '07028367483'),
(7, 'Williams Richard', 'richardwilliams90@gmail.com', '08038748367'),
(8, 'Sophia Daniel', 'danielsophiathefirst@gmail.com', '08038483423'),
(9, 'Benjamin Hussein', 'husseinthefirst@gmail.com', '07028368922'),
(10, 'Isabella Franklin', 'franklinbellama@gmail.com', '08028839932'),
(11, 'Kai Alpha', 'kaialpha2012@gmail.com', '09018268386'),
(12, 'Zion Williamson', 'zionthegoat@gmail.com', '08098654232'),
(13, 'Jayden Samuel', 'samueljaydenthekaratekid@gmail.com', '09038329322'),
(14, 'Eliana Robertson', 'elianarobertsonwelp@gmail.com', '08027367492'),
(15, 'Luca Modric', 'modricthemidfeidler@gmail.com', '08192837643'),
(16, 'Ezra Scarlet', 'scarletfairytail@gmail.com', '08083762178'),
(17, 'Maeve Lander', 'maevehomelanderbabe@gmail.com', '07038293282'),
(18, 'Oliva Alexandro', 'alexmandrosamuel@gmail.com', '09098356278'),
(19, 'Emma Kate', 'siathesecond@gmail.com', '07027516728'),
(20, 'Charlotte Ike', 'charlottesnaike@gmail.com', '08038294388'),
(21, 'Amelia Sanders', 'ameliadanderman@gmail.com', '09038283222'),
(22, 'Mia Sia', 'miasiathegreatest@gmail.com', '08192324829'),
(23, 'Ezra Miller', 'millertheflash@gmail.com', '07028192022'),
(24, 'Jack Leonardo', 'leonardothemess@gmail.com', '08192384321'),
(25, 'Theo Martins', 'martinswilliams@gmail.com', '08028329232'),
(26, 'Noah Piero', 'noahpeiero0202@gmail.com', '08029235589'),
(27, 'Oliver Donatello', 'livertello20192@gmail.com', '07028479922'),
(28, 'Michael Owen', 'owenmichael@gmail.com', '09038532294'),
(29, 'Micheangelo Angel', 'theyellowninjaturtle@gmail.com', '07083844934'),
(30, 'Raphael Menser', 'raphaelmesnser1@gmail.com', '09023442324'),
(31, 'Michael Saint', 'michaelsaint932@gmail.com', '08032948332')



Create Table HumanResources.Department
(
Department_ID int primary key not null,
Name nvarchar(50) not null,
Group_Name nvarchar(50) not null,
Department_Head nvarchar(20) not null
)

Insert into HumanResources.Department
values(1, 'Engineering', 'Research and Development', 'Robert Williams'),
(2, 'Parts Desgin', 'Research and Development', 'Ava Sanders'),
(3, 'Sales', 'Sales and Marketing', 'Mark Mattias'),
(4, 'Marketing', 'Sales and Marketing', 'Jack Mark'),
(5, 'Production', 'Manufacturing', 'Steven Joseph'),
(6, 'Finance', 'Administration', 'John Martins'),
(7, 'Purchasing', 'Inventory Management', 'Samuel Ebuka'),
(8, 'Maintenance', 'Quality Assurance', 'Mia Alexsandro'),
(9, 'Test Driving', 'Quality Assurance', 'Kate Isabella'),
(10, 'Document Control', 'Quality Assurance', 'Mitobe Jayden')



Create Table HumanResources.Employee
(
Employee_ID int primary key not null,
Name nvarchar(20) not null,
Phone_Number nchar(11) check (Phone_Number Like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Email_Address nvarchar(50) not null,
Gender nchar(1) ,
Department_ID int,
Manager_ID int not null,
Salary money not null,
Job_Description nvarchar(500),
Hire_Date date not null
Constraint fkdepartmentid Foreign Key(Department_ID) References HumanResources.Department(Department_ID)
)

Insert into HumanResources.Employee
values(1, 'Robert Williams', '07012932345', 'robertwilliamson@gmail.com', 'M', 1, 1, 350000, 'In charge of the engineering department.', getdate()),
(2, 'Ava Sanders', '08028329022', 'avasandersss@gmail.com', 'F', 2, 1, 352000, 'In charge of the parts design department', getdate()),
(3, 'Mark Mattias', '08192989232', 'markmattiasas@gmail.com', 'M', 3, 2, 402000, 'In charge of the sales department.', getdate()),
(4, 'Jack Mark', '09023934422', 'jackmark1029@gmail.com', 'M', 4, 2, 503000, 'In charge of the marketing department', getdate()),
(5, 'Steven Joseph', '08192837463', 'stevenjoseph222@gmail.com', 'M', 5, 3, 500000, 'In charge of the production department', getdate()),
(6, 'John Martins', '07098652453', 'johnmartins247@gmail.com', 'M', 6, 4, 799000, 'In charge of the finance department. ', getdate()),
(7, 'Samuel Ebuka', '08093238421', 'samuelbukabuka@gmail.com', 'M', 7, 5, 300000, 'In charge of the purchasing department', getdate()),
(8, 'Mia Alexsandro', '09092384282', 'miathesiathegreatest@gmail.com', 'F', 8, 6, 343000, 'In charge of the maintenance department', getdate()),
(9, 'Kate Isabella', '08133282392', 'kateisabellafurler@gmail.com',  'F', 9, 6, 350000, 'In charge of the test drving department', getdate()),
(10, 'Mitobe Jayden', '07039284753', 'mitobetheballer1@gmail.com', 'M', 10, 6, 300000, 'In charge of the document control department', getdate()),
(11, 'Bill Sam', '08123224455', 'billprobablygates@gmail.com',  'M', 2, 2, 120000, 'Drafts layouts of truck components using sketches and model prototypes, also painting and desginer truck bodies', getdate()),
(12, 'Zane Zidane', '07083293293', 'zidanethegreatestcoach@gmail.com', 'M', 3, 2, 100000, 'Communicates with customers on the lot and by phone or email to close a sale, providing information on available vehicles to prospective customers, and explaining truck financing, such as down payments, interest, and warranties.', getdate()),
(13, 'Ches Charlemagne', '08128376453', 'chescharles3023@gmail.com', 'M', 1, 1, 130000, 'Designing and testing various components of vehicles, including fuel technologies and safety systems.', getdate()),
(14, 'Benjamin Samuel', '09082381282', 'kingbennzyophital@gmail.com', 'M', 4, 2, 125000, 'Monitors market trends, create advertising campaigns, develop pricing strategies and targeting strategies based on demographic data and work with the company to develop more awareness of what they offer.', getdate()),
(15, 'Aarav Abdul', '07092837465', 'aaravkunsama@gmail.com', 'M', 5, 3, 115000, 'Works in order to achieve mass-produced identical models, offered for sale to the public, and able to be legally driven.', getdate()),
(16, 'Kabeer Abhishek', '08111283293', 'kkaabbeeeerr@gmail.com', 'F', 6, 4, 100000, 'Maintaining records for all transactions, preparing monthly and quarterly financial reports and processing reimbursements.', getdate()),
(17, 'Abiovic Abisola', '09012832932', 'abisolathefirstabiovic@gmail.com', 'F', 7, 5, 150000, 'Identifies business requirements for goods, materials, and services. Find reliable suppliers to meet these requirements. Negotiate prices, build quality, and delivery terms. Set up the order quantities and making bid requests on supply contracts.', getdate()),
(18, 'Adams Adedamola', '08123843213', 'adamssdamola21@gmail.com', 'M', 8, 6, 102000, 'Installs and inspect machines and electrical equipment and carry out preventive maintenance to ensure that industrial machines remain operational.', getdate()),
(19, 'Adeola Favour', '09012932393', 'adeolathefavouredone@gmail.com', 'F', 9, 6, 122000, 'Test Drives the trucks to ensure safety and satisfactory usage before selling off to customers in order to avoid major complaints', getdate()),
(20, 'Patrick Victor', '07028382322', 'patrickstarpants@gmail.com', 'M', 10, 6, 102000, 'Typing contracts, archiving files and ensuring all team members have access to necessary documentation.', getdate()),
(21, 'Wurasola Xae', '08018329292', 'wurasolaxaebae@gmail.com', 'F',  5, 3, 115000, 'Works in order to achieve mass-produced identical models, offered for sale to the public, and able to be legally driven.', getdate()),
(22, 'Tochi Adenuga', '08102128322', 'tochalenuga012@gmail.com', 'F', 3, 2, 100000, 'Communicates with customers on the lot and by phone or email to close a sale, providing information on available vehicles to prospective customers, and explaining truck financing, such as down payments, interest, and warranties.', getdate()),
(23, 'Ayomide Swavey', '09028384839', 'ayomidetarzanswavey@gmail.com', 'M', 4, 2, 125000, 'Monitors market trends, create advertising campaigns, develop pricing strategies and targeting strategies based on demographic data and work with the company to develop more awareness of what they offer.',getdate()),
(24, 'Zion Tengenest', '08192832322', 'tengenstion092@gmail.com', 'M',  6, 4, 100000, 'Maintaining records for all transactions, preparing monthly and quarterly financial reports and processing reimbursements.', getdate()),
(25, 'Toku Ray', '07023437890', 'tokuexmachina@gmail.com', 'M', 8, 6, 102000, 'Installs and inspect machines and electrical equipment and carry out preventive maintenance to ensure that industrial machines remain operational.', getdate()), 
(27, 'Oluchi Daniella', '07004666891', 'ladyvaleriechinwe@gmail.com', 'F', 9, 6, 122000, 'Test Drives the trucks to ensure safety and satisfactory usage before selling off to customers in order to avoid major complaints', getdate()),
(28, 'Daniel Olamide', '08104618586', 'kamidandokkuhaiteku@gmail.com', 'M', 10, 6, 102000, 'Typing contracts, archiving files and ensuring all team members have access to necessary documentation.', getdate()),
(29, 'Matthew Simon', '08192832382', 'matthewballsimeon@gmail.com', 'M', 7, 5, 150000, 'Identifies business requirements for goods, materials, and services. Find reliable suppliers to meet these requirements. Negotiate prices, build quality, and delivery terms. Set up the order quantities and making bid requests on supply contracts.', getdate()),
(30, 'Dembele Mickol', '07029382828', 'dembelerightback@gmail.com', 'M', 4, 2, 125000, 'Monitors market trends, create advertising campaigns, develop pricing strategies and targeting strategies based on demographic data and work with the company to develop more awareness of what they offer.', getdate()),
(31, 'Moyin Alamin', '08104613586', 'nftguru2192@gmail.com', 'F', 10, 6, 102000, 'Typing contracts, archiving files and ensuring all team members have access to necessary documentation.', getdate()),
(32, 'Ayo Denzel', '08123428322', 'techlord247@gmail.com', 'M', 3, 2, 100000, 'Communicates with customers on the lot and by phone or email to close a sale, providing information on available vehicles to prospective customers, and explaining truck financing, such as down payments, interest, and warranties.', getdate()),
(33, 'Theophilous Mendel', '08111213293', 'philo888sopher@gmail.com', 'M', 6, 4, 100000, 'Maintaining records for all transactions, preparing monthly and quarterly financial reports and processing reimbursements.', getdate()),
(34, 'Momoh Gloria', '07012837465', 'momochangloria@gmail.com', 'F', 5, 3, 115000, 'Works in order to achieve mass-produced identical models, offered for sale to the public, and able to be legally driven.', getdate()),
(35, 'Tabitah Mizuki', '08176843213', 'mizukitabitaone@gmail.com', 'F', 8, 6, 102000, 'Installs and inspect machines and electrical equipment and carry out preventive maintenance to ensure that industrial machines remain operational.', getdate()),
(36, 'Halzee Prince', '08154224455', 'halzeepaintballer@gmail.com',  'M', 2, 2, 120000, 'Drafts layouts of truck components using sketches and model prototypes, also painting and desginer truck bodies', getdate()),
(37, 'Charles Ebube', '08123776453', 'charlesubeman@gmail.com', 'M', 1, 1, 130000, 'Designing and testing various components of vehicles, including fuel technologies and safety systems.', getdate()),
(38, 'Lukuku Kante', '07026593293', 'lukakungolote@gmail.com', 'M', 3, 2, 100000, 'Communicates with customers on the lot and by phone or email to close a sale, providing information on available vehicles to prospective customers, and explaining truck financing, such as down payments, interest, and warranties.', getdate()),
(39, 'David James', '08192173822', 'mori1999four@gmail.com', 'M',  6, 4, 100000, 'Maintaining records for all transactions, preparing monthly and quarterly financial reports and processing reimbursements.', getdate()),
(40, 'Jones Stephen', '09082183762', 'jonesbenzavid@gmail.com', 'M', 4, 2, 125000, 'Monitors market trends, create advertising campaigns, develop pricing strategies and targeting strategies based on demographic data and work with the company to develop more awareness of what they offer.', getdate())



Create Table Production.Inventory
(
Truck_ID int primary key not null,
In_Stock int null,
Truck_Description nvarchar(500) not null,
Location nvarchar(50) not null,
Date_Modified datetime,
constraint fkTruckID Foreign Key(Truck_ID) References
Production.Truck(Truck_ID)
)

Insert into Production.Inventory
values(1, 1254, 'The model line was a conventional-cab tractor configured primarily for highway and vocational applications, serving as the flagship conventional of the Mack product line in North America.', 'Wuse', getdate()),
(2, 4279, 'The Anthem is designed as a fuel-efficient highway semi-tractor only/', 'Wuse', getdate()),
(3, 2248, 'A division of AB Volvo. It consisted of a Renault Magnum cab and chassis, with an all American Drive line including a Roadranger 18 speed transmission and had either Rockwell or Dana drive axles.', 'Wuse', getdate()),
(4, 9825, 'The Pinnacles set-forward front axle and high rectangular grille make it high drag and not well-suited for long-distance hauling.It is available with a sleeper but it is commonly used as a day cab for local and regional hauling, where local laws and conditions restrict length or affect weight distribution.', 'Wuse', getdate()),
(5, 9322, 'They are a forward control cab-over-engine type, where the driver sits in front of the axle. A flat front has two large windshields. A spotting feature is small notches in the lower inside of the windshields. It is used in refuse service and for construction concrete pumps.', 'Wuse', getdate()),
(6, 2567, 'It can haul up to 200 tonnes GCM and comes with many heay duty options that are not usually found on highway trucks.', 'Wuse', getdate()),
(7, 1902, 'It has a long, low-profile hood and a high-visibility cab. Designed as straight trucks for local construction, waste removal, and other vocational jobs', 'Wuse', getdate()),
(8, 4692, 'It has a Short, low-profile hood and a high-visibility cab. It is designed as straight trucks for local delivery, construction, and other vocational jobs.', 'Wuse', getdate()),
(9, 7145, 'It is a forward control cab-over engine type where the driver sits in front of the axle. It is a very low-profile and has dual driving controls with a stand up driving position on the right side.', 'Wuse', getdate()),
(10, 1886, 'It is built for Tough Road Conditions and long hauling', 'Wuse', getdate())

Create Table Management.SalesDetails
(
Sale_ID int primary key not null,
Customer_ID int,
Employee_ID int foreign key references HumanResources.Employee(Employee_ID),
Truck_ID int foreign key references Production.Truck(Truck_ID),
Quantity int not null,
Unit_Price money not null,
Total money not null,
Payment_Method nvarchar(20),
Payment_Status varchar(60) Check(Payment_Status in ('Paid', 'Pending')), 
Purchase_Date datetime not null
constraint fkcustomerid Foreign Key(Customer_ID) References
HumanResources.Customer(Customer_ID)
)

Insert into Management.SalesDetails
values(1, 23, 3, 2, 7, 200000, 1400000, 'Cash', 'Paid', getdate()),
(2, 12, 12, 10, 3, 150000, 450000, 'Cash', 'Paid', getdate()),
(3, 9, 22, 8, 19, 900000, 17100000, 'Transfer', 'Pending', getdate()),
(4, 29, 22, 4, 1, 290000, 290000, 'Cash', 'Paid', getdate()),
(5, 23, 3, 2, 35, 300000, 10500000, 'Cash', 'Pending', getdate()),
(6, 16, 22, 4, 12, 290000, 3480000, 'Transfer', 'Paid', getdate()),
(7, 11, 3, 6, 20, 500000, 10000000, 'Transfer', 'Paid', getdate()),
(8, 30, 12, 9, 2, 200000, 400000, 'Transfer', 'Paid', getdate()),
(9, 14, 12, 5, 50, 350000, 17500000, 'Cash', 'Paid', getdate()),
(10, 2, 3, 10, 5, 150000, 750000, 'Transfer', 'Pending', getdate()),
(11, 8, 12, 7, 100, 250000, 25000000, 'Transfer', 'Paid', getdate()),
(12, 4, 3, 6, 5, 500000, 2500000, 'Transfer', 'Pending', getdate()),
(13, 1, 12, 3, 50, 1000000, 50000000, 'Transfer', 'Paid', getdate()),
(14, 28, 3, 4, 10, 290000, 2900000, 'Cash', 'Paid', getdate()),
(15, 17, 12, 3, 1, 1000000, 1000000, 'Cash', 'Paid', getdate()),
(16, 40, 22, 8, 1, 900000, 900000, 'Transfer', 'Paid', getdate()),
(17, 32, 12, 3, 50, 1000000, 50000000, 'Transfer', 'Paid', getdate()),
(18, 18, 3, 4, 12, 290000, 3480000, 'Transfer', 'Pending', getdate()),
(19, 22, 12, 4, 1, 290000, 290000, 'Transfer', 'Paid', getdate()),
(20, 3, 12, 9, 2, 200000, 400000, 'Pending', 'Paid', getdate())


where Total > 500000

Create table Welp
(
unit money,
qty money,
Total as unit * qty
)

Insert into Welp
values(20000, 5 )

select * from Welp


select * from Production.Truck
Select * from HumanResources.Customer
Select * from HumanResources.Department
select * from HumanResources.Employee
Select * from Management.SalesDetails