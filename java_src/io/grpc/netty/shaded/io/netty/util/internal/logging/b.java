package io.grpc.netty.shaded.io.netty.util.internal.logging;
/* loaded from: classes5.dex */
public interface b {
    void debug(String str);

    void debug(String str, Object obj);

    void debug(String str, Object obj, Object obj2);

    void debug(String str, Throwable th2);

    void debug(String str, Object... objArr);

    void error(String str);

    void error(String str, Object obj);

    void error(String str, Object obj, Object obj2);

    void error(String str, Throwable th2);

    void error(String str, Object... objArr);

    void info(String str);

    void info(String str, Object obj);

    void info(String str, Object obj, Object obj2);

    void info(String str, Object... objArr);

    boolean isDebugEnabled();

    boolean isEnabled(InternalLogLevel internalLogLevel);

    boolean isErrorEnabled();

    boolean isInfoEnabled();

    boolean isTraceEnabled();

    boolean isWarnEnabled();

    void log(InternalLogLevel internalLogLevel, String str, Object obj, Object obj2);

    void log(InternalLogLevel internalLogLevel, String str, Object... objArr);

    void trace(String str, Object obj);

    void trace(String str, Object obj, Object obj2);

    void trace(String str, Throwable th2);

    void warn(String str);

    void warn(String str, Object obj);

    void warn(String str, Object obj, Object obj2);

    void warn(String str, Throwable th2);

    void warn(String str, Object... objArr);
}
