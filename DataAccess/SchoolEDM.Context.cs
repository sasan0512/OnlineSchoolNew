﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SchoolDBEntities : DbContext
    {
        public SchoolDBEntities()
            : base("name=SchoolDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<AnjomanOlya> AnjomanOlyas { get; set; }
        public DbSet<Father> Fathers { get; set; }
        public DbSet<Field> Fields { get; set; }
        public DbSet<Grade> Grades { get; set; }
        public DbSet<JavabeTamrin> JavabeTamrins { get; set; }
        public DbSet<Karmand> Karmands { get; set; }
        public DbSet<LessonGroup> LessonGroups { get; set; }
        public DbSet<Lesson> Lessons { get; set; }
        public DbSet<Mother> Mothers { get; set; }
        public DbSet<Nomarat> Nomarats { get; set; }
        public DbSet<Ozviat> Ozviats { get; set; }
        public DbSet<PaymentHistory> PaymentHistories { get; set; }
        public DbSet<Presence> Presences { get; set; }
        public DbSet<Salary> Salaries { get; set; }
        public DbSet<Sessoin> Sessoins { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<StuRegister> StuRegisters { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
        public DbSet<Tamarin> Tamarins { get; set; }
        public DbSet<vJavabeTamrin> vJavabeTamrins { get; set; }
        public DbSet<vJTamrin> vJTamrins { get; set; }
        public DbSet<vLessonGroup> vLessonGroups { get; set; }
        public DbSet<vNomarat> vNomarats { get; set; }
        public DbSet<vOzviat> vOzviats { get; set; }
        public DbSet<vPaymentHistory> vPaymentHistories { get; set; }
        public DbSet<vPresence> vPresences { get; set; }
        public DbSet<vReportExam> vReportExams { get; set; }
        public DbSet<vSessoin> vSessoins { get; set; }
        public DbSet<vStudent> vStudents { get; set; }
        public DbSet<vStudentsInfo> vStudentsInfoes { get; set; }
        public DbSet<vTamrin> vTamrins { get; set; }
        public DbSet<Field> Fields { get; set; }
        public DbSet<vbarnameHaftegi> vbarnameHaftegis { get; set; }
        public DbSet<Month> Months { get; set; }
        public DbSet<vAvgPerMonth> vAvgPerMonths { get; set; }
        public DbSet<vAvgStudentPerMonth> vAvgStudentPerMonths { get; set; }
    }
}
