//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SwAsignacionTribunales.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class EstudiantePicExaman
    {
        public int IdEstudiantePicExamen { get; set; }
        public int IdEstudiante { get; set; }
        public System.DateTime Fecha { get; set; }
        public Nullable<int> IdTesis { get; set; }
        public int IdTipoPicExamen { get; set; }
    
        public virtual Tesi Tesi { get; set; }
        public virtual TipoPicExaman TipoPicExaman { get; set; }
    }
}