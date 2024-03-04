package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.k2;
import io.grpc.k;
import io.grpc.s0;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class z1<ReqT> implements io.grpc.internal.q {
    private static final Status A;
    private static Random B;

    /* renamed from: y  reason: collision with root package name */
    static final s0.i<String> f43229y;

    /* renamed from: z  reason: collision with root package name */
    static final s0.i<String> f43230z;

    /* renamed from: a  reason: collision with root package name */
    private final MethodDescriptor<ReqT, ?> f43231a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f43232b;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f43234d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.s0 f43235e;

    /* renamed from: f  reason: collision with root package name */
    private final a2 f43236f;

    /* renamed from: g  reason: collision with root package name */
    private final t0 f43237g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f43238h;

    /* renamed from: j  reason: collision with root package name */
    private final t f43240j;

    /* renamed from: k  reason: collision with root package name */
    private final long f43241k;

    /* renamed from: l  reason: collision with root package name */
    private final long f43242l;

    /* renamed from: m  reason: collision with root package name */
    private final c0 f43243m;

    /* renamed from: r  reason: collision with root package name */
    private long f43248r;

    /* renamed from: s  reason: collision with root package name */
    private ClientStreamListener f43249s;

    /* renamed from: t  reason: collision with root package name */
    private u f43250t;

    /* renamed from: u  reason: collision with root package name */
    private u f43251u;

    /* renamed from: v  reason: collision with root package name */
    private long f43252v;

    /* renamed from: w  reason: collision with root package name */
    private Status f43253w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f43254x;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f43233c = new io.grpc.d1(new a());

    /* renamed from: i  reason: collision with root package name */
    private final Object f43239i = new Object();

    /* renamed from: n  reason: collision with root package name */
    private final x0 f43244n = new x0();

    /* renamed from: o  reason: collision with root package name */
    private volatile z f43245o = new z(new ArrayList(8), Collections.emptyList(), null, null, false, false, false, 0);

    /* renamed from: p  reason: collision with root package name */
    private final AtomicBoolean f43246p = new AtomicBoolean();

    /* renamed from: q  reason: collision with root package name */
    private final AtomicInteger f43247q = new AtomicInteger();

    /* loaded from: classes5.dex */
    class a implements Thread.UncaughtExceptionHandler {
        a() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th2) {
            throw Status.l(th2).r("Uncaught exception in the SynchronizationContext. Re-thrown.").d();
        }
    }

    /* loaded from: classes5.dex */
    private final class a0 implements ClientStreamListener {

        /* renamed from: a  reason: collision with root package name */
        final b0 f43256a;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43258a;

            a(io.grpc.s0 s0Var) {
                this.f43258a = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43249s.b(this.f43258a);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* loaded from: classes5.dex */
            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a0 a0Var = a0.this;
                    z1.this.c0(z1.this.a0(a0Var.f43256a.f43284d + 1, false));
                }
            }

            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43232b.execute(new a());
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f43262a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ClientStreamListener.RpcProgress f43263b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43264c;

            c(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                this.f43262a = status;
                this.f43263b = rpcProgress;
                this.f43264c = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43254x = true;
                z1.this.f43249s.d(this.f43262a, this.f43263b, this.f43264c);
            }
        }

        /* loaded from: classes5.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f43266a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ClientStreamListener.RpcProgress f43267b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43268c;

            d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                this.f43266a = status;
                this.f43267b = rpcProgress;
                this.f43268c = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43254x = true;
                z1.this.f43249s.d(this.f43266a, this.f43267b, this.f43268c);
            }
        }

        /* loaded from: classes5.dex */
        class e implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b0 f43270a;

            e(b0 b0Var) {
                this.f43270a = b0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.c0(this.f43270a);
            }
        }

        /* loaded from: classes5.dex */
        class f implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f43272a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ClientStreamListener.RpcProgress f43273b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43274c;

            f(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                this.f43272a = status;
                this.f43273b = rpcProgress;
                this.f43274c = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43254x = true;
                z1.this.f43249s.d(this.f43272a, this.f43273b, this.f43274c);
            }
        }

        /* loaded from: classes5.dex */
        class g implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k2.a f43276a;

            g(k2.a aVar) {
                this.f43276a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                z1.this.f43249s.a(this.f43276a);
            }
        }

        /* loaded from: classes5.dex */
        class h implements Runnable {
            h() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (z1.this.f43254x) {
                    return;
                }
                z1.this.f43249s.c();
            }
        }

        a0(b0 b0Var) {
            this.f43256a = b0Var;
        }

        private Integer e(io.grpc.s0 s0Var) {
            String str = (String) s0Var.k(z1.f43230z);
            if (str != null) {
                try {
                    return Integer.valueOf(str);
                } catch (NumberFormatException unused) {
                    return -1;
                }
            }
            return null;
        }

        private v f(Status status, io.grpc.s0 s0Var) {
            Integer e10 = e(s0Var);
            boolean z10 = true;
            boolean z11 = !z1.this.f43237g.f43071c.contains(status.n());
            return new v((z11 || ((z1.this.f43243m == null || (z11 && (e10 == null || e10.intValue() >= 0))) ? false : z1.this.f43243m.b() ^ true)) ? false : false, e10);
        }

        private x g(Status status, io.grpc.s0 s0Var) {
            long j10 = 0;
            boolean z10 = false;
            if (z1.this.f43236f == null) {
                return new x(false, 0L);
            }
            boolean contains = z1.this.f43236f.f42425f.contains(status.n());
            Integer e10 = e(s0Var);
            boolean z11 = (z1.this.f43243m == null || (!contains && (e10 == null || e10.intValue() >= 0))) ? false : !z1.this.f43243m.b();
            if (z1.this.f43236f.f42420a > this.f43256a.f43284d + 1 && !z11) {
                if (e10 == null) {
                    if (contains) {
                        j10 = (long) (z1.this.f43252v * z1.B.nextDouble());
                        z1 z1Var = z1.this;
                        z1Var.f43252v = Math.min((long) (z1Var.f43252v * z1.this.f43236f.f42423d), z1.this.f43236f.f42422c);
                        z10 = true;
                    }
                } else if (e10.intValue() >= 0) {
                    j10 = TimeUnit.MILLISECONDS.toNanos(e10.intValue());
                    z1 z1Var2 = z1.this;
                    z1Var2.f43252v = z1Var2.f43236f.f42421b;
                    z10 = true;
                }
            }
            return new x(z10, j10);
        }

        @Override // io.grpc.internal.k2
        public void a(k2.a aVar) {
            z zVar = z1.this.f43245o;
            com.google.common.base.o.A(zVar.f43338f != null, "Headers should be received prior to messages.");
            if (zVar.f43338f != this.f43256a) {
                return;
            }
            z1.this.f43233c.execute(new g(aVar));
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void b(io.grpc.s0 s0Var) {
            z1.this.Z(this.f43256a);
            if (z1.this.f43245o.f43338f == this.f43256a) {
                if (z1.this.f43243m != null) {
                    z1.this.f43243m.c();
                }
                z1.this.f43233c.execute(new a(s0Var));
            }
        }

        @Override // io.grpc.internal.k2
        public void c() {
            if (z1.this.isReady()) {
                z1.this.f43233c.execute(new h());
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
            u uVar;
            synchronized (z1.this.f43239i) {
                z1 z1Var = z1.this;
                z1Var.f43245o = z1Var.f43245o.g(this.f43256a);
                z1.this.f43244n.a(status.n());
            }
            b0 b0Var = this.f43256a;
            if (b0Var.f43283c) {
                z1.this.Z(b0Var);
                if (z1.this.f43245o.f43338f == this.f43256a) {
                    z1.this.f43233c.execute(new c(status, rpcProgress, s0Var));
                    return;
                }
                return;
            }
            ClientStreamListener.RpcProgress rpcProgress2 = ClientStreamListener.RpcProgress.MISCARRIED;
            if (rpcProgress == rpcProgress2 && z1.this.f43247q.incrementAndGet() > 10000) {
                z1.this.Z(this.f43256a);
                if (z1.this.f43245o.f43338f == this.f43256a) {
                    z1.this.f43233c.execute(new d(Status.f41718t.r("Too many transparent retries. Might be a bug in gRPC").q(status.d()), rpcProgress, s0Var));
                    return;
                }
                return;
            }
            if (z1.this.f43245o.f43338f == null) {
                boolean z10 = false;
                if (rpcProgress != rpcProgress2 && (rpcProgress != ClientStreamListener.RpcProgress.REFUSED || !z1.this.f43246p.compareAndSet(false, true))) {
                    if (rpcProgress == ClientStreamListener.RpcProgress.DROPPED) {
                        if (z1.this.f43238h) {
                            z1.this.d0();
                        }
                    } else {
                        z1.this.f43246p.set(true);
                        if (z1.this.f43238h) {
                            v f10 = f(status, s0Var);
                            if (f10.f43325a) {
                                z1.this.i0(f10.f43326b);
                            }
                            synchronized (z1.this.f43239i) {
                                z1 z1Var2 = z1.this;
                                z1Var2.f43245o = z1Var2.f43245o.e(this.f43256a);
                                if (f10.f43325a) {
                                    z1 z1Var3 = z1.this;
                                    if (z1Var3.e0(z1Var3.f43245o) || !z1.this.f43245o.f43336d.isEmpty()) {
                                        return;
                                    }
                                }
                            }
                        } else {
                            x g10 = g(status, s0Var);
                            if (g10.f43330a) {
                                synchronized (z1.this.f43239i) {
                                    z1 z1Var4 = z1.this;
                                    uVar = new u(z1Var4.f43239i);
                                    z1Var4.f43250t = uVar;
                                }
                                uVar.c(z1.this.f43234d.schedule(new b(), g10.f43331b, TimeUnit.NANOSECONDS));
                                return;
                            }
                        }
                    }
                } else {
                    b0 a02 = z1.this.a0(this.f43256a.f43284d, true);
                    if (z1.this.f43238h) {
                        synchronized (z1.this.f43239i) {
                            z1 z1Var5 = z1.this;
                            z1Var5.f43245o = z1Var5.f43245o.f(this.f43256a, a02);
                            z1 z1Var6 = z1.this;
                            if (!z1Var6.e0(z1Var6.f43245o) && z1.this.f43245o.f43336d.size() == 1) {
                                z10 = true;
                            }
                        }
                        if (z10) {
                            z1.this.Z(a02);
                        }
                    } else if (z1.this.f43236f == null || z1.this.f43236f.f42420a == 1) {
                        z1.this.Z(a02);
                    }
                    z1.this.f43232b.execute(new e(a02));
                    return;
                }
            }
            z1.this.Z(this.f43256a);
            if (z1.this.f43245o.f43338f == this.f43256a) {
                z1.this.f43233c.execute(new f(status, rpcProgress, s0Var));
            }
        }
    }

    /* loaded from: classes5.dex */
    class b implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f43279a;

        b(String str) {
            this.f43279a = str;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.k(this.f43279a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b0 {

        /* renamed from: a  reason: collision with root package name */
        io.grpc.internal.q f43281a;

        /* renamed from: b  reason: collision with root package name */
        boolean f43282b;

        /* renamed from: c  reason: collision with root package name */
        boolean f43283c;

        /* renamed from: d  reason: collision with root package name */
        final int f43284d;

        b0(int i9) {
            this.f43284d = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Collection f43285a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b0 f43286b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Future f43287c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Future f43288d;

        c(Collection collection, b0 b0Var, Future future, Future future2) {
            this.f43285a = collection;
            this.f43286b = b0Var;
            this.f43287c = future;
            this.f43288d = future2;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (b0 b0Var : this.f43285a) {
                if (b0Var != this.f43286b) {
                    b0Var.f43281a.e(z1.A);
                }
            }
            Future future = this.f43287c;
            if (future != null) {
                future.cancel(false);
            }
            Future future2 = this.f43288d;
            if (future2 != null) {
                future2.cancel(false);
            }
            z1.this.g0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c0 {

        /* renamed from: a  reason: collision with root package name */
        final int f43290a;

        /* renamed from: b  reason: collision with root package name */
        final int f43291b;

        /* renamed from: c  reason: collision with root package name */
        final int f43292c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f43293d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c0(float f10, float f11) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.f43293d = atomicInteger;
            this.f43292c = (int) (f11 * 1000.0f);
            int i9 = (int) (f10 * 1000.0f);
            this.f43290a = i9;
            this.f43291b = i9 / 2;
            atomicInteger.set(i9);
        }

        boolean a() {
            return this.f43293d.get() > this.f43291b;
        }

        boolean b() {
            int i9;
            int i10;
            do {
                i9 = this.f43293d.get();
                if (i9 == 0) {
                    return false;
                }
                i10 = i9 - 1000;
            } while (!this.f43293d.compareAndSet(i9, Math.max(i10, 0)));
            return i10 > this.f43291b;
        }

        void c() {
            int i9;
            int i10;
            do {
                i9 = this.f43293d.get();
                i10 = this.f43290a;
                if (i9 == i10) {
                    return;
                }
            } while (!this.f43293d.compareAndSet(i9, Math.min(this.f43292c + i9, i10)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c0) {
                c0 c0Var = (c0) obj;
                return this.f43290a == c0Var.f43290a && this.f43292c == c0Var.f43292c;
            }
            return false;
        }

        public int hashCode() {
            return com.google.common.base.l.b(Integer.valueOf(this.f43290a), Integer.valueOf(this.f43292c));
        }
    }

    /* loaded from: classes5.dex */
    class d implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.o f43294a;

        d(io.grpc.o oVar) {
            this.f43294a = oVar;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.a(this.f43294a);
        }
    }

    /* loaded from: classes5.dex */
    class e implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.t f43296a;

        e(io.grpc.t tVar) {
            this.f43296a = tVar;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.n(this.f43296a);
        }
    }

    /* loaded from: classes5.dex */
    class f implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.v f43298a;

        f(io.grpc.v vVar) {
            this.f43298a = vVar;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.g(this.f43298a);
        }
    }

    /* loaded from: classes5.dex */
    class g implements r {
        g() {
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.flush();
        }
    }

    /* loaded from: classes5.dex */
    class h implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f43301a;

        h(boolean z10) {
            this.f43301a = z10;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.j(this.f43301a);
        }
    }

    /* loaded from: classes5.dex */
    class i implements r {
        i() {
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.m();
        }
    }

    /* loaded from: classes5.dex */
    class j implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43304a;

        j(int i9) {
            this.f43304a = i9;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.c(this.f43304a);
        }
    }

    /* loaded from: classes5.dex */
    class k implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43306a;

        k(int i9) {
            this.f43306a = i9;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.d(this.f43306a);
        }
    }

    /* loaded from: classes5.dex */
    class l implements r {
        l() {
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.i();
        }
    }

    /* loaded from: classes5.dex */
    class m implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43309a;

        m(int i9) {
            this.f43309a = i9;
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.b(this.f43309a);
        }
    }

    /* loaded from: classes5.dex */
    class n implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f43311a;

        n(Object obj) {
            this.f43311a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.h(z1.this.f43231a.l(this.f43311a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class o extends k.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.k f43313a;

        o(io.grpc.k kVar) {
            this.f43313a = kVar;
        }

        @Override // io.grpc.k.a
        public io.grpc.k a(k.b bVar, io.grpc.s0 s0Var) {
            return this.f43313a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (z1.this.f43254x) {
                return;
            }
            z1.this.f43249s.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f43316a;

        q(Status status) {
            this.f43316a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            z1.this.f43254x = true;
            z1.this.f43249s.d(this.f43316a, ClientStreamListener.RpcProgress.PROCESSED, new io.grpc.s0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface r {
        void a(b0 b0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class s extends io.grpc.k {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f43318a;

        /* renamed from: b  reason: collision with root package name */
        long f43319b;

        s(b0 b0Var) {
            this.f43318a = b0Var;
        }

        @Override // io.grpc.c1
        public void h(long j10) {
            if (z1.this.f43245o.f43338f != null) {
                return;
            }
            synchronized (z1.this.f43239i) {
                if (z1.this.f43245o.f43338f == null && !this.f43318a.f43282b) {
                    long j11 = this.f43319b + j10;
                    this.f43319b = j11;
                    if (j11 <= z1.this.f43248r) {
                        return;
                    }
                    if (this.f43319b > z1.this.f43241k) {
                        this.f43318a.f43283c = true;
                    } else {
                        long a10 = z1.this.f43240j.a(this.f43319b - z1.this.f43248r);
                        z1.this.f43248r = this.f43319b;
                        if (a10 > z1.this.f43242l) {
                            this.f43318a.f43283c = true;
                        }
                    }
                    b0 b0Var = this.f43318a;
                    Runnable Y = b0Var.f43283c ? z1.this.Y(b0Var) : null;
                    if (Y != null) {
                        Y.run();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class t {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicLong f43321a = new AtomicLong();

        long a(long j10) {
            return this.f43321a.addAndGet(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class u {

        /* renamed from: a  reason: collision with root package name */
        final Object f43322a;

        /* renamed from: b  reason: collision with root package name */
        Future<?> f43323b;

        /* renamed from: c  reason: collision with root package name */
        boolean f43324c;

        u(Object obj) {
            this.f43322a = obj;
        }

        boolean a() {
            return this.f43324c;
        }

        Future<?> b() {
            this.f43324c = true;
            return this.f43323b;
        }

        void c(Future<?> future) {
            synchronized (this.f43322a) {
                if (!this.f43324c) {
                    this.f43323b = future;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class v {

        /* renamed from: a  reason: collision with root package name */
        final boolean f43325a;

        /* renamed from: b  reason: collision with root package name */
        final Integer f43326b;

        public v(boolean z10, Integer num) {
            this.f43325a = z10;
            this.f43326b = num;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final u f43327a;

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                u uVar;
                z1 z1Var = z1.this;
                boolean z10 = false;
                b0 a02 = z1Var.a0(z1Var.f43245o.f43337e, false);
                synchronized (z1.this.f43239i) {
                    uVar = null;
                    if (w.this.f43327a.a()) {
                        z10 = true;
                    } else {
                        z1 z1Var2 = z1.this;
                        z1Var2.f43245o = z1Var2.f43245o.a(a02);
                        z1 z1Var3 = z1.this;
                        if (z1Var3.e0(z1Var3.f43245o) && (z1.this.f43243m == null || z1.this.f43243m.a())) {
                            z1 z1Var4 = z1.this;
                            uVar = new u(z1Var4.f43239i);
                            z1Var4.f43251u = uVar;
                        } else {
                            z1 z1Var5 = z1.this;
                            z1Var5.f43245o = z1Var5.f43245o.d();
                            z1.this.f43251u = null;
                        }
                    }
                }
                if (z10) {
                    a02.f43281a.e(Status.f41705g.r("Unneeded hedging"));
                    return;
                }
                if (uVar != null) {
                    uVar.c(z1.this.f43234d.schedule(new w(uVar), z1.this.f43237g.f43070b, TimeUnit.NANOSECONDS));
                }
                z1.this.c0(a02);
            }
        }

        w(u uVar) {
            this.f43327a = uVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            z1.this.f43232b.execute(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class x {

        /* renamed from: a  reason: collision with root package name */
        final boolean f43330a;

        /* renamed from: b  reason: collision with root package name */
        final long f43331b;

        x(boolean z10, long j10) {
            this.f43330a = z10;
            this.f43331b = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class y implements r {
        y() {
        }

        @Override // io.grpc.internal.z1.r
        public void a(b0 b0Var) {
            b0Var.f43281a.o(new a0(b0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class z {

        /* renamed from: a  reason: collision with root package name */
        final boolean f43333a;

        /* renamed from: b  reason: collision with root package name */
        final List<r> f43334b;

        /* renamed from: c  reason: collision with root package name */
        final Collection<b0> f43335c;

        /* renamed from: d  reason: collision with root package name */
        final Collection<b0> f43336d;

        /* renamed from: e  reason: collision with root package name */
        final int f43337e;

        /* renamed from: f  reason: collision with root package name */
        final b0 f43338f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f43339g;

        /* renamed from: h  reason: collision with root package name */
        final boolean f43340h;

        z(List<r> list, Collection<b0> collection, Collection<b0> collection2, b0 b0Var, boolean z10, boolean z11, boolean z12, int i9) {
            this.f43334b = list;
            this.f43335c = (Collection) com.google.common.base.o.t(collection, "drainedSubstreams");
            this.f43338f = b0Var;
            this.f43336d = collection2;
            this.f43339g = z10;
            this.f43333a = z11;
            this.f43340h = z12;
            this.f43337e = i9;
            boolean z13 = false;
            com.google.common.base.o.A(!z11 || list == null, "passThrough should imply buffer is null");
            com.google.common.base.o.A((z11 && b0Var == null) ? false : true, "passThrough should imply winningSubstream != null");
            com.google.common.base.o.A(!z11 || (collection.size() == 1 && collection.contains(b0Var)) || (collection.size() == 0 && b0Var.f43282b), "passThrough should imply winningSubstream is drained");
            com.google.common.base.o.A((z10 && b0Var == null) ? true : true, "cancelled should imply committed");
        }

        z a(b0 b0Var) {
            Collection unmodifiableCollection;
            com.google.common.base.o.A(!this.f43340h, "hedging frozen");
            com.google.common.base.o.A(this.f43338f == null, "already committed");
            if (this.f43336d == null) {
                unmodifiableCollection = Collections.singleton(b0Var);
            } else {
                ArrayList arrayList = new ArrayList(this.f43336d);
                arrayList.add(b0Var);
                unmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            return new z(this.f43334b, this.f43335c, unmodifiableCollection, this.f43338f, this.f43339g, this.f43333a, this.f43340h, this.f43337e + 1);
        }

        z b() {
            return new z(this.f43334b, this.f43335c, this.f43336d, this.f43338f, true, this.f43333a, this.f43340h, this.f43337e);
        }

        z c(b0 b0Var) {
            List<r> list;
            Collection emptyList;
            boolean z10;
            com.google.common.base.o.A(this.f43338f == null, "Already committed");
            List<r> list2 = this.f43334b;
            if (this.f43335c.contains(b0Var)) {
                list = null;
                emptyList = Collections.singleton(b0Var);
                z10 = true;
            } else {
                list = list2;
                emptyList = Collections.emptyList();
                z10 = false;
            }
            return new z(list, emptyList, this.f43336d, b0Var, this.f43339g, z10, this.f43340h, this.f43337e);
        }

        z d() {
            return this.f43340h ? this : new z(this.f43334b, this.f43335c, this.f43336d, this.f43338f, this.f43339g, this.f43333a, true, this.f43337e);
        }

        z e(b0 b0Var) {
            ArrayList arrayList = new ArrayList(this.f43336d);
            arrayList.remove(b0Var);
            return new z(this.f43334b, this.f43335c, Collections.unmodifiableCollection(arrayList), this.f43338f, this.f43339g, this.f43333a, this.f43340h, this.f43337e);
        }

        z f(b0 b0Var, b0 b0Var2) {
            ArrayList arrayList = new ArrayList(this.f43336d);
            arrayList.remove(b0Var);
            arrayList.add(b0Var2);
            return new z(this.f43334b, this.f43335c, Collections.unmodifiableCollection(arrayList), this.f43338f, this.f43339g, this.f43333a, this.f43340h, this.f43337e);
        }

        z g(b0 b0Var) {
            b0Var.f43282b = true;
            if (this.f43335c.contains(b0Var)) {
                ArrayList arrayList = new ArrayList(this.f43335c);
                arrayList.remove(b0Var);
                return new z(this.f43334b, Collections.unmodifiableCollection(arrayList), this.f43336d, this.f43338f, this.f43339g, this.f43333a, this.f43340h, this.f43337e);
            }
            return this;
        }

        z h(b0 b0Var) {
            Collection unmodifiableCollection;
            com.google.common.base.o.A(!this.f43333a, "Already passThrough");
            if (b0Var.f43282b) {
                unmodifiableCollection = this.f43335c;
            } else if (this.f43335c.isEmpty()) {
                unmodifiableCollection = Collections.singletonList(b0Var);
            } else {
                ArrayList arrayList = new ArrayList(this.f43335c);
                arrayList.add(b0Var);
                unmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            Collection collection = unmodifiableCollection;
            b0 b0Var2 = this.f43338f;
            boolean z10 = b0Var2 != null;
            List<r> list = this.f43334b;
            if (z10) {
                com.google.common.base.o.A(b0Var2 == b0Var, "Another RPC attempt has already committed");
                list = null;
            }
            return new z(list, collection, this.f43336d, this.f43338f, this.f43339g, z10, this.f43340h, this.f43337e);
        }
    }

    static {
        s0.d<String> dVar = io.grpc.s0.f45383e;
        f43229y = s0.i.e("grpc-previous-rpc-attempts", dVar);
        f43230z = s0.i.e("grpc-retry-pushback-ms", dVar);
        A = Status.f41705g.r("Stream thrown away because RetriableStream committed");
        B = new Random();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z1(MethodDescriptor<ReqT, ?> methodDescriptor, io.grpc.s0 s0Var, t tVar, long j10, long j11, Executor executor, ScheduledExecutorService scheduledExecutorService, a2 a2Var, t0 t0Var, c0 c0Var) {
        this.f43231a = methodDescriptor;
        this.f43240j = tVar;
        this.f43241k = j10;
        this.f43242l = j11;
        this.f43232b = executor;
        this.f43234d = scheduledExecutorService;
        this.f43235e = s0Var;
        this.f43236f = a2Var;
        if (a2Var != null) {
            this.f43252v = a2Var.f42421b;
        }
        this.f43237g = t0Var;
        com.google.common.base.o.e(a2Var == null || t0Var == null, "Should not provide both retryPolicy and hedgingPolicy");
        this.f43238h = t0Var != null;
        this.f43243m = c0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable Y(b0 b0Var) {
        Future<?> future;
        Future<?> future2;
        synchronized (this.f43239i) {
            if (this.f43245o.f43338f != null) {
                return null;
            }
            Collection<b0> collection = this.f43245o.f43335c;
            this.f43245o = this.f43245o.c(b0Var);
            this.f43240j.a(-this.f43248r);
            u uVar = this.f43250t;
            if (uVar != null) {
                Future<?> b10 = uVar.b();
                this.f43250t = null;
                future = b10;
            } else {
                future = null;
            }
            u uVar2 = this.f43251u;
            if (uVar2 != null) {
                Future<?> b11 = uVar2.b();
                this.f43251u = null;
                future2 = b11;
            } else {
                future2 = null;
            }
            return new c(collection, b0Var, future, future2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(b0 b0Var) {
        Runnable Y = Y(b0Var);
        if (Y != null) {
            Y.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b0 a0(int i9, boolean z10) {
        b0 b0Var = new b0(i9);
        b0Var.f43281a = f0(k0(this.f43235e, i9), new o(new s(b0Var)), i9, z10);
        return b0Var;
    }

    private void b0(r rVar) {
        Collection<b0> collection;
        synchronized (this.f43239i) {
            if (!this.f43245o.f43333a) {
                this.f43245o.f43334b.add(rVar);
            }
            collection = this.f43245o.f43335c;
        }
        for (b0 b0Var : collection) {
            rVar.a(b0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0037, code lost:
        r8.f43233c.execute(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003c, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
        r0 = r9.f43281a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0043, code lost:
        if (r8.f43245o.f43338f != r9) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0045, code lost:
        r9 = r8.f43253w;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0048, code lost:
        r9 = io.grpc.internal.z1.A;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004a, code lost:
        r0.e(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004d, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x007b, code lost:
        r2 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
        if (r2.hasNext() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0085, code lost:
        r4 = (io.grpc.internal.z1.r) r2.next();
        r4.a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0090, code lost:
        if ((r4 instanceof io.grpc.internal.z1.y) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0093, code lost:
        if (r1 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
        r4 = r8.f43245o;
        r5 = r4.f43338f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0099, code lost:
        if (r5 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009b, code lost:
        if (r5 == r9) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a0, code lost:
        if (r4.f43339g == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c0(io.grpc.internal.z1.b0 r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r3 = r0
            r2 = 0
        L4:
            java.lang.Object r4 = r8.f43239i
            monitor-enter(r4)
            io.grpc.internal.z1$z r5 = r8.f43245o     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto L19
            io.grpc.internal.z1$b0 r6 = r5.f43338f     // Catch: java.lang.Throwable -> La5
            if (r6 == 0) goto L13
            if (r6 == r9) goto L13
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            goto L35
        L13:
            boolean r6 = r5.f43339g     // Catch: java.lang.Throwable -> La5
            if (r6 == 0) goto L19
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            goto L35
        L19:
            java.util.List<io.grpc.internal.z1$r> r6 = r5.f43334b     // Catch: java.lang.Throwable -> La5
            int r6 = r6.size()     // Catch: java.lang.Throwable -> La5
            if (r2 != r6) goto L4e
            io.grpc.internal.z1$z r0 = r5.h(r9)     // Catch: java.lang.Throwable -> La5
            r8.f43245o = r0     // Catch: java.lang.Throwable -> La5
            boolean r0 = r8.isReady()     // Catch: java.lang.Throwable -> La5
            if (r0 != 0) goto L2f
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            return
        L2f:
            io.grpc.internal.z1$p r0 = new io.grpc.internal.z1$p     // Catch: java.lang.Throwable -> La5
            r0.<init>()     // Catch: java.lang.Throwable -> La5
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
        L35:
            if (r0 == 0) goto L3d
            java.util.concurrent.Executor r9 = r8.f43233c
            r9.execute(r0)
            return
        L3d:
            io.grpc.internal.q r0 = r9.f43281a
            io.grpc.internal.z1$z r1 = r8.f43245o
            io.grpc.internal.z1$b0 r1 = r1.f43338f
            if (r1 != r9) goto L48
            io.grpc.Status r9 = r8.f43253w
            goto L4a
        L48:
            io.grpc.Status r9 = io.grpc.internal.z1.A
        L4a:
            r0.e(r9)
            return
        L4e:
            boolean r6 = r9.f43282b     // Catch: java.lang.Throwable -> La5
            if (r6 == 0) goto L54
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            return
        L54:
            int r6 = r2 + 128
            java.util.List<io.grpc.internal.z1$r> r7 = r5.f43334b     // Catch: java.lang.Throwable -> La5
            int r7 = r7.size()     // Catch: java.lang.Throwable -> La5
            int r6 = java.lang.Math.min(r6, r7)     // Catch: java.lang.Throwable -> La5
            if (r3 != 0) goto L6e
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La5
            java.util.List<io.grpc.internal.z1$r> r5 = r5.f43334b     // Catch: java.lang.Throwable -> La5
            java.util.List r2 = r5.subList(r2, r6)     // Catch: java.lang.Throwable -> La5
            r3.<init>(r2)     // Catch: java.lang.Throwable -> La5
            goto L7a
        L6e:
            r3.clear()     // Catch: java.lang.Throwable -> La5
            java.util.List<io.grpc.internal.z1$r> r5 = r5.f43334b     // Catch: java.lang.Throwable -> La5
            java.util.List r2 = r5.subList(r2, r6)     // Catch: java.lang.Throwable -> La5
            r3.addAll(r2)     // Catch: java.lang.Throwable -> La5
        L7a:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            java.util.Iterator r2 = r3.iterator()
        L7f:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto La2
            java.lang.Object r4 = r2.next()
            io.grpc.internal.z1$r r4 = (io.grpc.internal.z1.r) r4
            r4.a(r9)
            boolean r4 = r4 instanceof io.grpc.internal.z1.y
            if (r4 == 0) goto L93
            r1 = 1
        L93:
            if (r1 == 0) goto L7f
            io.grpc.internal.z1$z r4 = r8.f43245o
            io.grpc.internal.z1$b0 r5 = r4.f43338f
            if (r5 == 0) goto L9e
            if (r5 == r9) goto L9e
            goto La2
        L9e:
            boolean r4 = r4.f43339g
            if (r4 == 0) goto L7f
        La2:
            r2 = r6
            goto L4
        La5:
            r9 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La5
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.z1.c0(io.grpc.internal.z1$b0):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0() {
        Future<?> future;
        synchronized (this.f43239i) {
            u uVar = this.f43251u;
            future = null;
            if (uVar != null) {
                Future<?> b10 = uVar.b();
                this.f43251u = null;
                future = b10;
            }
            this.f43245o = this.f43245o.d();
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e0(z zVar) {
        return zVar.f43338f == null && zVar.f43337e < this.f43237g.f43069a && !zVar.f43340h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            d0();
            return;
        }
        synchronized (this.f43239i) {
            u uVar = this.f43251u;
            if (uVar == null) {
                return;
            }
            Future<?> b10 = uVar.b();
            u uVar2 = new u(this.f43239i);
            this.f43251u = uVar2;
            if (b10 != null) {
                b10.cancel(false);
            }
            uVar2.c(this.f43234d.schedule(new w(uVar2), num.intValue(), TimeUnit.MILLISECONDS));
        }
    }

    @Override // io.grpc.internal.j2
    public final void a(io.grpc.o oVar) {
        b0(new d(oVar));
    }

    @Override // io.grpc.internal.j2
    public final void b(int i9) {
        z zVar = this.f43245o;
        if (zVar.f43333a) {
            zVar.f43338f.f43281a.b(i9);
        } else {
            b0(new m(i9));
        }
    }

    @Override // io.grpc.internal.q
    public final void c(int i9) {
        b0(new j(i9));
    }

    @Override // io.grpc.internal.q
    public final void d(int i9) {
        b0(new k(i9));
    }

    @Override // io.grpc.internal.q
    public final void e(Status status) {
        b0 b0Var = new b0(0);
        b0Var.f43281a = new o1();
        Runnable Y = Y(b0Var);
        if (Y != null) {
            Y.run();
            this.f43233c.execute(new q(status));
            return;
        }
        b0 b0Var2 = null;
        synchronized (this.f43239i) {
            if (this.f43245o.f43335c.contains(this.f43245o.f43338f)) {
                b0Var2 = this.f43245o.f43338f;
            } else {
                this.f43253w = status;
            }
            this.f43245o = this.f43245o.b();
        }
        if (b0Var2 != null) {
            b0Var2.f43281a.e(status);
        }
    }

    abstract io.grpc.internal.q f0(io.grpc.s0 s0Var, k.a aVar, int i9, boolean z10);

    @Override // io.grpc.internal.j2
    public final void flush() {
        z zVar = this.f43245o;
        if (zVar.f43333a) {
            zVar.f43338f.f43281a.flush();
        } else {
            b0(new g());
        }
    }

    @Override // io.grpc.internal.q
    public final void g(io.grpc.v vVar) {
        b0(new f(vVar));
    }

    abstract void g0();

    @Override // io.grpc.internal.j2
    public final void h(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    abstract Status h0();

    @Override // io.grpc.internal.j2
    public void i() {
        b0(new l());
    }

    @Override // io.grpc.internal.j2
    public final boolean isReady() {
        for (b0 b0Var : this.f43245o.f43335c) {
            if (b0Var.f43281a.isReady()) {
                return true;
            }
        }
        return false;
    }

    @Override // io.grpc.internal.q
    public final void j(boolean z10) {
        b0(new h(z10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j0(ReqT reqt) {
        z zVar = this.f43245o;
        if (zVar.f43333a) {
            zVar.f43338f.f43281a.h(this.f43231a.l(reqt));
        } else {
            b0(new n(reqt));
        }
    }

    @Override // io.grpc.internal.q
    public final void k(String str) {
        b0(new b(str));
    }

    final io.grpc.s0 k0(io.grpc.s0 s0Var, int i9) {
        io.grpc.s0 s0Var2 = new io.grpc.s0();
        s0Var2.q(s0Var);
        if (i9 > 0) {
            s0Var2.t(f43229y, String.valueOf(i9));
        }
        return s0Var2;
    }

    @Override // io.grpc.internal.q
    public void l(x0 x0Var) {
        z zVar;
        synchronized (this.f43239i) {
            x0Var.b("closed", this.f43244n);
            zVar = this.f43245o;
        }
        if (zVar.f43338f != null) {
            x0 x0Var2 = new x0();
            zVar.f43338f.f43281a.l(x0Var2);
            x0Var.b("committed", x0Var2);
            return;
        }
        x0 x0Var3 = new x0();
        for (b0 b0Var : zVar.f43335c) {
            x0 x0Var4 = new x0();
            b0Var.f43281a.l(x0Var4);
            x0Var3.a(x0Var4);
        }
        x0Var.b("open", x0Var3);
    }

    @Override // io.grpc.internal.q
    public final void m() {
        b0(new i());
    }

    @Override // io.grpc.internal.q
    public final void n(io.grpc.t tVar) {
        b0(new e(tVar));
    }

    @Override // io.grpc.internal.q
    public final void o(ClientStreamListener clientStreamListener) {
        c0 c0Var;
        this.f43249s = clientStreamListener;
        Status h02 = h0();
        if (h02 != null) {
            e(h02);
            return;
        }
        synchronized (this.f43239i) {
            this.f43245o.f43334b.add(new y());
        }
        b0 a02 = a0(0, false);
        if (this.f43238h) {
            u uVar = null;
            synchronized (this.f43239i) {
                this.f43245o = this.f43245o.a(a02);
                if (e0(this.f43245o) && ((c0Var = this.f43243m) == null || c0Var.a())) {
                    uVar = new u(this.f43239i);
                    this.f43251u = uVar;
                }
            }
            if (uVar != null) {
                uVar.c(this.f43234d.schedule(new w(uVar), this.f43237g.f43070b, TimeUnit.NANOSECONDS));
            }
        }
        c0(a02);
    }
}
