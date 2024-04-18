using System;
using System.Collections.Generic;

namespace NCTM.POS.DbService.EFAppDbContextModels;

public partial class TblProduct
{
    public int ProductId { get; set; }

    public string? ProductCode { get; set; }

    public string? ProductName { get; set; }

    public decimal? Price { get; set; }

    public string ProductCategoryCode { get; set; } = null!;
}
