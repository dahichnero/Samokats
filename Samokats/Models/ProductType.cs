using System;
using System.Collections.Generic;

namespace Samokats.Models;

public partial class ProductType
{
    public int IdType { get; set; }

    public string TypeName { get; set; } = null!;

    public virtual ICollection<Samokat> Samokats { get; set; } = new List<Samokat>();
}
