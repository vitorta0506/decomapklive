package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f13798c = Logger.getLogger(t.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private a f13799a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13800b;

    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f13801a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f13802b;

        /* renamed from: c  reason: collision with root package name */
        a f13803c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.f13801a = runnable;
            this.f13802b = executor;
            this.f13803c = aVar;
        }
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f13798c;
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

    public void a(Runnable runnable, Executor executor) {
        com.google.common.base.o.t(runnable, "Runnable was null.");
        com.google.common.base.o.t(executor, "Executor was null.");
        synchronized (this) {
            if (!this.f13800b) {
                this.f13799a = new a(runnable, executor, this.f13799a);
            } else {
                c(runnable, executor);
            }
        }
    }

    public void b() {
        synchronized (this) {
            if (this.f13800b) {
                return;
            }
            this.f13800b = true;
            a aVar = this.f13799a;
            a aVar2 = null;
            this.f13799a = null;
            while (aVar != null) {
                a aVar3 = aVar.f13803c;
                aVar.f13803c = aVar2;
                aVar2 = aVar;
                aVar = aVar3;
            }
            while (aVar2 != null) {
                c(aVar2.f13801a, aVar2.f13802b);
                aVar2 = aVar2.f13803c;
            }
        }
    }
}
