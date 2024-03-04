package io.grpc.internal;

import java.util.IdentityHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class f2 {

    /* renamed from: d  reason: collision with root package name */
    private static final f2 f42591d = new f2(new a());

    /* renamed from: a  reason: collision with root package name */
    private final IdentityHashMap<d<?>, c> f42592a = new IdentityHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final e f42593b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledExecutorService f42594c;

    /* loaded from: classes5.dex */
    class a implements e {
        a() {
        }

        @Override // io.grpc.internal.f2.e
        public ScheduledExecutorService a() {
            return Executors.newSingleThreadScheduledExecutor(GrpcUtil.k("grpc-shared-destroyer-%d", true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f42595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f42596b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f42597c;

        b(c cVar, d dVar, Object obj) {
            this.f42595a = cVar;
            this.f42596b = dVar;
            this.f42597c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (f2.this) {
                if (this.f42595a.f42600b == 0) {
                    this.f42596b.b(this.f42597c);
                    f2.this.f42592a.remove(this.f42596b);
                    if (f2.this.f42592a.isEmpty()) {
                        f2.this.f42594c.shutdown();
                        f2.this.f42594c = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final Object f42599a;

        /* renamed from: b  reason: collision with root package name */
        int f42600b;

        /* renamed from: c  reason: collision with root package name */
        ScheduledFuture<?> f42601c;

        c(Object obj) {
            this.f42599a = obj;
        }
    }

    /* loaded from: classes5.dex */
    public interface d<T> {
        T a();

        void b(T t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface e {
        ScheduledExecutorService a();
    }

    f2(e eVar) {
        this.f42593b = eVar;
    }

    public static <T> T d(d<T> dVar) {
        return (T) f42591d.e(dVar);
    }

    public static <T> T f(d<T> dVar, T t10) {
        return (T) f42591d.g(dVar, t10);
    }

    synchronized <T> T e(d<T> dVar) {
        c cVar;
        cVar = this.f42592a.get(dVar);
        if (cVar == null) {
            cVar = new c(dVar.a());
            this.f42592a.put(dVar, cVar);
        }
        ScheduledFuture<?> scheduledFuture = cVar.f42601c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            cVar.f42601c = null;
        }
        cVar.f42600b++;
        return (T) cVar.f42599a;
    }

    synchronized <T> T g(d<T> dVar, T t10) {
        c cVar = this.f42592a.get(dVar);
        if (cVar != null) {
            com.google.common.base.o.e(t10 == cVar.f42599a, "Releasing the wrong instance");
            com.google.common.base.o.A(cVar.f42600b > 0, "Refcount has already reached zero");
            int i9 = cVar.f42600b - 1;
            cVar.f42600b = i9;
            if (i9 == 0) {
                com.google.common.base.o.A(cVar.f42601c == null, "Destroy task already scheduled");
                if (this.f42594c == null) {
                    this.f42594c = this.f42593b.a();
                }
                cVar.f42601c = this.f42594c.schedule(new d1(new b(cVar, dVar, t10)), 1L, TimeUnit.SECONDS);
            }
        } else {
            throw new IllegalArgumentException("No cached instance found for " + dVar);
        }
        return null;
    }
}
