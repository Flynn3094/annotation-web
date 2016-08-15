var express=require('express');
var app=express();
var mysql=require('mysql');
var bodyParser=require('body-parser');

app.use(bodyParser.urlencoded({extended:true}));

app.use(bodyParser.json());

app.set('view engine','ejs');

app.get('/',function(req,res){
	var connection=mysql.createConnection({
		host:'localhost',
		user:'root',
		password:'admin',
		database:'app'
	});
	connection.connect(function(err){
		if (err){
			console.log(err);
		}
	});
	var id=getRandomInt(1,468);
	connection.query('SELECT * FROM sentence WHERE id=?',[id],function(err,rows,fields){
		if (err){
			console.log('Error:',err);
		} else{
			res.render('index',{row:rows[0]});
		}
	});
});

app.get('/submit',function(req,res){
	var connection=mysql.createConnection({
		host:'localhost',
		user:'root',
		password:'admin',
		database:'app'
	});
	connection.connect(function(err){
		if (err){
			console.log(err);
		}
	});
	var submission={
		s_id:req.query.id,
		label:req.query.label
	};
	if (req.query.label != 3) {
		connection.query('INSERT INTO submission SET ?',submission,function(err,result){
			if (err){
				res.status(500).json({error:err});
			} else{
				var next=(Number(req.query.id)+6)%468+1;
				connection.query('SELECT * FROM sentence WHERE id=?',[next],function(err,rows,fields){
					if (err){
						console.log('Error:',err);
					} else{
						res.send({row:rows[0]});
					}
				});
			}
		});
	}
	else {
		var next=(Number(req.query.id)+6)%468+1;
		connection.query('SELECT * FROM sentence WHERE id=?',[next],function(err,rows,fields){
			if (err){
				console.log('Error:',err);
			} else{
				res.send({row:rows[0]});
			}
		});
	}
});

app.post('/register',function(req,res){
	var connection=mysql.createConnection({
		host:'localhost',
		user:'root',
		password:'admin',
		database:'app'
	});
	connection.connect(function(err){
		if (err){
			console.log(err);
		}
	});
	var user={
		name:req.body.name,
		email:req.body.email,
		job:req.body.job,
		major:req.body.major
	};
	connection.query('INSERT INTO user SET ?',user,function(err,result){
		if (err){
			// console.log(err);
			res.status(500).json({error:err});
		}
	});

});

app.use(express.static(__dirname+'/static'));

app.listen(3000,function(){
	console.log('Server listening');
});

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}