// import postgres from 'postgres';

// const sql = postgres(process.env.POSTGRES_URL!, { ssl: 'require' });

// async function listInvoices() {
// 	const data = await sql`
//     SELECT invoices.amount, customers.name
//     FROM invoices
//     JOIN customers ON invoices.customer_id = customers.id
//     WHERE invoices.amount = 666;
//   `;

// 	return data;
// }

// export async function GET() {
//   // return Response.json({
//   //   message:
//   //     'Uncomment this file and remove this line. You can delete this file when you are finished.',
//   // });
//   try {
//   	return Response.json(await listInvoices());
//   } catch (error) {
//   	return Response.json({ error }, { status: 500 });
//   }
// }
import { NextResponse } from 'next/server'
const mysql = require('mysql2/promise')
 
// 创建全局的 MySQL 连接池
const pool = mysql.createPool({
  connectionLimit: 10,
  host: '127.0.0.1', // 服务器地址
  user: 'root',
  password: '123456', // 密码
  database: 'neondb',
})
 
export async function GET(anything: any) {
  try {
    // 从连接池中获取连接
    const connection = await pool.getConnection()
 
    var sql = `
        SELECT invoices.amount, customers.name
        FROM invoices
        JOIN customers ON invoices.customer_id = customers.id
        WHERE invoices.amount = 666;`
    // 执行 MySQL 查询
    const [rows, fields] = await connection.query(sql)
 
    // 释放连接回连接池
    connection.release()
 
    return NextResponse.json({ data: rows }, { status: 200 })
  } catch (error) {
    console.error('Error:', error)
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 })
  }
}