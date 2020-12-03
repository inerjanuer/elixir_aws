# create user

 I access IAM \
 create a new user \
 We save access id, access id, password \
 After I create role \
 The user's access id is assigned \
 User access policies are assigned \
 AmazonRDSFullAccess \
 AmazonEC2FullAccess \
 EC2InstanceConnect \
 We assign tags to the finaltest role. \
 We assign a name to the role assigned to the user rolefinaltest. 

###### config  phoenix amazon linux #######

# update server amazon linux
sudo yum update \
sudo amazon-linux-extras install epel

# app deps
sudo yum install git

# erlang deps
sudo yum groupinstall "Development Tools" \
sudo yum install ncurses-devel openssl-devel 

# erlang
wget http://www.erlang.org/download/otp_src_23.1.tar.gz \
tar -zxvf otp_src_23.1.tar.gz \
rm otp_src_23.1.tar.gz \
cd otp_src_23.1/ \
./configure \
make \
sudo make install 

cd .. 

# elixir
wget https://github.com/elixir-lang/elixir/archive/v1.11.2.zip \
unzip v1.11.2.zip \
cd elixir-1.11.2/ \
make \
sudo make install 

echo "PATH=\$PATH:/home/ec2-user/elixir-1.4.2/bin" >> ~/.bashrc \
cd .. 


# phoenix deps
sudo yum install postgresql \
mix local.hex 


# listen on port 80 as well
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 4000

# install node js
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.37.2/install.sh | bash \
nvm install node \
npm -g install brunch 


mix archive.install hex phx_new 1.5.7 \
mix phx.new [namefinal] \
cd [namefinal] \
cd config 

# config database 
vi devp.exs 

###  username: "user_db",
###  password: "password_db",
### database: "name_db",
###  hostname: "endpoint_db_aws",

cd .. \
cd assets/ \
npm install \
cd .. \
mix ecto.create \
mix -S phx.server 


## commentary ##
# After the instance is stopped, the following command must be executed again
# for the application to run from port 80.

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 4000

# after the command is executed again, inside the folder where it was created
# the project.

mix phx.server
