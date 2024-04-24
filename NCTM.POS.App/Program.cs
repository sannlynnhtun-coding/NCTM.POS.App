using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.EntityFrameworkCore;
using NCTM.POS.DbService.EFAppDbContextModels;

var builder = WebApplication.CreateBuilder(args);

#region Custom setting file

var stage = builder.Configuration.GetSection("Stage").Value;
string settingFileName = "customsetting";
if(stage == "Dev")
{
    settingFileName = settingFileName + ".json";
}

#endregion

builder.Configuration.AddJsonFile(settingFileName, true,
    true);

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

#region DbContext

builder.Services.AddDbContext<AppDbContext>(
    opt => opt.UseSqlServer(builder.Configuration.GetSection("CustomSetting:ConnectionStrings:NCTMPOSDbConnection").Value),
    ServiceLifetime.Transient,
    ServiceLifetime.Transient
);

#endregion

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
