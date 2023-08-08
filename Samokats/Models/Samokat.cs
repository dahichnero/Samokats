using System;
using System.Collections.Generic;

namespace Samokats.Models;

public partial class Samokat
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public int ProductType { get; set; }

    public int Manufactur { get; set; }

    public double Price { get; set; }

    public string Photo { get; set; } = null!;

    public int MaxLoad { get; set; }

    public int PowerReserve { get; set; }

    public double MaxSpeed { get; set; }

    public int MaxWatt { get; set; }

    public virtual Manufacturer ManufacturNavigation { get; set; } = null!;

    public virtual ProductType ProductTypeNavigation { get; set; } = null!;
}
