package io.grpc.internal;

import io.grpc.internal.r;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class v0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f43091g = Logger.getLogger(v0.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final long f43092a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.common.base.u f43093b;

    /* renamed from: c  reason: collision with root package name */
    private Map<r.a, Executor> f43094c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    private boolean f43095d;

    /* renamed from: e  reason: collision with root package name */
    private Throwable f43096e;

    /* renamed from: f  reason: collision with root package name */
    private long f43097f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.a f43098a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f43099b;

        a(r.a aVar, long j10) {
            this.f43098a = aVar;
            this.f43099b = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43098a.a(this.f43099b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.a f43100a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f43101b;

        b(r.a aVar, Throwable th2) {
            this.f43100a = aVar;
            this.f43101b = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f43100a.onFailure(this.f43101b);
        }
    }

    public v0(long j10, com.google.common.base.u uVar) {
        this.f43092a = j10;
        this.f43093b = uVar;
    }

    private static Runnable b(r.a aVar, long j10) {
        return new a(aVar, j10);
    }

    private static Runnable c(r.a aVar, Throwable th2) {
        return new b(aVar, th2);
    }

    private static void e(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (Throwable th2) {
            f43091g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
        }
    }

    public static void g(r.a aVar, Executor executor, Throwable th2) {
        e(executor, c(aVar, th2));
    }

    public void a(r.a aVar, Executor executor) {
        synchronized (this) {
            if (!this.f43095d) {
                this.f43094c.put(aVar, executor);
                return;
            }
            Throwable th2 = this.f43096e;
            e(executor, th2 != null ? c(aVar, th2) : b(aVar, this.f43097f));
        }
    }

    public boolean d() {
        synchronized (this) {
            if (this.f43095d) {
                return false;
            }
            this.f43095d = true;
            long d10 = this.f43093b.d(TimeUnit.NANOSECONDS);
            this.f43097f = d10;
            Map<r.a, Executor> map = this.f43094c;
            this.f43094c = null;
            for (Map.Entry<r.a, Executor> entry : map.entrySet()) {
                e(entry.getValue(), b(entry.getKey(), d10));
            }
            return true;
        }
    }

    public void f(Throwable th2) {
        synchronized (this) {
            if (this.f43095d) {
                return;
            }
            this.f43095d = true;
            this.f43096e = th2;
            Map<r.a, Executor> map = this.f43094c;
            this.f43094c = null;
            for (Map.Entry<r.a, Executor> entry : map.entrySet()) {
                g(entry.getKey(), entry.getValue(), th2);
            }
        }
    }

    public long h() {
        return this.f43092a;
    }
}
