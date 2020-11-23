const express=require("express")
const server=express()
// 解决跨域问题
const cors=require("cors")
const md5=require("md5")
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}))
//中间件
const bodyParser=require("body-parser")
server.use(bodyParser.urlencoded({  
    extended:false
    }))
//数据库模块
const mysql=require("mysql")
const pool=mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'yiqing',
    connectionLimit:10
})
server.listen(9999,()=>{
    console.log("服务器在运行")
})
server.get("/shangping",(req,res)=>{
    pool.query("select*from shangping",(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
server.get("/zhuce",(req,res)=>{
    let userName=req.query.username
    let userPwd=md5(req.query.upwd)
    let paypwd=md5(req.query.pwa)
    let usernumber=req.query.number
    let obj={"userName":userName,"userPwd":userPwd,"userPayPwd":paypwd,"img":5,"usernumber":usernumber}
    pool.query("insert into user set?",[obj],(err,result)=>{
        if(err)throw err
        if(result.affectedRows>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })
})
server.get('/title',(req,res)=>{
    pool.query("select*from crop",(err,result)=>{
        if(err) throw err
            res.send(result)
    })
})
server.get('/setimg',(req,res)=>{
    let img=req.query.i
    let name=req.query.name
    console.log(img,name)
    pool.query("update user set img=? where userName=?",[img,name],(err,result)=>{
        if(err) throw err
            res.send(result)
    })
})
server.get('/sctitle',(req,res)=>{
    pool.query("select*from shangcheng",(err,result)=>{
        if(err) throw err
            res.send(result)
    })
})
server.get('/news',(req,res)=>{
    pool.query("select*from news",(err,result)=>{
        if(err) throw err
        console.log(result)
            res.send(result)
    })
})
server.get('/new',(req,res)=>{
    let number=req.query.number
    pool.query("select*from news where ncrop=?",[number],(err,result)=>{
        if(err) throw err
            res.send(result)
    })
})
server.get("/username",(req,res)=>{
    let name=req.query.username
    pool.query("select userId from user where userName=?",[name],(err,result)=>{
        if(err) throw err
        if(result.length==0){
            res.send("1")
        }else{
            res.send("0")
        }
    })
})
server.get("/anew",(req,res)=>{
    let nid=req.query.nid
    console.log(nid)
    pool.query("select*from news where nid=?",[nid],(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})
server.post('/login',(req,res)=>{
    let userName=req.body.username
    let userPwd=md5(req.body.userpassword)
    let sql="select*from user where (userName=?||usernumber=?) && userPwd=?"
    pool.query(sql,[userName,userName,userPwd],(err,result)=>{
        if(err) throw err
        if(result.length==0){
            res.send("0")
        }else if(result.length>0){
            res.send(result)
        }
    })
})



server.get("/first",(req,res)=>{
    let cid=req.query.cid
    let page=req.query.page
    let pagesize=req.query.pagesize
    let star=(page-1)*pagesize
    let pagecount
    if(cid==""){
        let sql=`select*from news limit ${star},${pagesize}`
        pool.query(sql,[],(err,results)=>{
            if(err) throw err
            sql = 'SELECT COUNT(nid) AS count FROM news';
        pool.query(sql,[],(err,result)=>{
            if(err) throw err;
            pagecount=Math.ceil(result[0].count/pagesize);
            res.send({result:results,pagecount:pagecount});
        });
        })
    }
    else{
        let sql=`select*from news where ncrop=? limit ${star},${pagesize}`
        pool.query(sql,[cid],(err,results)=>{
            if(err) throw err
            sql = 'SELECT COUNT(nid) AS count FROM news WHERE ncrop=?';
        pool.query(sql,[cid],(err,result)=>{
            if(err) throw err;
            pagecount=Math.ceil(result[0].count/pagesize);
            res.send({result:results,pagecount:pagecount});
        });
        })
    }
})

server.get("/shengxu",(req,res)=>{
    let sql="select*from shangping order by price*1 asc"
    pool.query(sql,(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})