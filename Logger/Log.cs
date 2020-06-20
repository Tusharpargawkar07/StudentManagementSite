using log4net;
using log4net.Config;
using System;


namespace Logger
{
    public class Log : ILogger
    {
        private readonly ILog log; 
        public Log(string type)
        {
            log = LogManager.GetLogger(type);
            XmlConfigurator.Configure();
        }
        public void DebugLog(Exception ex)
        {
            log.Debug( ex + "\n");
        }

        public void ErrorLog(Exception ex)
        {
            log.Error( ex + "\n");
        }

        public void FatalLog(Exception ex)
        {
            log.Fatal( ex + "\n");
        }

        public void InfoLog(Exception ex)
        {
            log.Info( ex + "\n");
        }

        public void WarnLog(Exception ex)
        {
            log.Warn( ex + "\n");
        }
    }
}
