using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace NCTM.POS.DbService.EFAppDbContextModels;

public partial class AppDbContext : DbContext
{
    public AppDbContext()
    {
    }

    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TblCustomer> TblCustomers { get; set; }

    public virtual DbSet<TblProduct> TblProducts { get; set; }

    public virtual DbSet<TblProductCategory> TblProductCategories { get; set; }

    public virtual DbSet<TblShop> TblShops { get; set; }

    public virtual DbSet<TblStaff> TblStaffs { get; set; }

    public virtual DbSet<TblState> TblStates { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<TblCustomer>(entity =>
        {
            entity.HasKey(e => e.CustomerId);

            entity.ToTable("Tbl_Customer");

            entity.Property(e => e.CustomerCode)
                .HasMaxLength(6)
                .IsUnicode(false)
                .HasComputedColumnSql("('CUS'+right('000'+CONVERT([varchar](3),[CustomerId]),(3)))", false);
            entity.Property(e => e.CustomerName)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DateOfBirth).HasColumnType("date");
            entity.Property(e => e.Gender)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.MobileNo)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.StateCode)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.TownShipCode)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TblProduct>(entity =>
        {
            entity.HasKey(e => e.ProductId);

            entity.ToTable("Tbl_Product");

            entity.Property(e => e.Price).HasColumnType("decimal(18, 0)");
            entity.Property(e => e.ProductCategoryCode)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.ProductCode)
                .HasMaxLength(7)
                .IsUnicode(false)
                .HasComputedColumnSql("('PROD'+right('000'+CONVERT([varchar](3),[ProductId]),(3)))", false);
            entity.Property(e => e.ProductName)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TblProductCategory>(entity =>
        {
            entity.HasKey(e => e.ProductCategoryId);

            entity.ToTable("Tbl_ProductCategory");

            entity.Property(e => e.ProductCategoryCode)
                .HasMaxLength(7)
                .IsUnicode(false)
                .HasComputedColumnSql("('CATS'+right('000'+CONVERT([varchar](3),[ProductCategoryId]),(3)))", false);
            entity.Property(e => e.ProductCategoryName)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TblShop>(entity =>
        {
            entity.HasKey(e => e.ShopId);

            entity.ToTable("Tbl_Shop");

            entity.Property(e => e.Address)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.MobileNo)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.ShopCode)
                .HasMaxLength(5)
                .IsUnicode(false)
                .HasComputedColumnSql("('SH'+right('000'+CONVERT([varchar](3),[ShopId]),(3)))", false);
            entity.Property(e => e.ShopName)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TblStaff>(entity =>
        {
            entity.HasKey(e => e.StaffId);

            entity.ToTable("Tbl_Staff");

            entity.Property(e => e.Address)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DateOfBirth).HasColumnType("date");
            entity.Property(e => e.Gender)
                .HasMaxLength(20)
                .IsUnicode(false);
            entity.Property(e => e.MobileNo)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Position)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.StaffCode)
                .HasMaxLength(4)
                .IsUnicode(false)
                .HasComputedColumnSql("('S'+right('000'+CONVERT([varchar](3),[StaffId]),(3)))", false);
            entity.Property(e => e.StaffName)
                .HasMaxLength(100)
                .IsUnicode(false);
        });

        modelBuilder.Entity<TblState>(entity =>
        {
            entity.HasKey(e => e.StateId);

            entity.ToTable("Tbl_State");

            entity.Property(e => e.StateCode)
                .HasMaxLength(6)
                .IsUnicode(false)
                .HasComputedColumnSql("('STD'+right('000'+CONVERT([varchar](3),[StateId]),(3)))", false);
            entity.Property(e => e.StateName)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
