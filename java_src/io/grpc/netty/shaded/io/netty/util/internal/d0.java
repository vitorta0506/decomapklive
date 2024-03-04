package io.grpc.netty.shaded.io.netty.util.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private static final ug.n<ug.j> f45045a = new ug.n<>();

    /* loaded from: classes5.dex */
    static class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Executor f45046a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ug.j f45047b;

        a(Executor executor, ug.j jVar) {
            this.f45046a = executor;
            this.f45047b = jVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f45046a.execute(d0.b(runnable, this.f45047b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ug.j f45048a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f45049b;

        b(ug.j jVar, Runnable runnable) {
            this.f45048a = jVar;
            this.f45049b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            d0.f(this.f45048a);
            try {
                this.f45049b.run();
            } finally {
                d0.f(null);
            }
        }
    }

    /* loaded from: classes5.dex */
    static class c implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ThreadFactory f45050a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ug.j f45051b;

        c(ThreadFactory threadFactory, ug.j jVar) {
            this.f45050a = threadFactory;
            this.f45051b = jVar;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return this.f45050a.newThread(d0.b(runnable, this.f45051b));
        }
    }

    public static Runnable b(Runnable runnable, ug.j jVar) {
        s.h(runnable, "command");
        s.h(jVar, "eventExecutor");
        return new b(jVar, runnable);
    }

    public static Executor c(Executor executor, ug.j jVar) {
        s.h(executor, "executor");
        s.h(jVar, "eventExecutor");
        return new a(executor, jVar);
    }

    public static ThreadFactory d(ThreadFactory threadFactory, ug.j jVar) {
        s.h(threadFactory, "command");
        s.h(jVar, "eventExecutor");
        return new c(threadFactory, jVar);
    }

    public static ug.j e() {
        return f45045a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(ug.j jVar) {
        f45045a.m(jVar);
    }
}
