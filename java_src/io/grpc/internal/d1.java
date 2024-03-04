package io.grpc.internal;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class d1 implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f42553b = Logger.getLogger(d1.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f42554a;

    public d1(Runnable runnable) {
        this.f42554a = (Runnable) com.google.common.base.o.t(runnable, "task");
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f42554a.run();
        } catch (Throwable th2) {
            Logger logger = f42553b;
            Level level = Level.SEVERE;
            logger.log(level, "Exception while executing runnable " + this.f42554a, th2);
            com.google.common.base.y.k(th2);
            throw new AssertionError(th2);
        }
    }

    public String toString() {
        return "LogExceptionRunnable(" + this.f42554a + ")";
    }
}
