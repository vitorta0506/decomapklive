package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.p;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4249a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f4250b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final Map<e0.b, d> f4251c;

    /* renamed from: d  reason: collision with root package name */
    private final ReferenceQueue<p<?>> f4252d;

    /* renamed from: e  reason: collision with root package name */
    private p.a f4253e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f4254f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private volatile c f4255g;

    /* renamed from: com.bumptech.glide.load.engine.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class ThreadFactoryC0064a implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0065a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Runnable f4256a;

            RunnableC0065a(Runnable runnable) {
                this.f4256a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f4256a.run();
            }
        }

        ThreadFactoryC0064a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0065a(runnable), "glide-active-resources");
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class d extends WeakReference<p<?>> {

        /* renamed from: a  reason: collision with root package name */
        final e0.b f4259a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f4260b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        u<?> f4261c;

        d(@NonNull e0.b bVar, @NonNull p<?> pVar, @NonNull ReferenceQueue<? super p<?>> referenceQueue, boolean z10) {
            super(pVar, referenceQueue);
            this.f4259a = (e0.b) v0.j.d(bVar);
            this.f4261c = (pVar.d() && z10) ? (u) v0.j.d(pVar.c()) : null;
            this.f4260b = pVar.d();
        }

        void a() {
            this.f4261c = null;
            clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(boolean z10) {
        this(z10, Executors.newSingleThreadExecutor(new ThreadFactoryC0064a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(e0.b bVar, p<?> pVar) {
        d put = this.f4251c.put(bVar, new d(bVar, pVar, this.f4252d, this.f4249a));
        if (put != null) {
            put.a();
        }
    }

    void b() {
        while (!this.f4254f) {
            try {
                c((d) this.f4252d.remove());
                c cVar = this.f4255g;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    void c(@NonNull d dVar) {
        u<?> uVar;
        synchronized (this) {
            this.f4251c.remove(dVar.f4259a);
            if (dVar.f4260b && (uVar = dVar.f4261c) != null) {
                this.f4253e.d(dVar.f4259a, new p<>(uVar, true, false, dVar.f4259a, this.f4253e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(e0.b bVar) {
        d remove = this.f4251c.remove(bVar);
        if (remove != null) {
            remove.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public synchronized p<?> e(e0.b bVar) {
        d dVar = this.f4251c.get(bVar);
        if (dVar == null) {
            return null;
        }
        p<?> pVar = dVar.get();
        if (pVar == null) {
            c(dVar);
        }
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(p.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f4253e = aVar;
            }
        }
    }

    @VisibleForTesting
    a(boolean z10, Executor executor) {
        this.f4251c = new HashMap();
        this.f4252d = new ReferenceQueue<>();
        this.f4249a = z10;
        this.f4250b = executor;
        executor.execute(new b());
    }
}
