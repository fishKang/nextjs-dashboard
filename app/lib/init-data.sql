CREATE TABLE invoices (
    id SERIAL  PRIMARY KEY,
    customer_id VARCHAR(36) NOT NULL,
    amount DECIMAL(22, 2) NOT NULL,
    status VARCHAR(10) NOT NULL,
    date VARCHAR(10) NOT NULL
);

-- 插入数据到 invoices 表
INSERT INTO invoices (customer_id, amount, status, date) VALUES
('d6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 15795.00, 'pending', '2022-12-06'),
('3958dc9e-712f-4377-85e9-fec4b6a6442a', 20348.00, 'pending', '2022-11-14'),
('CC27C14A-0ACF-4F4A-A6C9-D45682C144B9', 3040.00, 'paid', '2022-10-29'),
('76d65c26-f784-44a2-ac19-586678f7c2f2', 44800.00, 'paid', '2023-09-10'),
('13D07535-C59E-4157-A011-F8D2EF4E0CBB', 34577.00, 'pending', '2023-08-05'),
('3958dc9e-742f-4377-85e9-fec4b6a6442a', 54246.00, 'pending', '2023-07-16'),
('d6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 666.00, 'pending', '2023-06-27'),
('76d65c26-f784-44a2-ac19-586678f7c2f2', 32545.00, 'paid', '2023-06-09'),
('CC27C14A-0ACF-4F4A-A6C9-D45682C144B9', 1250.00, 'paid', '2023-06-17'),
('13D07535-C59E-4157-A011-F8D2EF4E0CBB', 8546.00, 'paid', '2023-06-07'),
('3958dc9e-712f-4377-85e9-fec4b6a6442a', 500.00, 'paid', '2023-08-19'),
('13D07535-C59E-4157-A011-F8D2EF4E0CBB', 8945.00, 'paid', '2023-06-03'),
('3958dc9e-742f-4377-85e9-fec4b6a6442a', 1000.00, 'paid', '2022-06-05');    


-- 创建 revenue 表
CREATE TABLE revenue (
    month VARCHAR(3) NOT NULL,
    revenue DECIMAL(22, 2) NOT NULL,
    PRIMARY KEY (month)
);

-- 插入数据到 revenue 表
INSERT INTO revenue (month, revenue) VALUES
('Jan', 2000.00),
('Feb', 1800.00),
('Mar', 2200.00),
('Apr', 2500.00),
('May', 2300.00),
('Jun', 3200.00),
('Jul', 3500.00),
('Aug', 3700.00),
('Sep', 2500.00),
('Oct', 2800.00),
('Nov', 3000.00),
('Dec', 4800.00);    

CREATE TABLE customers  (
  id varchar(50)  PRIMARY KEY,
  name varchar(255) ,
  email varchar(50) ,
  image_url varchar(255)
  
) ;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO customers VALUES ('13D07535-C59E-4157-A011-F8D2EF4E0CBB', 'Balazs Orban', 'balazs@orban.com', '/customers/balazs-orban.png');
INSERT INTO customers VALUES ('3958dc9e-712f-4377-85e9-fec4b6a6442a', 'Delba de Oliveira', 'delba@oliveira.com', '/customers/delba-de-oliveira.png');
INSERT INTO customers VALUES ('3958dc9e-742f-4377-85e9-fec4b6a6442a', 'Lee Robinson', 'lee@robinson.com', '/customers/lee-robinson.png');
INSERT INTO customers VALUES ('76d65c26-f784-44a2-ac19-586678f7c2f2', 'Michael Novotny', 'michael@novotny.com', '/customers/michael-novotny.png');
INSERT INTO customers VALUES ('CC27C14A-0ACF-4F4A-A6C9-D45682C144B9', 'Amy Burns', 'amy@burns.com', '/customers/amy-burns.png');
INSERT INTO customers VALUES ('d6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 'Evil Rabbit', 'evil@rabbit.com', '/customers/evil-rabbit.png');


CREATE TABLE users  (
  id varchar(50) PRIMARY KEY,
  name varchar(255) ,
  email varchar(50) ,
  password varchar(255) 
  
) ;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('410544b2-4001-4271-9855-fec4b6a6442a', 'User', 'user@nextmail.com', '123456');