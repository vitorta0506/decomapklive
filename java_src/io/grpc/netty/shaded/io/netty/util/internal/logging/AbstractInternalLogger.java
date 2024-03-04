package io.grpc.netty.shaded.io.netty.util.internal.logging;

import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.ObjectStreamException;
import java.io.Serializable;
/* loaded from: classes5.dex */
public abstract class AbstractInternalLogger implements b, Serializable {
    static final String EXCEPTION_MESSAGE = "Unexpected exception:";
    private static final long serialVersionUID = -6382972526573193470L;
    private final String name;

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f45091a;

        static {
            int[] iArr = new int[InternalLogLevel.values().length];
            f45091a = iArr;
            try {
                iArr[InternalLogLevel.TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f45091a[InternalLogLevel.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f45091a[InternalLogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f45091a[InternalLogLevel.WARN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f45091a[InternalLogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractInternalLogger(String str) {
        this.name = (String) s.h(str, "name");
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void debug(String str);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void debug(String str, Object obj);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void debug(String str, Object obj, Object obj2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void debug(String str, Throwable th2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void debug(String str, Object... objArr);

    public void debug(Throwable th2) {
        debug(EXCEPTION_MESSAGE, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void error(String str);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void error(String str, Object obj);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void error(String str, Object obj, Object obj2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void error(String str, Throwable th2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void error(String str, Object... objArr);

    public void error(Throwable th2) {
        error(EXCEPTION_MESSAGE, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void info(String str);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void info(String str, Object obj);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void info(String str, Object obj, Object obj2);

    public abstract /* synthetic */ void info(String str, Throwable th2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void info(String str, Object... objArr);

    public void info(Throwable th2) {
        info(EXCEPTION_MESSAGE, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ boolean isDebugEnabled();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isEnabled(InternalLogLevel internalLogLevel) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5) {
                            return isErrorEnabled();
                        }
                        throw new Error();
                    }
                    return isWarnEnabled();
                }
                return isInfoEnabled();
            }
            return isDebugEnabled();
        }
        return isTraceEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ boolean isErrorEnabled();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ boolean isInfoEnabled();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ boolean isTraceEnabled();

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ boolean isWarnEnabled();

    public void log(InternalLogLevel internalLogLevel, String str, Throwable th2) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(str, th2);
        } else if (i9 == 2) {
            debug(str, th2);
        } else if (i9 == 3) {
            info(str, th2);
        } else if (i9 == 4) {
            warn(str, th2);
        } else if (i9 == 5) {
            error(str, th2);
        } else {
            throw new Error();
        }
    }

    public String name() {
        return this.name;
    }

    protected Object readResolve() throws ObjectStreamException {
        return c.c(name());
    }

    public String toString() {
        return b0.m(this) + '(' + name() + ')';
    }

    public abstract /* synthetic */ void trace(String str);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void trace(String str, Object obj);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void trace(String str, Object obj, Object obj2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void trace(String str, Throwable th2);

    public abstract /* synthetic */ void trace(String str, Object... objArr);

    public void trace(Throwable th2) {
        trace(EXCEPTION_MESSAGE, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void warn(String str);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void warn(String str, Object obj);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void warn(String str, Object obj, Object obj2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void warn(String str, Throwable th2);

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public abstract /* synthetic */ void warn(String str, Object... objArr);

    public void warn(Throwable th2) {
        warn(EXCEPTION_MESSAGE, th2);
    }

    public void log(InternalLogLevel internalLogLevel, Throwable th2) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(th2);
        } else if (i9 == 2) {
            debug(th2);
        } else if (i9 == 3) {
            info(th2);
        } else if (i9 == 4) {
            warn(th2);
        } else if (i9 == 5) {
            error(th2);
        } else {
            throw new Error();
        }
    }

    public void log(InternalLogLevel internalLogLevel, String str) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(str);
        } else if (i9 == 2) {
            debug(str);
        } else if (i9 == 3) {
            info(str);
        } else if (i9 == 4) {
            warn(str);
        } else if (i9 == 5) {
            error(str);
        } else {
            throw new Error();
        }
    }

    public void log(InternalLogLevel internalLogLevel, String str, Object obj) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(str, obj);
        } else if (i9 == 2) {
            debug(str, obj);
        } else if (i9 == 3) {
            info(str, obj);
        } else if (i9 == 4) {
            warn(str, obj);
        } else if (i9 == 5) {
            error(str, obj);
        } else {
            throw new Error();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void log(InternalLogLevel internalLogLevel, String str, Object obj, Object obj2) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(str, obj, obj2);
        } else if (i9 == 2) {
            debug(str, obj, obj2);
        } else if (i9 == 3) {
            info(str, obj, obj2);
        } else if (i9 == 4) {
            warn(str, obj, obj2);
        } else if (i9 == 5) {
            error(str, obj, obj2);
        } else {
            throw new Error();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void log(InternalLogLevel internalLogLevel, String str, Object... objArr) {
        int i9 = a.f45091a[internalLogLevel.ordinal()];
        if (i9 == 1) {
            trace(str, objArr);
        } else if (i9 == 2) {
            debug(str, objArr);
        } else if (i9 == 3) {
            info(str, objArr);
        } else if (i9 == 4) {
            warn(str, objArr);
        } else if (i9 == 5) {
            error(str, objArr);
        } else {
            throw new Error();
        }
    }
}
