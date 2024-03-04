package io.grpc.internal;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.k2;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
class b0 implements q {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f42427a;

    /* renamed from: b  reason: collision with root package name */
    private ClientStreamListener f42428b;

    /* renamed from: c  reason: collision with root package name */
    private q f42429c;

    /* renamed from: d  reason: collision with root package name */
    private Status f42430d;

    /* renamed from: f  reason: collision with root package name */
    private o f42432f;

    /* renamed from: g  reason: collision with root package name */
    private long f42433g;

    /* renamed from: h  reason: collision with root package name */
    private long f42434h;

    /* renamed from: e  reason: collision with root package name */
    private List<Runnable> f42431e = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private List<Runnable> f42435i = new ArrayList();

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42436a;

        a(int i9) {
            this.f42436a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.b(this.f42436a);
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.i();
        }
    }

    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.o f42439a;

        c(io.grpc.o oVar) {
            this.f42439a = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.a(this.f42439a);
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f42441a;

        d(boolean z10) {
            this.f42441a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.j(this.f42441a);
        }
    }

    /* loaded from: classes5.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.v f42443a;

        e(io.grpc.v vVar) {
            this.f42443a = vVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.g(this.f42443a);
        }
    }

    /* loaded from: classes5.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42445a;

        f(int i9) {
            this.f42445a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.c(this.f42445a);
        }
    }

    /* loaded from: classes5.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f42447a;

        g(int i9) {
            this.f42447a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.d(this.f42447a);
        }
    }

    /* loaded from: classes5.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.grpc.t f42449a;

        h(io.grpc.t tVar) {
            this.f42449a = tVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.n(this.f42449a);
        }
    }

    /* loaded from: classes5.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.s();
        }
    }

    /* loaded from: classes5.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f42452a;

        j(String str) {
            this.f42452a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.k(this.f42452a);
        }
    }

    /* loaded from: classes5.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f42454a;

        k(InputStream inputStream) {
            this.f42454a = inputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.h(this.f42454a);
        }
    }

    /* loaded from: classes5.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.flush();
        }
    }

    /* loaded from: classes5.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f42457a;

        m(Status status) {
            this.f42457a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.e(this.f42457a);
        }
    }

    /* loaded from: classes5.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.this.f42429c.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class o implements ClientStreamListener {

        /* renamed from: a  reason: collision with root package name */
        private final ClientStreamListener f42460a;

        /* renamed from: b  reason: collision with root package name */
        private volatile boolean f42461b;

        /* renamed from: c  reason: collision with root package name */
        private List<Runnable> f42462c = new ArrayList();

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ k2.a f42463a;

            a(k2.a aVar) {
                this.f42463a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.this.f42460a.a(this.f42463a);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                o.this.f42460a.c();
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f42466a;

            c(io.grpc.s0 s0Var) {
                this.f42466a = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.this.f42460a.b(this.f42466a);
            }
        }

        /* loaded from: classes5.dex */
        class d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f42468a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ClientStreamListener.RpcProgress f42469b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ io.grpc.s0 f42470c;

            d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
                this.f42468a = status;
                this.f42469b = rpcProgress;
                this.f42470c = s0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.this.f42460a.d(this.f42468a, this.f42469b, this.f42470c);
            }
        }

        public o(ClientStreamListener clientStreamListener) {
            this.f42460a = clientStreamListener;
        }

        private void f(Runnable runnable) {
            synchronized (this) {
                if (!this.f42461b) {
                    this.f42462c.add(runnable);
                } else {
                    runnable.run();
                }
            }
        }

        @Override // io.grpc.internal.k2
        public void a(k2.a aVar) {
            if (this.f42461b) {
                this.f42460a.a(aVar);
            } else {
                f(new a(aVar));
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void b(io.grpc.s0 s0Var) {
            f(new c(s0Var));
        }

        @Override // io.grpc.internal.k2
        public void c() {
            if (this.f42461b) {
                this.f42460a.c();
            } else {
                f(new b());
            }
        }

        @Override // io.grpc.internal.ClientStreamListener
        public void d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
            f(new d(status, rpcProgress, s0Var));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void g() {
            List<Runnable> list;
            List arrayList = new ArrayList();
            while (true) {
                synchronized (this) {
                    if (this.f42462c.isEmpty()) {
                        this.f42462c = null;
                        this.f42461b = true;
                        return;
                    }
                    list = this.f42462c;
                    this.f42462c = arrayList;
                }
                for (Runnable runnable : list) {
                    runnable.run();
                }
                list.clear();
                arrayList = list;
            }
        }
    }

    private void r(Runnable runnable) {
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        synchronized (this) {
            if (!this.f42427a) {
                this.f42431e.add(runnable);
            } else {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
        if (r0.hasNext() == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        ((java.lang.Runnable) r0.next()).run();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s() {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r3)
            java.util.List<java.lang.Runnable> r1 = r3.f42431e     // Catch: java.lang.Throwable -> L3b
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L3b
            if (r1 == 0) goto L1d
            r0 = 0
            r3.f42431e = r0     // Catch: java.lang.Throwable -> L3b
            r0 = 1
            r3.f42427a = r0     // Catch: java.lang.Throwable -> L3b
            io.grpc.internal.b0$o r0 = r3.f42432f     // Catch: java.lang.Throwable -> L3b
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L1c
            r0.g()
        L1c:
            return
        L1d:
            java.util.List<java.lang.Runnable> r1 = r3.f42431e     // Catch: java.lang.Throwable -> L3b
            r3.f42431e = r0     // Catch: java.lang.Throwable -> L3b
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3b
            java.util.Iterator r0 = r1.iterator()
        L26:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L36
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L26
        L36:
            r1.clear()
            r0 = r1
            goto L5
        L3b:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.b0.s():void");
    }

    private void t(ClientStreamListener clientStreamListener) {
        for (Runnable runnable : this.f42435i) {
            runnable.run();
        }
        this.f42435i = null;
        this.f42429c.o(clientStreamListener);
    }

    private void v(q qVar) {
        q qVar2 = this.f42429c;
        com.google.common.base.o.D(qVar2 == null, "realStream already set to %s", qVar2);
        this.f42429c = qVar;
        this.f42434h = System.nanoTime();
    }

    @Override // io.grpc.internal.j2
    public void a(io.grpc.o oVar) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        com.google.common.base.o.t(oVar, "compressor");
        this.f42435i.add(new c(oVar));
    }

    @Override // io.grpc.internal.j2
    public void b(int i9) {
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        if (this.f42427a) {
            this.f42429c.b(i9);
        } else {
            r(new a(i9));
        }
    }

    @Override // io.grpc.internal.q
    public void c(int i9) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        this.f42435i.add(new f(i9));
    }

    @Override // io.grpc.internal.q
    public void d(int i9) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        this.f42435i.add(new g(i9));
    }

    @Override // io.grpc.internal.q
    public void e(Status status) {
        boolean z10 = true;
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        com.google.common.base.o.t(status, "reason");
        synchronized (this) {
            if (this.f42429c == null) {
                v(o1.f42929a);
                this.f42430d = status;
                z10 = false;
            }
        }
        if (z10) {
            r(new m(status));
            return;
        }
        s();
        u(status);
        this.f42428b.d(status, ClientStreamListener.RpcProgress.PROCESSED, new io.grpc.s0());
    }

    @Override // io.grpc.internal.j2
    public void flush() {
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        if (this.f42427a) {
            this.f42429c.flush();
        } else {
            r(new l());
        }
    }

    @Override // io.grpc.internal.q
    public void g(io.grpc.v vVar) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        com.google.common.base.o.t(vVar, "decompressorRegistry");
        this.f42435i.add(new e(vVar));
    }

    @Override // io.grpc.internal.j2
    public void h(InputStream inputStream) {
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        com.google.common.base.o.t(inputStream, "message");
        if (this.f42427a) {
            this.f42429c.h(inputStream);
        } else {
            r(new k(inputStream));
        }
    }

    @Override // io.grpc.internal.j2
    public void i() {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        this.f42435i.add(new b());
    }

    @Override // io.grpc.internal.j2
    public boolean isReady() {
        if (this.f42427a) {
            return this.f42429c.isReady();
        }
        return false;
    }

    @Override // io.grpc.internal.q
    public void j(boolean z10) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        this.f42435i.add(new d(z10));
    }

    @Override // io.grpc.internal.q
    public void k(String str) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        com.google.common.base.o.t(str, "authority");
        this.f42435i.add(new j(str));
    }

    @Override // io.grpc.internal.q
    public void l(x0 x0Var) {
        synchronized (this) {
            if (this.f42428b == null) {
                return;
            }
            if (this.f42429c != null) {
                x0Var.b("buffered_nanos", Long.valueOf(this.f42434h - this.f42433g));
                this.f42429c.l(x0Var);
            } else {
                x0Var.b("buffered_nanos", Long.valueOf(System.nanoTime() - this.f42433g));
                x0Var.a("waiting_for_connection");
            }
        }
    }

    @Override // io.grpc.internal.q
    public void m() {
        com.google.common.base.o.A(this.f42428b != null, "May only be called after start");
        r(new n());
    }

    @Override // io.grpc.internal.q
    public void n(io.grpc.t tVar) {
        com.google.common.base.o.A(this.f42428b == null, "May only be called before start");
        this.f42435i.add(new h(tVar));
    }

    @Override // io.grpc.internal.q
    public void o(ClientStreamListener clientStreamListener) {
        Status status;
        boolean z10;
        com.google.common.base.o.t(clientStreamListener, "listener");
        com.google.common.base.o.A(this.f42428b == null, "already started");
        synchronized (this) {
            status = this.f42430d;
            z10 = this.f42427a;
            if (!z10) {
                o oVar = new o(clientStreamListener);
                this.f42432f = oVar;
                clientStreamListener = oVar;
            }
            this.f42428b = clientStreamListener;
            this.f42433g = System.nanoTime();
        }
        if (status != null) {
            clientStreamListener.d(status, ClientStreamListener.RpcProgress.PROCESSED, new io.grpc.s0());
        } else if (z10) {
            t(clientStreamListener);
        }
    }

    protected void u(Status status) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Runnable w(q qVar) {
        synchronized (this) {
            if (this.f42429c != null) {
                return null;
            }
            v((q) com.google.common.base.o.t(qVar, "stream"));
            ClientStreamListener clientStreamListener = this.f42428b;
            if (clientStreamListener == null) {
                this.f42431e = null;
                this.f42427a = true;
            }
            if (clientStreamListener == null) {
                return null;
            }
            t(clientStreamListener);
            return new i();
        }
    }
}
