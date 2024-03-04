package io.grpc.netty.shaded.io.netty.util.internal.logging;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.helpers.NOPLoggerFactory;
import org.slf4j.spi.LocationAwareLogger;
/* loaded from: classes5.dex */
public class m extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f45109b = new m();

    /* renamed from: c  reason: collision with root package name */
    static final c f45110c = new m(true);

    @Deprecated
    public m() {
    }

    static b j(Logger logger) {
        return logger instanceof LocationAwareLogger ? new f((LocationAwareLogger) logger) : new l(logger);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.logging.c
    public b e(String str) {
        return j(LoggerFactory.getLogger(str));
    }

    m(boolean z10) {
        if (LoggerFactory.getILoggerFactory() instanceof NOPLoggerFactory) {
            throw new NoClassDefFoundError("NOPLoggerFactory not supported");
        }
    }
}
