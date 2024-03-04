package io.grpc.netty.shaded.io.netty.util.internal.logging;

import java.security.AccessController;
import java.security.PrivilegedAction;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.spi.ExtendedLogger;
import org.apache.logging.log4j.spi.ExtendedLoggerWrapper;
/* loaded from: classes5.dex */
class g extends ExtendedLoggerWrapper implements io.grpc.netty.shaded.io.netty.util.internal.logging.b {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f45101a = ((Boolean) AccessController.doPrivileged(new a())).booleanValue();

    /* loaded from: classes5.dex */
    static class a implements PrivilegedAction<Boolean> {
        a() {
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Boolean run() {
            try {
                Logger.class.getMethod("debug", String.class, Object.class);
                return Boolean.FALSE;
            } catch (NoSuchMethodException unused) {
                return Boolean.TRUE;
            } catch (SecurityException unused2) {
                return Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45102a;

        static {
            int[] iArr = new int[InternalLogLevel.values().length];
            f45102a = iArr;
            try {
                iArr[InternalLogLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45102a[InternalLogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45102a[InternalLogLevel.WARN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45102a[InternalLogLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45102a[InternalLogLevel.TRACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Logger logger) {
        super((ExtendedLogger) logger, logger.getName(), logger.getMessageFactory());
        if (f45101a) {
            throw new UnsupportedOperationException("Log4J2 version mismatch");
        }
    }

    private static Level a(InternalLogLevel internalLogLevel) {
        int i9 = b.f45102a[internalLogLevel.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5) {
                            return Level.TRACE;
                        }
                        throw new Error();
                    }
                    return Level.ERROR;
                }
                return Level.WARN;
            }
            return Level.DEBUG;
        }
        return Level.INFO;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isEnabled(InternalLogLevel internalLogLevel) {
        return isEnabled(a(internalLogLevel));
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void log(InternalLogLevel internalLogLevel, String str, Object obj, Object obj2) {
        log(a(internalLogLevel), str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void log(InternalLogLevel internalLogLevel, String str, Object... objArr) {
        log(a(internalLogLevel), str, objArr);
    }
}
