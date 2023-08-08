using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Samokats.Models;

public partial class SamokatAContext : DbContext
{
    public SamokatAContext()
    {
    }

    public SamokatAContext(DbContextOptions<SamokatAContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Manufacturer> Manufacturers { get; set; }

    public virtual DbSet<ProductType> ProductTypes { get; set; }

    public virtual DbSet<Samokat> Samokats { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(localdb)\\MSSQLLocalDB;Database=SamokatA;Trusted_Connection=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Manufacturer>(entity =>
        {
            entity.HasKey(e => e.IdManu);

            entity.ToTable("Manufacturer");

            entity.Property(e => e.NameManu).HasMaxLength(50);
        });

        modelBuilder.Entity<ProductType>(entity =>
        {
            entity.HasKey(e => e.IdType);

            entity.ToTable("ProductType");

            entity.Property(e => e.TypeName).HasMaxLength(50);
        });

        modelBuilder.Entity<Samokat>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_Samokats");

            entity.ToTable("Samokat");

            entity.Property(e => e.Photo).HasMaxLength(50);

            entity.HasOne(d => d.ManufacturNavigation).WithMany(p => p.Samokats)
                .HasForeignKey(d => d.Manufactur)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Samokats_Manufacturer");

            entity.HasOne(d => d.ProductTypeNavigation).WithMany(p => p.Samokats)
                .HasForeignKey(d => d.ProductType)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Samokats_ProductType");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
