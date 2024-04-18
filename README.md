Main Db
```NCTM_POS
dotnet ef dbcontext scaffold "Server=.;Database=NCTM_POS;User Id=sa;Password=sasa@123;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -o EFAppDbContextModels -c AppDbContext -f
```