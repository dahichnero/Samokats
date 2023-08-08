using System;
using System.Collections.Generic;

namespace Samokats.Models;

public partial class Manufacturer
{
    public int IdManu { get; set; }

    public string NameManu { get; set; } = null!;

    public virtual ICollection<Samokat> Samokats { get; set; } = new List<Samokat>();
}
