using System;
using System.Collections.Generic;

namespace NCTM.POS.DbService.EFAppDbContextModels;

public partial class TblState
{
    public int StateId { get; set; }

    public string StateName { get; set; } = null!;

    public string? StateCode { get; set; }
}
