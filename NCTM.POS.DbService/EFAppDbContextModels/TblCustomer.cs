using System;
using System.Collections.Generic;

namespace NCTM.POS.DbService.EFAppDbContextModels;

public partial class TblCustomer
{
    public int CustomerId { get; set; }

    public string? CustomerCode { get; set; }

    public string CustomerName { get; set; } = null!;

    public string MobileNo { get; set; } = null!;

    public DateTime DateOfBirth { get; set; }

    public string Gender { get; set; } = null!;

    public string StateCode { get; set; } = null!;

    public string TownShipCode { get; set; } = null!;
}
