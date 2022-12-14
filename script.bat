echo "Criando as imagens..."

docker build -t emersonwlw/projeto-backend-dio:1.0 backend/.

docker build -t emersonwlw/projeto-database-dio:1.0 database/.

echo "Realizando o push das imagens..."

docker push emersonwlw/projeto-backend-dio:1.0 

docker push emersonwlw/projeto-database-dio:1.0

echo "Criando serviços no cluster Kubernetes..."

kubectl apply -f ./services.yml

echo "Realizando o deploy..."

kubectl apply -f ./deployment.yml


