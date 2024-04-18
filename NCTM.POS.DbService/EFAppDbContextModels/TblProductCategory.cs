using System;
using System.Collections.Generic;

namespace NCTM.POS.DbService.EFAppDbContextModels;

public partial class TblProductCategory
{
    public int ProductCategoryId { get; set; }

    public string? ProductCategoryCode { get; set; }

    public string ProductCategoryName { get; set; } = null!;
}
