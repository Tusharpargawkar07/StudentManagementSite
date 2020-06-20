[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(StudentRegister.App_Start.NinjectWebCommon), "Start")]
[assembly: WebActivatorEx.ApplicationShutdownMethodAttribute(typeof(StudentRegister.App_Start.NinjectWebCommon), "Stop")]

namespace StudentRegister.App_Start
{
    using System;
    using System.Configuration;
    using System.Web;
    using Logger;
    using Microsoft.Web.Infrastructure.DynamicModuleHelper;
    using MyDataLayer;
    using Ninject;
    using Ninject.Web.Common;

    public static class NinjectWebCommon 
    {
        private static readonly Bootstrapper bootstrapper = new Bootstrapper();

        /// <summary>
        /// Starts the application
        /// </summary>
        public static void Start() 
        {
            DynamicModuleUtility.RegisterModule(typeof(OnePerRequestHttpModule));
            DynamicModuleUtility.RegisterModule(typeof(NinjectHttpModule));
            bootstrapper.Initialize(CreateKernel);
        }
        
        /// <summary>
        /// Stops the application.
        /// </summary>
        public static void Stop()
        {
            bootstrapper.ShutDown();
        }
        
        /// <summary>
        /// Creates the kernel that will manage your application.
        /// </summary>
        /// <returns>The created kernel.</returns>
        private static IKernel CreateKernel()
        {
            var kernel = new StandardKernel();
            try
            {
                kernel.Bind<Func<IKernel>>().ToMethod(ctx => () => new Bootstrapper().Kernel);
                kernel.Bind<IHttpModule>().To<HttpApplicationInitializationHttpModule>();

                RegisterServices(kernel);
                return kernel;
            }
            catch
            {
                kernel.Dispose();
                throw;
            }
        }

        /// <summary>
        /// Load your modules or register your services here!
        /// </summary>
        /// <param name="kernel">The kernel.</param>
        private static void RegisterServices(IKernel kernel)
        {
            kernel.Bind<DataLayer>().ToSelf().InSingletonScope().WithConstructorArgument("ConnectionString", ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
            kernel.Bind<ILogger>().To<Log>().InSingletonScope().WithConstructorArgument("type","StudentRegister");
            //kernel.Load("DI Xml/NinjectDIBinding.xml"); //We can do binding By Xml as well
        }        
    }
}
