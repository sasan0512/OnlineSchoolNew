//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Presence
    {
        public int ID { get; set; }
        public Nullable<int> OzviatID { get; set; }
        public string Date { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<bool> isMovajjah { get; set; }
        public string Description { get; set; }
    
        public virtual Ozviat Ozviat { get; set; }
    }
}