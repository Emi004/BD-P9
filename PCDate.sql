-- PCDate.sql

-- Componente 
INSERT INTO pcComponent VALUES ('C001', 'Procesor Intel i5', 'Intel', 899.99);
INSERT INTO pcComponent VALUES ('C002', 'Placa Video RTX 3060', 'NVIDIA', 2599.00);
INSERT INTO pcComponent VALUES ('C003', 'Memorie RAM 16GB', 'Corsair', 349.90);
INSERT INTO pcComponent VALUES ('C004', 'SSD 1TB', 'Samsung', 499.99);
INSERT INTO pcComponent VALUES ('C005', 'Placa de baza B550', 'ASUS', 699.50);
INSERT INTO pcComponent VALUES ('C006', 'Sursa 650W', 'Seasonic', 329.99);
INSERT INTO pcComponent VALUES ('C007', 'Carcasa Mid Tower', 'NZXT', 429.00);
INSERT INTO pcComponent VALUES ('C008', 'Cooler CPU NH-D15', 'Noctua', 199.99);
INSERT INTO pcComponent VALUES ('C009', 'Procesor AMD Ryzen 5', 'AMD', 999.00);
INSERT INTO pcComponent VALUES ('C010', 'Placa Video RX 6600', 'AMD', 2199.00);
INSERT INTO pcComponent VALUES ('C011', 'Memorie RAM 32GB', 'Kingston', 199.99);
INSERT INTO pcComponent VALUES ('C012', 'SSD 512GB', 'Kingston', 279.00);
INSERT INTO pcComponent VALUES ('C013', 'HDD 2TB', 'Seagate', 329.00);
INSERT INTO pcComponent VALUES ('C014', 'Placa de baza Z690', 'Gigabyte', 1149.00);
INSERT INTO pcComponent VALUES ('C015', 'Sursa 750W Gold', 'Corsair', 479.00);
INSERT INTO pcComponent VALUES ('C016', 'Cooler AIO 240mm', 'CoolerMaster', 599.00);


-- Clients
INSERT INTO pcClient VALUES ('5000101012345', 'Popescu Andrei', 'andrei.popescu5@student.upt.ro');
INSERT INTO pcClient VALUES ('5010202034567', 'Aenoaei Emanuel', 'aenoaeiemi49@gmail.com');
INSERT INTO pcClient VALUES ('5020303045678', 'Capitanescu Julia-Elena', 'julia.capitanescu@student.upt.ro');
INSERT INTO pcClient VALUES ('5030404056789', 'Nicusor Dan', 'presedinte18mai@gmail.com');
INSERT INTO pcClient VALUES ('5040505067890', 'Dante Vergil', 'dmc69420@yahoo.com');

-- Orders
INSERT INTO pcComanda VALUES ('PC001', '5000101012345', TO_DATE('2025-01-15','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC002', '5010202034567', TO_DATE('2025-02-20','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC003', '5020303045678', TO_DATE('2025-03-05','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC004', '5030404056789', TO_DATE('2025-03-18','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC005', '5040505067890', TO_DATE('2025-05-04','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC006', '5000101012345', TO_DATE('2025-04-20','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC007', '5020303045678', TO_DATE('2025-04-25','YYYY-MM-DD'));
INSERT INTO pcComanda VALUES ('PC008', '5010202034567', TO_DATE('2025-05-02','YYYY-MM-DD'));

-- Order-Component List (32 rows)
-- PC001
INSERT INTO pcListaComanda VALUES ('PC001', 'C001', 1);
INSERT INTO pcListaComanda VALUES ('PC001', 'C003', 2);
INSERT INTO pcListaComanda VALUES ('PC001', 'C004', 1);
INSERT INTO pcListaComanda VALUES ('PC001', 'C006', 1);

-- PC002
INSERT INTO pcListaComanda VALUES ('PC002', 'C002', 1);
INSERT INTO pcListaComanda VALUES ('PC002', 'C005', 1);
INSERT INTO pcListaComanda VALUES ('PC002', 'C007', 1);
INSERT INTO pcListaComanda VALUES ('PC002', 'C008', 1);

-- PC003
INSERT INTO pcListaComanda VALUES ('PC003', 'C009', 1);
INSERT INTO pcListaComanda VALUES ('PC003', 'C010', 1);
INSERT INTO pcListaComanda VALUES ('PC003', 'C011', 1);
INSERT INTO pcListaComanda VALUES ('PC003', 'C012', 1);

-- PC004
INSERT INTO pcListaComanda VALUES ('PC004', 'C013', 1);
INSERT INTO pcListaComanda VALUES ('PC004', 'C003', 2);
INSERT INTO pcListaComanda VALUES ('PC004', 'C006', 1);
INSERT INTO pcListaComanda VALUES ('PC004', 'C014', 1);

-- PC005
INSERT INTO pcListaComanda VALUES ('PC005', 'C002', 1);
INSERT INTO pcListaComanda VALUES ('PC005', 'C004', 1);
INSERT INTO pcListaComanda VALUES ('PC005', 'C005', 1);
INSERT INTO pcListaComanda VALUES ('PC005', 'C008', 1);

-- PC006
INSERT INTO pcListaComanda VALUES ('PC006', 'C001', 1);
INSERT INTO pcListaComanda VALUES ('PC006', 'C014', 2);
INSERT INTO pcListaComanda VALUES ('PC006', 'C015', 1);
INSERT INTO pcListaComanda VALUES ('PC006', 'C016', 1);

-- PC007
INSERT INTO pcListaComanda VALUES ('PC007', 'C012', 2);
INSERT INTO pcListaComanda VALUES ('PC007', 'C011', 1);
INSERT INTO pcListaComanda VALUES ('PC007', 'C007', 1);
INSERT INTO pcListaComanda VALUES ('PC007', 'C009', 1);

-- PC008
INSERT INTO pcListaComanda VALUES ('PC008', 'C006', 1);
INSERT INTO pcListaComanda VALUES ('PC008', 'C010', 1);
INSERT INTO pcListaComanda VALUES ('PC008', 'C013', 1);
INSERT INTO pcListaComanda VALUES ('PC008', 'C015', 1);