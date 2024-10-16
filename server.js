//this is sooooo annoying i totally fucking agree
//plz work
var express = require('express');
var app = express();

// set the view engine to ejs
app.set('view engine', 'ejs');

// use res.render to load up an ejs view file

// index page
app.get('/', function(req, res) {
  res.render('pages/index.ejs');
});

// about page
app.get('/about', function(req, res) {
  res.render('pages/about.ejs');
});

// sign up page
app.get('/signup', function(req, res) {
    res.render('pages/signup.ejs', {message : "message test "});
  });

app.get('/login', function(req, res) {
    res.render('pages/login.ejs');
});

app.get('/profile', function(req, res) {
  res.render('pages/profile.ejs');
});

app.get('/arrivals', function(req, res) {
  res.render('pages/arrivals.ejs');
});

app.get('/departures', function(req, res) {
  res.render('pages/departures.ejs');
});
app.get('/arrivals_airline', function(req, res) {
  res.render('pages/arrivals_airline.ejs');
});

app.get('/arrivals_date', function(req, res) {
  res.render('pages/arrivals_date.ejs');
});

app.get('/admin_users', function(req, res) {
  res.render('pages/admin_users.ejs');
});

app.get('/admin_bookings', function(req, res) {
  res.render('pages/admin_booking.ejs');
});

app.get('/adminprofile', function(req, res) {
  res.render('pages/adminprofile.ejs');
});

app.post('/loginbutton', function(req, res) {
  res.render('pages/profile.ejs');
});

app.post('/signupbutton', function(req, res) {
  res.render('pages/profile.ejs');
});

app.listen(8080);
console.log('Server is listening on port 8080');