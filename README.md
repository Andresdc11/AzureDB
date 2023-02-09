# AzureDB
creación de conexión de Azure Devops con Visual Studio Code

despues de crear las clases de modelo hacer la conexion en le arch .csproj
agregar los 2 primeros servicios agregar los Microsoft.EntityFrameworkCore de internet se debe hacer la migracion:

dotnet tool install --global dotnet-ef
dotnet tool update --global dotnet-ef
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet ef migrations add InitialCreate

dotnet publish -c Release -o ./Publish para publicar nuestra app