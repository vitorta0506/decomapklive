package io.grpc.internal;

import androidx.core.app.NotificationCompat;
import io.grpc.Status;
import io.grpc.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class z<ReqT, RespT> extends io.grpc.g<ReqT, RespT> {

    /* renamed from: j  reason: collision with root package name */
    private static final Logger f43186j = Logger.getLogger(z.class.getName());

    /* renamed from: k  reason: collision with root package name */
    private static final io.grpc.g<Object, Object> f43187k = new h();

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledFuture<?> f43188a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f43189b;

    /* renamed from: c  reason: collision with root package name */
    private final io.grpc.r f43190c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f43191d;

    /* renamed from: e  reason: collision with root package name */
    private g.a<RespT> f43192e;

    /* renamed from: f  reason: collision with root package name */
    private io.grpc.g<ReqT, RespT> f43193f;

    /* renamed from: g  reason: collision with root package name */
    private Status f43194g;

    /* renamed from: h  reason: collision with root package name */
    private List<Runnable> f43195h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private j<RespT> f43196i;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.a f43197a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ io.grpc.s0 f43198b;

        a(g.a aVar, io.grpc.s0 s0Var) {
            this.f43197a = aVar;
            this.f43198b = s0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.f43193f.e(this.f43197a, this.f43198b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StringBuilder f43200a;

        b(StringBuilder sb2) {
            this.f43200a = sb2;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.j(Status.f41708j.r(this.f43200a.toString()), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends x {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f43202b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(j jVar) {
            super(z.this.f43190c);
            this.f43202b = jVar;
        }

        @Override // io.grpc.internal.x
        public void b() {
            this.f43202b.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f43204a;

        d(Status status) {
            this.f43204a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.f43193f.a(this.f43204a.o(), this.f43204a.m());
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f43206a;

        e(Object obj) {
            this.f43206a = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            z.this.f43193f.d(this.f43206a);
        }
    }

    /* loaded from: classes5.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f43208a;

        f(int i9) {
            this.f43208a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.f43193f.c(this.f43208a);
        }
    }

    /* loaded from: classes5.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.f43193f.b();
        }
    }

    /* loaded from: classes5.dex */
    class h extends io.grpc.g<Object, Object> {
        h() {
        }

        @Override // io.grpc.g
        public void a(String str, Throwable th2) {
        }

        @Override // io.grpc.g
        public void b() {
        }

        @Override // io.grpc.g
        public void c(int i9) {
        }

        @Override // io.grpc.g
        public void d(Object obj) {
        }

        @Override // io.grpc.g
        public void e(g.a<Object> aVar, io.grpc.s0 s0Var) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class i extends x {

        /* renamed from: b  reason: collision with root package name */
        final g.a<RespT> f43211b;

        /* renamed from: c  reason: collision with root package name */
        final Status f43212c;

        i(g.a<RespT> aVar, Status status) {
            super(z.this.f43190c);
            this.f43211b = aVar;
            this.f43212c = status;
        }

        @Override // io.grpc.internal.x
        public void b() {
            this.f43211b.a(this.f43212c, new io.grpc.s0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class j<RespT> extends g.a<RespT> {

        /* renamed from: a  reason: collision with root package name */
        private final g.a<RespT> f43214a;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f43215b;

        /* renamed from: c  reason: collision with root package name */
        private List<Runnable> f43216c = new ArrayList();

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43217a;

            a(io.grpc.s0 s0Var) {
                this.f43217a = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.f43214a.b(this.f43217a);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f43219a;

            b(Object obj) {
                this.f43219a = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.f43214a.c(this.f43219a);
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f43221a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f43222b;

            c(Status status, io.grpc.s0 s0Var) {
                this.f43221a = status;
                this.f43222b = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.f43214a.a(this.f43221a, this.f43222b);
            }
        }

        /* loaded from: classes5.dex */
        class d implements Runnable {
            d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.f43214a.d();
            }
        }

        public j(g.a<RespT> aVar) {
            this.f43214a = aVar;
        }

        private void f(Runnable runnable) {
            synchronized (this) {
                if (!this.f43215b) {
                    this.f43216c.add(runnable);
                } else {
                    runnable.run();
                }
            }
        }

        @Override // io.grpc.g.a
        public void a(Status status, io.grpc.s0 s0Var) {
            f(new c(status, s0Var));
        }

        @Override // io.grpc.g.a
        public void b(io.grpc.s0 s0Var) {
            if (this.f43215b) {
                this.f43214a.b(s0Var);
            } else {
                f(new a(s0Var));
            }
        }

        @Override // io.grpc.g.a
        public void c(RespT respt) {
            if (this.f43215b) {
                this.f43214a.c(respt);
            } else {
                f(new b(respt));
            }
        }

        @Override // io.grpc.g.a
        public void d() {
            if (this.f43215b) {
                this.f43214a.d();
            } else {
                f(new d());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void g() {
            List<Runnable> list;
            List arrayList = new ArrayList();
            while (true) {
                synchronized (this) {
                    if (this.f43216c.isEmpty()) {
                        this.f43216c = null;
                        this.f43215b = true;
                        return;
                    }
                    list = this.f43216c;
                    this.f43216c = arrayList;
                }
                for (Runnable runnable : list) {
                    runnable.run();
                }
                list.clear();
                arrayList = list;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public z(Executor executor, ScheduledExecutorService scheduledExecutorService, io.grpc.t tVar) {
        this.f43189b = (Executor) com.google.common.base.o.t(executor, "callExecutor");
        com.google.common.base.o.t(scheduledExecutorService, "scheduler");
        this.f43190c = io.grpc.r.j();
        this.f43188a = m(scheduledExecutorService, tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void j(Status status, boolean z10) {
        boolean z11;
        g.a<RespT> aVar;
        synchronized (this) {
            if (this.f43193f == null) {
                o(f43187k);
                z11 = false;
                aVar = this.f43192e;
                this.f43194g = status;
            } else if (z10) {
                return;
            } else {
                z11 = true;
                aVar = null;
            }
            if (z11) {
                k(new d(status));
            } else {
                if (aVar != null) {
                    this.f43189b.execute(new i(aVar, status));
                }
                l();
            }
            i();
        }
    }

    private void k(Runnable runnable) {
        synchronized (this) {
            if (!this.f43191d) {
                this.f43195h.add(runnable);
            } else {
                runnable.run();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0.hasNext() == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l() {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r3)
            java.util.List<java.lang.Runnable> r1 = r3.f43195h     // Catch: java.lang.Throwable -> L42
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L42
            if (r1 == 0) goto L24
            r0 = 0
            r3.f43195h = r0     // Catch: java.lang.Throwable -> L42
            r0 = 1
            r3.f43191d = r0     // Catch: java.lang.Throwable -> L42
            io.grpc.internal.z$j<RespT> r0 = r3.f43196i     // Catch: java.lang.Throwable -> L42
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L23
            java.util.concurrent.Executor r1 = r3.f43189b
            io.grpc.internal.z$c r2 = new io.grpc.internal.z$c
            r2.<init>(r0)
            r1.execute(r2)
        L23:
            return
        L24:
            java.util.List<java.lang.Runnable> r1 = r3.f43195h     // Catch: java.lang.Throwable -> L42
            r3.f43195h = r0     // Catch: java.lang.Throwable -> L42
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            java.util.Iterator r0 = r1.iterator()
        L2d:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L3d
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L2d
        L3d:
            r1.clear()
            r0 = r1
            goto L5
        L42:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L42
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.z.l():void");
    }

    private ScheduledFuture<?> m(ScheduledExecutorService scheduledExecutorService, io.grpc.t tVar) {
        io.grpc.t o10 = this.f43190c.o();
        if (tVar == null && o10 == null) {
            return null;
        }
        long min = tVar != null ? Math.min(Long.MAX_VALUE, tVar.i(TimeUnit.NANOSECONDS)) : Long.MAX_VALUE;
        if (o10 != null) {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            if (o10.i(timeUnit) < min) {
                min = o10.i(timeUnit);
                Logger logger = f43186j;
                if (logger.isLoggable(Level.FINE)) {
                    StringBuilder sb2 = new StringBuilder(String.format("Call timeout set to '%d' ns, due to context deadline.", Long.valueOf(min)));
                    if (tVar == null) {
                        sb2.append(" Explicit call timeout was not set.");
                    } else {
                        sb2.append(String.format(" Explicit call timeout was '%d' ns.", Long.valueOf(tVar.i(timeUnit))));
                    }
                    logger.fine(sb2.toString());
                }
            }
        }
        long abs = Math.abs(min);
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        long nanos = abs / timeUnit2.toNanos(1L);
        long abs2 = Math.abs(min) % timeUnit2.toNanos(1L);
        StringBuilder sb3 = new StringBuilder();
        if (min < 0) {
            sb3.append("ClientCall started after deadline exceeded. Deadline exceeded after -");
        } else {
            sb3.append("Deadline exceeded after ");
        }
        sb3.append(nanos);
        sb3.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
        sb3.append("s. ");
        return scheduledExecutorService.schedule(new b(sb3), min, TimeUnit.NANOSECONDS);
    }

    private void o(io.grpc.g<ReqT, RespT> gVar) {
        io.grpc.g<ReqT, RespT> gVar2 = this.f43193f;
        com.google.common.base.o.D(gVar2 == null, "realCall already set to %s", gVar2);
        ScheduledFuture<?> scheduledFuture = this.f43188a;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f43193f = gVar;
    }

    @Override // io.grpc.g
    public final void a(String str, Throwable th2) {
        Status r10;
        Status status = Status.f41705g;
        if (str != null) {
            r10 = status.r(str);
        } else {
            r10 = status.r("Call cancelled without message");
        }
        if (th2 != null) {
            r10 = r10.q(th2);
        }
        j(r10, false);
    }

    @Override // io.grpc.g
    public final void b() {
        k(new g());
    }

    @Override // io.grpc.g
    public final void c(int i9) {
        if (this.f43191d) {
            this.f43193f.c(i9);
        } else {
            k(new f(i9));
        }
    }

    @Override // io.grpc.g
    public final void d(ReqT reqt) {
        if (this.f43191d) {
            this.f43193f.d(reqt);
        } else {
            k(new e(reqt));
        }
    }

    @Override // io.grpc.g
    public final void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
        Status status;
        boolean z10;
        com.google.common.base.o.A(this.f43192e == null, "already started");
        synchronized (this) {
            this.f43192e = (g.a) com.google.common.base.o.t(aVar, "listener");
            status = this.f43194g;
            z10 = this.f43191d;
            if (!z10) {
                j<RespT> jVar = new j<>(aVar);
                this.f43196i = jVar;
                aVar = jVar;
            }
        }
        if (status != null) {
            this.f43189b.execute(new i(aVar, status));
        } else if (z10) {
            this.f43193f.e(aVar, s0Var);
        } else {
            k(new a(aVar, s0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
    }

    public final void n(io.grpc.g<ReqT, RespT> gVar) {
        synchronized (this) {
            if (this.f43193f != null) {
                return;
            }
            o((io.grpc.g) com.google.common.base.o.t(gVar, NotificationCompat.CATEGORY_CALL));
            l();
        }
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("realCall", this.f43193f).toString();
    }
}
