package com.google.common.util.concurrent;

import com.google.common.util.concurrent.a;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
class b0<V> implements d0<V> {

    /* renamed from: b  reason: collision with root package name */
    static final d0<?> f13744b = new b0(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f13745c = Logger.getLogger(b0.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final V f13746a;

    /* loaded from: classes2.dex */
    static final class a<V> extends a.j<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Throwable th2) {
            S(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(V v10) {
        this.f13746a = v10;
    }

    @Override // com.google.common.util.concurrent.d0
    public void addListener(Runnable runnable, Executor executor) {
        com.google.common.base.o.t(runnable, "Runnable was null.");
        com.google.common.base.o.t(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f13745c;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb2.append("RuntimeException while executing runnable ");
            sb2.append(valueOf);
            sb2.append(" with executor ");
            sb2.append(valueOf2);
            logger.log(level, sb2.toString(), (Throwable) e10);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.f13746a;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f13746a);
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 27 + valueOf.length());
        sb2.append(obj);
        sb2.append("[status=SUCCESS, result=[");
        sb2.append(valueOf);
        sb2.append("]]");
        return sb2.toString();
    }

    @Override // java.util.concurrent.Future
    public V get(long j10, TimeUnit timeUnit) throws ExecutionException {
        com.google.common.base.o.s(timeUnit);
        return get();
    }
}
