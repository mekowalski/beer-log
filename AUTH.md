# Step 1: Allow Users to register and login
-How does this impact DB
[x] User model
  -email

-What URLs are needed
Build Registration before
[] GET /users/new -form users#new
[] POST /users -create the user users#create

Login
[] GET /login -form
[] POST /sessions -log the user in