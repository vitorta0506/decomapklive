package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.slf4j.Marker;
import org.slf4j.helpers.FormattingTuple;
import org.slf4j.helpers.MessageFormatter;
import org.slf4j.spi.LocationAwareLogger;
/* loaded from: classes5.dex */
final class f extends AbstractInternalLogger {

    /* renamed from: b  reason: collision with root package name */
    static final String f45099b = f.class.getName();
    private static final long serialVersionUID = -8292030083201538180L;

    /* renamed from: a  reason: collision with root package name */
    private final transient LocationAwareLogger f45100a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(LocationAwareLogger locationAwareLogger) {
        super(locationAwareLogger.getName());
        this.f45100a = locationAwareLogger;
    }

    private void a(int i9, String str) {
        this.f45100a.log((Marker) null, f45099b, i9, str, (Object[]) null, (Throwable) null);
    }

    private void b(int i9, String str, Throwable th2) {
        this.f45100a.log((Marker) null, f45099b, i9, str, (Object[]) null, th2);
    }

    private void c(int i9, FormattingTuple formattingTuple) {
        this.f45100a.log((Marker) null, f45099b, i9, formattingTuple.getMessage(), formattingTuple.getArgArray(), formattingTuple.getThrowable());
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str) {
        if (isDebugEnabled()) {
            a(10, str);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str) {
        if (isErrorEnabled()) {
            a(40, str);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str) {
        if (isInfoEnabled()) {
            a(20, str);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isDebugEnabled() {
        return this.f45100a.isDebugEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isErrorEnabled() {
        return this.f45100a.isErrorEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isInfoEnabled() {
        return this.f45100a.isInfoEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isTraceEnabled() {
        return this.f45100a.isTraceEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isWarnEnabled() {
        return this.f45100a.isWarnEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str) {
        if (isTraceEnabled()) {
            a(0, str);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str) {
        if (isWarnEnabled()) {
            a(30, str);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj) {
        if (isDebugEnabled()) {
            c(10, MessageFormatter.format(str, obj));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj) {
        if (isErrorEnabled()) {
            c(40, MessageFormatter.format(str, obj));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj) {
        if (isInfoEnabled()) {
            c(20, MessageFormatter.format(str, obj));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj) {
        if (isTraceEnabled()) {
            c(0, MessageFormatter.format(str, obj));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj) {
        if (isWarnEnabled()) {
            c(30, MessageFormatter.format(str, obj));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj, Object obj2) {
        if (isDebugEnabled()) {
            c(10, MessageFormatter.format(str, obj, obj2));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj, Object obj2) {
        if (isErrorEnabled()) {
            c(40, MessageFormatter.format(str, obj, obj2));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj, Object obj2) {
        if (isInfoEnabled()) {
            c(20, MessageFormatter.format(str, obj, obj2));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj, Object obj2) {
        if (isTraceEnabled()) {
            c(0, MessageFormatter.format(str, obj, obj2));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object... objArr) {
        if (isWarnEnabled()) {
            c(30, MessageFormatter.arrayFormat(str, objArr));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object... objArr) {
        if (isDebugEnabled()) {
            c(10, MessageFormatter.arrayFormat(str, objArr));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object... objArr) {
        if (isErrorEnabled()) {
            c(40, MessageFormatter.arrayFormat(str, objArr));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object... objArr) {
        if (isInfoEnabled()) {
            c(20, MessageFormatter.arrayFormat(str, objArr));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str, Object... objArr) {
        if (isTraceEnabled()) {
            c(0, MessageFormatter.arrayFormat(str, objArr));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj, Object obj2) {
        if (isWarnEnabled()) {
            c(30, MessageFormatter.format(str, obj, obj2));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Throwable th2) {
        if (isDebugEnabled()) {
            b(10, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Throwable th2) {
        if (isErrorEnabled()) {
            b(40, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void info(String str, Throwable th2) {
        if (isInfoEnabled()) {
            b(20, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Throwable th2) {
        if (isTraceEnabled()) {
            b(0, str, th2);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Throwable th2) {
        if (isWarnEnabled()) {
            b(30, str, th2);
        }
    }
}
