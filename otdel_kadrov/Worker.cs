//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace otdel_kadrov
{
    using System;
    using System.Collections.Generic;
    
    public partial class Worker
    {
        public int ID { get; set; }
        public string Surname { get; set; }
        public string Name { get; set; }
        public string FullName => Surname + " " + Name;
        public Nullable<int> Post_id { get; set; }
    
        public virtual Post Post { get; set; }
    }
}
