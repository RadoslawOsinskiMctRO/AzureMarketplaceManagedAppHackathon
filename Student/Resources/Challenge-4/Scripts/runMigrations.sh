# Delete old migrations
rm -r Migrations
# Recreate migrations
dotnet ef migrations add InitialCreate
# Set connection string to production database
export ConnectionStrings__MyDbConnection='Server=tcp:<serverName>.database.windows.net,1433;Initial Catalog=<dbName>;Persist Security Info=False;User ID=<userName>;Password=<userPassword>;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;'

# Run migrations
dotnet ef database update