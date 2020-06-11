using System;

namespace Logger
{
    interface ILogger
    {
        void DebugLog(Exception ex);
        void InfoLog(Exception ex);
        void WarnLog(Exception ex);
        void ErrorLog(Exception ex);
        void FatalLog(Exception ex);
    }
}
