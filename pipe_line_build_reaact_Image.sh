sudo su - root
sudo yum install git -y
sudo curl -fsSL https://rpm.nodesource.com/setup_22.x | bash -
sudo yum install -y nodejs
sudo mkdir /jenkins_home/react_build
sudo cd /jenkins_home/react_build
sudo git init
sudo pull https://github.com/naiduharinadh/React_SocialMedia.git
sudo rm -rf ./build
sudo npm run build
sudo yum install docker -y 
reactimage_version_bydate=$(date +%H%M%S%m%d%Y)
sudo docker build -t harinadh14/react_image:${reactimage_version_bydate} .
echo "N@dh23006" | docker login -u harinadh14 --password-stdin
sudo docker push harinadh14/react_image:${reactimage_version_bydate}
