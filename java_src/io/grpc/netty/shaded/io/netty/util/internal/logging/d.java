package io.grpc.netty.shaded.io.netty.util.internal.logging;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
class d extends AbstractInternalLogger {

    /* renamed from: b  reason: collision with root package name */
    static final String f45095b = d.class.getName();

    /* renamed from: c  reason: collision with root package name */
    static final String f45096c = AbstractInternalLogger.class.getName();
    private static final long serialVersionUID = -1767272577989225979L;

    /* renamed from: a  reason: collision with root package name */
    final transient Logger f45097a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Logger logger) {
        super(logger.getName());
        this.f45097a = logger;
    }

    private static void a(String str, LogRecord logRecord) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int i9 = 0;
        while (true) {
            if (i9 >= stackTrace.length) {
                i9 = -1;
                break;
            }
            String className = stackTrace[i9].getClassName();
            if (className.equals(str) || className.equals(f45096c)) {
                break;
            }
            i9++;
        }
        while (true) {
            i9++;
            if (i9 >= stackTrace.length) {
                i9 = -1;
                break;
            }
            String className2 = stackTrace[i9].getClassName();
            if (!className2.equals(str) && !className2.equals(f45096c)) {
                break;
            }
        }
        if (i9 != -1) {
            StackTraceElement stackTraceElement = stackTrace[i9];
            logRecord.setSourceClassName(stackTraceElement.getClassName());
            logRecord.setSourceMethodName(stackTraceElement.getMethodName());
        }
    }

    private void b(String str, Level level, String str2, Throwable th2) {
        LogRecord logRecord = new LogRecord(level, str2);
        logRecord.setLoggerName(name());
        logRecord.setThrown(th2);
        a(str, logRecord);
        this.f45097a.log(logRecord);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str) {
        Logger logger = this.f45097a;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, null);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str) {
        Logger logger = this.f45097a;
        Level level = Level.SEVERE;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, null);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str) {
        if (this.f45097a.isLoggable(Level.INFO)) {
            b(f45095b, Level.INFO, str, null);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isDebugEnabled() {
        return this.f45097a.isLoggable(Level.FINE);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isErrorEnabled() {
        return this.f45097a.isLoggable(Level.SEVERE);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isInfoEnabled() {
        return this.f45097a.isLoggable(Level.INFO);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isTraceEnabled() {
        return this.f45097a.isLoggable(Level.FINEST);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isWarnEnabled() {
        return this.f45097a.isLoggable(Level.WARNING);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str) {
        Logger logger = this.f45097a;
        Level level = Level.FINEST;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, null);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str) {
        Logger logger = this.f45097a;
        Level level = Level.WARNING;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, null);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj) {
        Logger logger = this.f45097a;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            a h10 = k.h(str, obj);
            b(f45095b, level, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj) {
        Logger logger = this.f45097a;
        Level level = Level.SEVERE;
        if (logger.isLoggable(level)) {
            a h10 = k.h(str, obj);
            b(f45095b, level, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj) {
        if (this.f45097a.isLoggable(Level.INFO)) {
            a h10 = k.h(str, obj);
            b(f45095b, Level.INFO, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj) {
        Logger logger = this.f45097a;
        Level level = Level.FINEST;
        if (logger.isLoggable(level)) {
            a h10 = k.h(str, obj);
            b(f45095b, level, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj) {
        Logger logger = this.f45097a;
        Level level = Level.WARNING;
        if (logger.isLoggable(level)) {
            a h10 = k.h(str, obj);
            b(f45095b, level, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj, Object obj2) {
        Logger logger = this.f45097a;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            a i9 = k.i(str, obj, obj2);
            b(f45095b, level, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj, Object obj2) {
        Logger logger = this.f45097a;
        Level level = Level.SEVERE;
        if (logger.isLoggable(level)) {
            a i9 = k.i(str, obj, obj2);
            b(f45095b, level, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj, Object obj2) {
        if (this.f45097a.isLoggable(Level.INFO)) {
            a i9 = k.i(str, obj, obj2);
            b(f45095b, Level.INFO, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj, Object obj2) {
        Logger logger = this.f45097a;
        Level level = Level.FINEST;
        if (logger.isLoggable(level)) {
            a i9 = k.i(str, obj, obj2);
            b(f45095b, level, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj, Object obj2) {
        Logger logger = this.f45097a;
        Level level = Level.WARNING;
        if (logger.isLoggable(level)) {
            a i9 = k.i(str, obj, obj2);
            b(f45095b, level, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object... objArr) {
        Logger logger = this.f45097a;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            a a10 = k.a(str, objArr);
            b(f45095b, level, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object... objArr) {
        Logger logger = this.f45097a;
        Level level = Level.SEVERE;
        if (logger.isLoggable(level)) {
            a a10 = k.a(str, objArr);
            b(f45095b, level, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object... objArr) {
        if (this.f45097a.isLoggable(Level.INFO)) {
            a a10 = k.a(str, objArr);
            b(f45095b, Level.INFO, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str, Object... objArr) {
        Logger logger = this.f45097a;
        Level level = Level.FINEST;
        if (logger.isLoggable(level)) {
            a a10 = k.a(str, objArr);
            b(f45095b, level, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object... objArr) {
        Logger logger = this.f45097a;
        Level level = Level.WARNING;
        if (logger.isLoggable(level)) {
            a a10 = k.a(str, objArr);
            b(f45095b, level, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Throwable th2) {
        Logger logger = this.f45097a;
        Level level = Level.FINE;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Throwable th2) {
        Logger logger = this.f45097a;
        Level level = Level.SEVERE;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void info(String str, Throwable th2) {
        if (this.f45097a.isLoggable(Level.INFO)) {
            b(f45095b, Level.INFO, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Throwable th2) {
        Logger logger = this.f45097a;
        Level level = Level.FINEST;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Throwable th2) {
        Logger logger = this.f45097a;
        Level level = Level.WARNING;
        if (logger.isLoggable(level)) {
            b(f45095b, level, str, th2);
        }
    }
}
