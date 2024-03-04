package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.slf4j.Logger;
/* loaded from: classes5.dex */
final class l extends AbstractInternalLogger {
    private static final long serialVersionUID = 108038972685130825L;

    /* renamed from: a  reason: collision with root package name */
    private final transient Logger f45108a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Logger logger) {
        super(logger.getName());
        this.f45108a = logger;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str) {
        this.f45108a.debug(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str) {
        this.f45108a.error(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str) {
        this.f45108a.info(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isDebugEnabled() {
        return this.f45108a.isDebugEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isErrorEnabled() {
        return this.f45108a.isErrorEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isInfoEnabled() {
        return this.f45108a.isInfoEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isTraceEnabled() {
        return this.f45108a.isTraceEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public boolean isWarnEnabled() {
        return this.f45108a.isWarnEnabled();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str) {
        this.f45108a.trace(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str) {
        this.f45108a.warn(str);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj) {
        this.f45108a.debug(str, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj) {
        this.f45108a.error(str, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj) {
        this.f45108a.info(str, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj) {
        this.f45108a.trace(str, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj) {
        this.f45108a.warn(str, obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object obj, Object obj2) {
        this.f45108a.debug(str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object obj, Object obj2) {
        this.f45108a.error(str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object obj, Object obj2) {
        this.f45108a.info(str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Object obj, Object obj2) {
        this.f45108a.trace(str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object... objArr) {
        this.f45108a.warn(str, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Object... objArr) {
        this.f45108a.debug(str, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Object... objArr) {
        this.f45108a.error(str, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void info(String str, Object... objArr) {
        this.f45108a.info(str, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void trace(String str, Object... objArr) {
        this.f45108a.trace(str, objArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Object obj, Object obj2) {
        this.f45108a.warn(str, obj, obj2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void debug(String str, Throwable th2) {
        this.f45108a.debug(str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void error(String str, Throwable th2) {
        this.f45108a.error(str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger
    public void info(String str, Throwable th2) {
        this.f45108a.info(str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void trace(String str, Throwable th2) {
        this.f45108a.trace(str, th2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.AbstractInternalLogger, io.grpc.netty.shaded.io.netty.util.internal.logging.b
    public void warn(String str, Throwable th2) {
        this.f45108a.warn(str, th2);
    }
}
