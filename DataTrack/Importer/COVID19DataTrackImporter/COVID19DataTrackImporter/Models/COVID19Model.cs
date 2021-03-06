﻿

// ------------------------------------------------------------------------------------------------
// This code was generated by EntityFramework Reverse POCO Generator (http://www.reversepoco.com/).
// Created by Simon Hughes (https://about.me/simon.hughes).
//
// Do not make changes directly to this file - edit the template instead.
//
// The following connection settings were used to generate this file:
//     Configuration file:     "COVID19DataTrackImporter\App.config"
//     Connection String Name: "COVID19Context"
//     Connection String:      "data source=DESKTOP-V3KT3GA;initial catalog=COVID19;integrated security=True;"
// ------------------------------------------------------------------------------------------------
// Database Edition        : Developer Edition (64-bit)
// Database Engine Edition : Enterprise
// Database Version        : 13.0.5102.14

// <auto-generated>
// ReSharper disable ConvertPropertyToExpressionBody
// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable EmptyNamespace
// ReSharper disable InconsistentNaming
// ReSharper disable PartialMethodWithSinglePart
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable RedundantNameQualifier
// ReSharper disable RedundantOverridenMember
// ReSharper disable UseNameofExpression
// TargetFrameworkVersion = 4.7
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning


namespace COVID19DataTrackImporter.Models
{
    using System.Linq;

    #region Unit of work

    public interface ICOVID19Context : System.IDisposable
    {
        System.Data.Entity.DbSet<DEV_County> DEV_Counties { get; set; } // COUNTY
        System.Data.Entity.DbSet<DEV_State> DEV_States { get; set; } // STATES
        System.Data.Entity.DbSet<DEV_UsCountyTracking> DEV_UsCountyTrackings { get; set; } // US_COUNTY_TRACKING
        System.Data.Entity.DbSet<DEV_UsStatesTracking> DEV_UsStatesTrackings { get; set; } // US_STATES_TRACKING

        int SaveChanges();
        System.Threading.Tasks.Task<int> SaveChangesAsync();
        System.Threading.Tasks.Task<int> SaveChangesAsync(System.Threading.CancellationToken cancellationToken);
        System.Data.Entity.Infrastructure.DbChangeTracker ChangeTracker { get; }
        System.Data.Entity.Infrastructure.DbContextConfiguration Configuration { get; }
        System.Data.Entity.Database Database { get; }
        System.Data.Entity.Infrastructure.DbEntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class;
        System.Data.Entity.Infrastructure.DbEntityEntry Entry(object entity);
        System.Collections.Generic.IEnumerable<System.Data.Entity.Validation.DbEntityValidationResult> GetValidationErrors();
        System.Data.Entity.DbSet Set(System.Type entityType);
        System.Data.Entity.DbSet<TEntity> Set<TEntity>() where TEntity : class;
        string ToString();
    }

    #endregion

    #region Database context

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class COVID19Context : System.Data.Entity.DbContext, ICOVID19Context
    {
        public System.Data.Entity.DbSet<DEV_County> DEV_Counties { get; set; } // COUNTY
        public System.Data.Entity.DbSet<DEV_State> DEV_States { get; set; } // STATES
        public System.Data.Entity.DbSet<DEV_UsCountyTracking> DEV_UsCountyTrackings { get; set; } // US_COUNTY_TRACKING
        public System.Data.Entity.DbSet<DEV_UsStatesTracking> DEV_UsStatesTrackings { get; set; } // US_STATES_TRACKING

        static COVID19Context()
        {
            System.Data.Entity.Database.SetInitializer<COVID19Context>(null);
        }

        public COVID19Context()
            : base("Name=COVID19Context")
        {
        }

        public COVID19Context(string connectionString)
            : base(connectionString)
        {
        }

        public COVID19Context(string connectionString, System.Data.Entity.Infrastructure.DbCompiledModel model)
            : base(connectionString, model)
        {
        }

        public COVID19Context(System.Data.Common.DbConnection existingConnection, bool contextOwnsConnection)
            : base(existingConnection, contextOwnsConnection)
        {
        }

        public COVID19Context(System.Data.Common.DbConnection existingConnection, System.Data.Entity.Infrastructure.DbCompiledModel model, bool contextOwnsConnection)
            : base(existingConnection, model, contextOwnsConnection)
        {
        }

        public COVID19Context(System.Data.Entity.Core.Objects.ObjectContext objectContext, bool dbContextOwnsObjectContext)
            : base(objectContext, dbContextOwnsObjectContext)
        {
        }

        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }

        public bool IsSqlParameterNull(System.Data.SqlClient.SqlParameter param)
        {
            var sqlValue = param.SqlValue;
            var nullableValue = sqlValue as System.Data.SqlTypes.INullable;
            if (nullableValue != null)
                return nullableValue.IsNull;
            return (sqlValue == null || sqlValue == System.DBNull.Value);
        }

        protected override void OnModelCreating(System.Data.Entity.DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Configurations.Add(new DEV_CountyConfiguration());
            modelBuilder.Configurations.Add(new DEV_StateConfiguration());
            modelBuilder.Configurations.Add(new DEV_UsCountyTrackingConfiguration());
            modelBuilder.Configurations.Add(new DEV_UsStatesTrackingConfiguration());
        }

        public static System.Data.Entity.DbModelBuilder CreateModel(System.Data.Entity.DbModelBuilder modelBuilder, string schema)
        {
            modelBuilder.Configurations.Add(new DEV_CountyConfiguration(schema));
            modelBuilder.Configurations.Add(new DEV_StateConfiguration(schema));
            modelBuilder.Configurations.Add(new DEV_UsCountyTrackingConfiguration(schema));
            modelBuilder.Configurations.Add(new DEV_UsStatesTrackingConfiguration(schema));
            return modelBuilder;
        }
    }
    #endregion

    #region Database context factory

    public class COVID19ContextFactory : System.Data.Entity.Infrastructure.IDbContextFactory<COVID19Context>
    {
        public COVID19Context Create()
        {
            return new COVID19Context();
        }
    }

    #endregion

    #region Fake Database context

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class FakeCOVID19Context : ICOVID19Context
    {
        public System.Data.Entity.DbSet<DEV_County> DEV_Counties { get; set; }
        public System.Data.Entity.DbSet<DEV_State> DEV_States { get; set; }
        public System.Data.Entity.DbSet<DEV_UsCountyTracking> DEV_UsCountyTrackings { get; set; }
        public System.Data.Entity.DbSet<DEV_UsStatesTracking> DEV_UsStatesTrackings { get; set; }

        public FakeCOVID19Context()
        {
            _changeTracker = null;
            _configuration = null;
            _database = null;

            DEV_Counties = new FakeDbSet<DEV_County>("Countieid");
            DEV_States = new FakeDbSet<DEV_State>("Stateid");
            DEV_UsCountyTrackings = new FakeDbSet<DEV_UsCountyTracking>("Recordid");
            DEV_UsStatesTrackings = new FakeDbSet<DEV_UsStatesTracking>("Recordid");
        }

        public int SaveChangesCount { get; private set; }
        public int SaveChanges()
        {
            ++SaveChangesCount;
            return 1;
        }

        public System.Threading.Tasks.Task<int> SaveChangesAsync()
        {
            ++SaveChangesCount;
            return System.Threading.Tasks.Task<int>.Factory.StartNew(() => 1);
        }

        public System.Threading.Tasks.Task<int> SaveChangesAsync(System.Threading.CancellationToken cancellationToken)
        {
            ++SaveChangesCount;
            return System.Threading.Tasks.Task<int>.Factory.StartNew(() => 1, cancellationToken);
        }

        protected virtual void Dispose(bool disposing)
        {
        }

        public void Dispose()
        {
            Dispose(true);
        }

        private System.Data.Entity.Infrastructure.DbChangeTracker _changeTracker;
        public System.Data.Entity.Infrastructure.DbChangeTracker ChangeTracker { get { return _changeTracker; } }
        private System.Data.Entity.Infrastructure.DbContextConfiguration _configuration;
        public System.Data.Entity.Infrastructure.DbContextConfiguration Configuration { get { return _configuration; } }
        private System.Data.Entity.Database _database;
        public System.Data.Entity.Database Database { get { return _database; } }
        public System.Data.Entity.Infrastructure.DbEntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.Infrastructure.DbEntityEntry Entry(object entity)
        {
            throw new System.NotImplementedException();
        }
        public System.Collections.Generic.IEnumerable<System.Data.Entity.Validation.DbEntityValidationResult> GetValidationErrors()
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.DbSet Set(System.Type entityType)
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.DbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            throw new System.NotImplementedException();
        }
        public override string ToString()
        {
            throw new System.NotImplementedException();
        }

    }

    // ************************************************************************
    // Fake DbSet
    // Implementing Find:
    //      The Find method is difficult to implement in a generic fashion. If
    //      you need to test code that makes use of the Find method it is
    //      easiest to create a test DbSet for each of the entity types that
    //      need to support find. You can then write logic to find that
    //      particular type of entity, as shown below:
    //      public class FakeBlogDbSet : FakeDbSet<Blog>
    //      {
    //          public override Blog Find(params object[] keyValues)
    //          {
    //              var id = (int) keyValues.Single();
    //              return this.SingleOrDefault(b => b.BlogId == id);
    //          }
    //      }
    //      Read more about it here: https://msdn.microsoft.com/en-us/data/dn314431.aspx
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class FakeDbSet<TEntity> : System.Data.Entity.DbSet<TEntity>, IQueryable, System.Collections.Generic.IEnumerable<TEntity>, System.Data.Entity.Infrastructure.IDbAsyncEnumerable<TEntity> where TEntity : class
    {
        private readonly System.Reflection.PropertyInfo[] _primaryKeys;
        private readonly System.Collections.ObjectModel.ObservableCollection<TEntity> _data;
        private readonly IQueryable _query;

        public FakeDbSet()
        {
            _data = new System.Collections.ObjectModel.ObservableCollection<TEntity>();
            _query = _data.AsQueryable();
        }

        public FakeDbSet(params string[] primaryKeys)
        {
            _primaryKeys = typeof(TEntity).GetProperties().Where(x => primaryKeys.Contains(x.Name)).ToArray();
            _data = new System.Collections.ObjectModel.ObservableCollection<TEntity>();
            _query = _data.AsQueryable();
        }

        public override TEntity Find(params object[] keyValues)
        {
            if (_primaryKeys == null)
                throw new System.ArgumentException("No primary keys defined");
            if (keyValues.Length != _primaryKeys.Length)
                throw new System.ArgumentException("Incorrect number of keys passed to Find method");

            var keyQuery = this.AsQueryable();
            keyQuery = keyValues
                .Select((t, i) => i)
                .Aggregate(keyQuery,
                    (current, x) =>
                        current.Where(entity => _primaryKeys[x].GetValue(entity, null).Equals(keyValues[x])));

            return keyQuery.SingleOrDefault();
        }

        public override System.Threading.Tasks.Task<TEntity> FindAsync(System.Threading.CancellationToken cancellationToken, params object[] keyValues)
        {
            return System.Threading.Tasks.Task<TEntity>.Factory.StartNew(() => Find(keyValues), cancellationToken);
        }

        public override System.Threading.Tasks.Task<TEntity> FindAsync(params object[] keyValues)
        {
            return System.Threading.Tasks.Task<TEntity>.Factory.StartNew(() => Find(keyValues));
        }

        public override System.Collections.Generic.IEnumerable<TEntity> AddRange(System.Collections.Generic.IEnumerable<TEntity> entities)
        {
            if (entities == null) throw new System.ArgumentNullException("entities");
            var items = entities.ToList();
            foreach (var entity in items)
            {
                _data.Add(entity);
            }
            return items;
        }

        public override TEntity Add(TEntity item)
        {
            if (item == null) throw new System.ArgumentNullException("item");
            _data.Add(item);
            return item;
        }

        public override System.Collections.Generic.IEnumerable<TEntity> RemoveRange(System.Collections.Generic.IEnumerable<TEntity> entities)
        {
            if (entities == null) throw new System.ArgumentNullException("entities");
            var items = entities.ToList();
            foreach (var entity in items)
            {
                _data.Remove(entity);
            }
            return items;
        }

        public override TEntity Remove(TEntity item)
        {
            if (item == null) throw new System.ArgumentNullException("item");
            _data.Remove(item);
            return item;
        }

        public override TEntity Attach(TEntity item)
        {
            if (item == null) throw new System.ArgumentNullException("item");
            _data.Add(item);
            return item;
        }

        public override TEntity Create()
        {
            return System.Activator.CreateInstance<TEntity>();
        }

        public override TDerivedEntity Create<TDerivedEntity>()
        {
            return System.Activator.CreateInstance<TDerivedEntity>();
        }

        public override System.Collections.ObjectModel.ObservableCollection<TEntity> Local
        {
            get { return _data; }
        }

        System.Type IQueryable.ElementType
        {
            get { return _query.ElementType; }
        }

        System.Linq.Expressions.Expression IQueryable.Expression
        {
            get { return _query.Expression; }
        }

        IQueryProvider IQueryable.Provider
        {
            get { return new FakeDbAsyncQueryProvider<TEntity>(_query.Provider); }
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return _data.GetEnumerator();
        }

        System.Collections.Generic.IEnumerator<TEntity> System.Collections.Generic.IEnumerable<TEntity>.GetEnumerator()
        {
            return _data.GetEnumerator();
        }

        System.Data.Entity.Infrastructure.IDbAsyncEnumerator<TEntity> System.Data.Entity.Infrastructure.IDbAsyncEnumerable<TEntity>.GetAsyncEnumerator()
        {
            return new FakeDbAsyncEnumerator<TEntity>(_data.GetEnumerator());
        }
    }

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class FakeDbAsyncQueryProvider<TEntity> : System.Data.Entity.Infrastructure.IDbAsyncQueryProvider
    {
        private readonly IQueryProvider _inner;

        public FakeDbAsyncQueryProvider(IQueryProvider inner)
        {
            _inner = inner;
        }

        public IQueryable CreateQuery(System.Linq.Expressions.Expression expression)
        {
            var m = expression as System.Linq.Expressions.MethodCallExpression;
            if (m != null)
            {
                var resultType = m.Method.ReturnType; // it shoud be IQueryable<T>
                var tElement = resultType.GetGenericArguments()[0];
                var queryType = typeof(FakeDbAsyncEnumerable<>).MakeGenericType(tElement);
                return (IQueryable) System.Activator.CreateInstance(queryType, expression);
            }
            return new FakeDbAsyncEnumerable<TEntity>(expression);
        }

        public IQueryable<TElement> CreateQuery<TElement>(System.Linq.Expressions.Expression expression)
        {
            var queryType = typeof(FakeDbAsyncEnumerable<>).MakeGenericType(typeof(TElement));
            return (IQueryable<TElement>)System.Activator.CreateInstance(queryType, expression);
        }

        public object Execute(System.Linq.Expressions.Expression expression)
        {
            return _inner.Execute(expression);
        }

        public TResult Execute<TResult>(System.Linq.Expressions.Expression expression)
        {
            return _inner.Execute<TResult>(expression);
        }

        public System.Threading.Tasks.Task<object> ExecuteAsync(System.Linq.Expressions.Expression expression, System.Threading.CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute(expression));
        }

        public System.Threading.Tasks.Task<TResult> ExecuteAsync<TResult>(System.Linq.Expressions.Expression expression, System.Threading.CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(Execute<TResult>(expression));
        }
    }

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class FakeDbAsyncEnumerable<T> : EnumerableQuery<T>, System.Data.Entity.Infrastructure.IDbAsyncEnumerable<T>, IQueryable<T>
    {
        public FakeDbAsyncEnumerable(System.Collections.Generic.IEnumerable<T> enumerable)
            : base(enumerable)
        { }

        public FakeDbAsyncEnumerable(System.Linq.Expressions.Expression expression)
            : base(expression)
        { }

        public System.Data.Entity.Infrastructure.IDbAsyncEnumerator<T> GetAsyncEnumerator()
        {
            return new FakeDbAsyncEnumerator<T>(this.AsEnumerable().GetEnumerator());
        }

        System.Data.Entity.Infrastructure.IDbAsyncEnumerator System.Data.Entity.Infrastructure.IDbAsyncEnumerable.GetAsyncEnumerator()
        {
            return GetAsyncEnumerator();
        }

        IQueryProvider IQueryable.Provider
        {
            get { return new FakeDbAsyncQueryProvider<T>(this); }
        }
    }

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class FakeDbAsyncEnumerator<T> : System.Data.Entity.Infrastructure.IDbAsyncEnumerator<T>
    {
        private readonly System.Collections.Generic.IEnumerator<T> _inner;

        public FakeDbAsyncEnumerator(System.Collections.Generic.IEnumerator<T> inner)
        {
            _inner = inner;
        }

        public void Dispose()
        {
            _inner.Dispose();
        }

        public System.Threading.Tasks.Task<bool> MoveNextAsync(System.Threading.CancellationToken cancellationToken)
        {
            return System.Threading.Tasks.Task.FromResult(_inner.MoveNext());
        }

        public T Current
        {
            get { return _inner.Current; }
        }

        object System.Data.Entity.Infrastructure.IDbAsyncEnumerator.Current
        {
            get { return Current; }
        }
    }

    #endregion

    #region POCO classes

    // COUNTY
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_County
    {
        public int Countieid { get; set; } // COUNTIEID (Primary key)
        public int? Stateid { get; set; } // STATEID
        public string StateNm { get; set; } // STATE_NM (length: 100)
        public string CountyNm { get; set; } // COUNTY_NM (length: 100)

        // Foreign keys

        /// <summary>
        /// Parent DEV_State pointed by [COUNTY].([Stateid]) (FK_StatesToCounties)
        /// </summary>
        public virtual DEV_State DEV_State { get; set; } // FK_StatesToCounties
    }

    // STATES
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_State
    {
        public int Stateid { get; set; } // STATEID (Primary key)
        public string StateNm { get; set; } // STATE_NM (length: 100)
        public bool? Isastate { get; set; } // ISASTATE

        // Reverse navigation

        /// <summary>
        /// Child DEV_Counties where [COUNTY].[STATEID] point to this entity (FK_StatesToCounties)
        /// </summary>
        public virtual System.Collections.Generic.ICollection<DEV_County> DEV_Counties { get; set; } // COUNTY.FK_StatesToCounties
        /// <summary>
        /// Child DEV_UsStatesTrackings where [US_STATES_TRACKING].[STATEID] point to this entity (FK_StatesToStates)
        /// </summary>
        public virtual System.Collections.Generic.ICollection<DEV_UsStatesTracking> DEV_UsStatesTrackings { get; set; } // US_STATES_TRACKING.FK_StatesToStates

        public DEV_State()
        {
            DEV_Counties = new System.Collections.Generic.List<DEV_County>();
            DEV_UsStatesTrackings = new System.Collections.Generic.List<DEV_UsStatesTracking>();
        }
    }

    // US_COUNTY_TRACKING
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_UsCountyTracking
    {
        public int Recordid { get; set; } // RECORDID (Primary key)
        public int? Countieid { get; set; } // COUNTIEID
        public int? Stateid { get; set; } // STATEID
        public System.DateTime Date { get; set; } // DATE
        public int Cases { get; set; } // CASES
        public int Deaths { get; set; } // DEATHS
        public int Fips { get; set; } // FIPS
    }

    // US_STATES_TRACKING
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_UsStatesTracking
    {
        public int Recordid { get; set; } // RECORDID (Primary key)
        public int Stateid { get; set; } // STATEID
        public System.DateTime Date { get; set; } // DATE
        public int Cases { get; set; } // CASES
        public int Deaths { get; set; } // DEATHS
        public int Fips { get; set; } // FIPS

        // Foreign keys

        /// <summary>
        /// Parent DEV_State pointed by [US_STATES_TRACKING].([Stateid]) (FK_StatesToStates)
        /// </summary>
        public virtual DEV_State DEV_State { get; set; } // FK_StatesToStates
    }

    #endregion

    #region POCO Configuration

    // COUNTY
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_CountyConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<DEV_County>
    {
        public DEV_CountyConfiguration()
            : this("DEV")
        {
        }

        public DEV_CountyConfiguration(string schema)
        {
            ToTable("COUNTY", schema);
            HasKey(x => x.Countieid);

            Property(x => x.Countieid).HasColumnName(@"COUNTIEID").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.Stateid).HasColumnName(@"STATEID").HasColumnType("int").IsOptional();
            Property(x => x.StateNm).HasColumnName(@"STATE_NM").HasColumnType("varchar").IsOptional().IsUnicode(false).HasMaxLength(100);
            Property(x => x.CountyNm).HasColumnName(@"COUNTY_NM").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(100);

            // Foreign keys
            HasOptional(a => a.DEV_State).WithMany(b => b.DEV_Counties).HasForeignKey(c => c.Stateid); // FK_StatesToCounties
        }
    }

    // STATES
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_StateConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<DEV_State>
    {
        public DEV_StateConfiguration()
            : this("DEV")
        {
        }

        public DEV_StateConfiguration(string schema)
        {
            ToTable("STATES", schema);
            HasKey(x => x.Stateid);

            Property(x => x.Stateid).HasColumnName(@"STATEID").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.StateNm).HasColumnName(@"STATE_NM").HasColumnType("varchar").IsRequired().IsUnicode(false).HasMaxLength(100);
            Property(x => x.Isastate).HasColumnName(@"ISASTATE").HasColumnType("bit").IsOptional();
        }
    }

    // US_COUNTY_TRACKING
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_UsCountyTrackingConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<DEV_UsCountyTracking>
    {
        public DEV_UsCountyTrackingConfiguration()
            : this("DEV")
        {
        }

        public DEV_UsCountyTrackingConfiguration(string schema)
        {
            ToTable("US_COUNTY_TRACKING", schema);
            HasKey(x => x.Recordid);

            Property(x => x.Recordid).HasColumnName(@"RECORDID").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.Countieid).HasColumnName(@"COUNTIEID").HasColumnType("int").IsOptional();
            Property(x => x.Stateid).HasColumnName(@"STATEID").HasColumnType("int").IsOptional();
            Property(x => x.Date).HasColumnName(@"DATE").HasColumnType("datetime2").IsRequired();
            Property(x => x.Cases).HasColumnName(@"CASES").HasColumnType("int").IsRequired();
            Property(x => x.Deaths).HasColumnName(@"DEATHS").HasColumnType("int").IsRequired();
            Property(x => x.Fips).HasColumnName(@"FIPS").HasColumnType("int").IsRequired();
        }
    }

    // US_STATES_TRACKING
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.37.5.0")]
    public class DEV_UsStatesTrackingConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<DEV_UsStatesTracking>
    {
        public DEV_UsStatesTrackingConfiguration()
            : this("DEV")
        {
        }

        public DEV_UsStatesTrackingConfiguration(string schema)
        {
            ToTable("US_STATES_TRACKING", schema);
            HasKey(x => x.Recordid);

            Property(x => x.Recordid).HasColumnName(@"RECORDID").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.Identity);
            Property(x => x.Stateid).HasColumnName(@"STATEID").HasColumnType("int").IsRequired();
            Property(x => x.Date).HasColumnName(@"DATE").HasColumnType("datetime2").IsRequired();
            Property(x => x.Cases).HasColumnName(@"CASES").HasColumnType("int").IsRequired();
            Property(x => x.Deaths).HasColumnName(@"DEATHS").HasColumnType("int").IsRequired();
            Property(x => x.Fips).HasColumnName(@"FIPS").HasColumnType("int").IsRequired();

            // Foreign keys
            HasRequired(a => a.DEV_State).WithMany(b => b.DEV_UsStatesTrackings).HasForeignKey(c => c.Stateid); // FK_StatesToStates
        }
    }

    #endregion

}
// </auto-generated>

