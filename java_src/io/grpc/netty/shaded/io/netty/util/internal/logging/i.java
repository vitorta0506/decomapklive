package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
/* loaded from: classes5.dex */
class i extends AbstractInternalLogger {

    /* renamed from: c  reason: collision with root package name */
    static final String f45104c = i.class.getName();
    private static final long serialVersionUID = 2851357342488183058L;

    /* renamed from: a  reason: collision with root package name */
    final transient Logger f45105a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f45106b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Logger logger) {
        super(logger.getName());
        this.f45105a = logger;
        this.f45106b = a();
    }

    private boolean a() {
        try {
            this.f45105a.isTraceEnabled();
            return true;
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str) {
        this.f45105a.log(f45104c, Level.DEBUG, str, (Throwable) null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str) {
        this.f45105a.log(f45104c, Level.ERROR, str, (Throwable) null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str) {
        this.f45105a.log(f45104c, Level.INFO, str, (Throwable) null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isDebugEnabled() {
        return this.f45105a.isDebugEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isErrorEnabled() {
        return this.f45105a.isEnabledFor(Level.ERROR);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isInfoEnabled() {
        return this.f45105a.isInfoEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isTraceEnabled() {
        if (this.f45106b) {
            return this.f45105a.isTraceEnabled();
        }
        return this.f45105a.isDebugEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isWarnEnabled() {
        return this.f45105a.isEnabledFor(Level.WARN);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str) {
        this.f45105a.log(f45104c, this.f45106b ? Level.TRACE : Level.DEBUG, str, (Throwable) null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str) {
        this.f45105a.log(f45104c, Level.WARN, str, (Throwable) null);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj) {
        if (this.f45105a.isDebugEnabled()) {
            a h10 = k.h(str, obj);
            this.f45105a.log(f45104c, Level.DEBUG, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj) {
        if (this.f45105a.isEnabledFor(Level.ERROR)) {
            a h10 = k.h(str, obj);
            this.f45105a.log(f45104c, Level.ERROR, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj) {
        if (this.f45105a.isInfoEnabled()) {
            a h10 = k.h(str, obj);
            this.f45105a.log(f45104c, Level.INFO, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj) {
        if (isTraceEnabled()) {
            a h10 = k.h(str, obj);
            this.f45105a.log(f45104c, this.f45106b ? Level.TRACE : Level.DEBUG, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj) {
        if (this.f45105a.isEnabledFor(Level.WARN)) {
            a h10 = k.h(str, obj);
            this.f45105a.log(f45104c, Level.WARN, h10.a(), h10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj, Object obj2) {
        if (this.f45105a.isDebugEnabled()) {
            a i9 = k.i(str, obj, obj2);
            this.f45105a.log(f45104c, Level.DEBUG, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj, Object obj2) {
        if (this.f45105a.isEnabledFor(Level.ERROR)) {
            a i9 = k.i(str, obj, obj2);
            this.f45105a.log(f45104c, Level.ERROR, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj, Object obj2) {
        if (this.f45105a.isInfoEnabled()) {
            a i9 = k.i(str, obj, obj2);
            this.f45105a.log(f45104c, Level.INFO, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj, Object obj2) {
        if (this.f45105a.isEnabledFor(Level.WARN)) {
            a i9 = k.i(str, obj, obj2);
            this.f45105a.log(f45104c, Level.WARN, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj, Object obj2) {
        if (isTraceEnabled()) {
            a i9 = k.i(str, obj, obj2);
            this.f45105a.log(f45104c, this.f45106b ? Level.TRACE : Level.DEBUG, i9.a(), i9.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object... objArr) {
        if (this.f45105a.isDebugEnabled()) {
            a a10 = k.a(str, objArr);
            this.f45105a.log(f45104c, Level.DEBUG, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object... objArr) {
        if (this.f45105a.isEnabledFor(Level.ERROR)) {
            a a10 = k.a(str, objArr);
            this.f45105a.log(f45104c, Level.ERROR, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object... objArr) {
        if (this.f45105a.isInfoEnabled()) {
            a a10 = k.a(str, objArr);
            this.f45105a.log(f45104c, Level.INFO, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object... objArr) {
        if (this.f45105a.isEnabledFor(Level.WARN)) {
            a a10 = k.a(str, objArr);
            this.f45105a.log(f45104c, Level.WARN, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Throwable th2) {
        this.f45105a.log(f45104c, Level.DEBUG, str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Throwable th2) {
        this.f45105a.log(f45104c, Level.ERROR, str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void info(String str, Throwable th2) {
        this.f45105a.log(f45104c, Level.INFO, str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Throwable th2) {
        this.f45105a.log(f45104c, Level.WARN, str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str, Object... objArr) {
        if (isTraceEnabled()) {
            a a10 = k.a(str, objArr);
            this.f45105a.log(f45104c, this.f45106b ? Level.TRACE : Level.DEBUG, a10.a(), a10.b());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Throwable th2) {
        this.f45105a.log(f45104c, this.f45106b ? Level.TRACE : Level.DEBUG, str, th2);
    }
}
