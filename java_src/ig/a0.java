package ig;

import com.facebook.appevents.integrity.IntegrityManager;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import ig.v;
import ig.z;
import io.grpc.ChannelLogger;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.c1;
import io.grpc.internal.i2;
import io.grpc.internal.k1;
import io.grpc.internal.p2;
import io.grpc.internal.r;
import io.grpc.internal.v0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.StreamBufferingEncoder;
import io.grpc.s0;
import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class a0 implements io.grpc.internal.u {
    private final ChannelLogger A;
    private final boolean B;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f41093a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<io.grpc.netty.shaded.io.netty.channel.r<?>, ?> f41094b;

    /* renamed from: c  reason: collision with root package name */
    private final SocketAddress f41095c;

    /* renamed from: d  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> f41096d;

    /* renamed from: e  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.channel.m0 f41097e;

    /* renamed from: f  reason: collision with root package name */
    private final g0 f41098f;

    /* renamed from: g  reason: collision with root package name */
    private final String f41099g;

    /* renamed from: h  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f41100h;

    /* renamed from: i  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f41101i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f41102j;

    /* renamed from: k  reason: collision with root package name */
    private final int f41103k;

    /* renamed from: l  reason: collision with root package name */
    private final int f41104l;

    /* renamed from: m  reason: collision with root package name */
    private final int f41105m;

    /* renamed from: n  reason: collision with root package name */
    private c1 f41106n;

    /* renamed from: o  reason: collision with root package name */
    private final long f41107o;

    /* renamed from: p  reason: collision with root package name */
    private final long f41108p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f41109q;

    /* renamed from: r  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f41110r;

    /* renamed from: s  reason: collision with root package name */
    private final Runnable f41111s;

    /* renamed from: t  reason: collision with root package name */
    private y f41112t;

    /* renamed from: u  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.e f41113u;

    /* renamed from: v  reason: collision with root package name */
    private Status f41114v;

    /* renamed from: w  reason: collision with root package name */
    private ig.d f41115w;

    /* renamed from: x  reason: collision with root package name */
    private final p2 f41116x;

    /* renamed from: y  reason: collision with root package name */
    private final io.grpc.a f41117y;

    /* renamed from: z  reason: collision with root package name */
    private final v.c f41118z;

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.a f41119a;

        a(r.a aVar) {
            this.f41119a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f41119a.onFailure(a0.this.f41114v.c());
        }
    }

    /* loaded from: classes5.dex */
    class b implements io.grpc.netty.shaded.io.netty.channel.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.a f41121a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Executor f41122b;

        b(r.a aVar, Executor executor) {
            this.f41121a = aVar;
            this.f41122b = executor;
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            v0.g(this.f41121a, this.f41122b, a0.this.l(iVar).c());
        }
    }

    /* loaded from: classes5.dex */
    class c extends z.c {
        c(y yVar, io.grpc.netty.shaded.io.netty.channel.l0 l0Var, int i9, i2 i2Var, p2 p2Var, String str) {
            super(yVar, l0Var, i9, i2Var, p2Var, str);
        }

        @Override // ig.z.c
        protected Status e0(io.grpc.netty.shaded.io.netty.channel.i iVar) {
            return a0.this.l(iVar);
        }
    }

    /* loaded from: classes5.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.f41115w.g(a0.this.f41114v);
        }
    }

    /* loaded from: classes5.dex */
    class e implements io.grpc.netty.shaded.io.netty.channel.j {
        e() {
        }

        @Override // ug.r
        /* renamed from: a */
        public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
            if (iVar.p0()) {
                return;
            }
            a0.this.f41115w.g(m0.s(iVar.L()));
        }
    }

    /* loaded from: classes5.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Status f41126a;

        f(Status status) {
            this.f41126a = status;
        }

        @Override // java.lang.Runnable
        public void run() {
            a0.this.f41115w.f(this.f41126a);
            a0.this.f41113u.c0(new h(this.f41126a));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(SocketAddress socketAddress, io.grpc.netty.shaded.io.netty.channel.h<? extends io.grpc.netty.shaded.io.netty.channel.e> hVar, Map<io.grpc.netty.shaded.io.netty.channel.r<?>, ?> map, io.grpc.netty.shaded.io.netty.channel.m0 m0Var, g0 g0Var, boolean z10, int i9, int i10, int i11, long j10, long j11, boolean z11, String str, String str2, Runnable runnable, p2 p2Var, io.grpc.a aVar, v.c cVar, ChannelLogger channelLogger, boolean z12) {
        g0 g0Var2 = (g0) com.google.common.base.o.t(g0Var, "negotiator");
        this.f41098f = g0Var2;
        this.f41110r = g0Var2.b();
        SocketAddress socketAddress2 = (SocketAddress) com.google.common.base.o.t(socketAddress, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        this.f41095c = socketAddress2;
        this.f41097e = (io.grpc.netty.shaded.io.netty.channel.m0) com.google.common.base.o.t(m0Var, "group");
        this.f41096d = hVar;
        this.f41094b = (Map) com.google.common.base.o.t(map, "channelOptions");
        this.f41102j = z10;
        this.f41103k = i9;
        this.f41104l = i10;
        this.f41105m = i11;
        this.f41107o = j10;
        this.f41108p = j11;
        this.f41109q = z11;
        this.f41099g = str;
        this.f41100h = new io.grpc.netty.shaded.io.netty.util.c(str);
        this.f41101i = new io.grpc.netty.shaded.io.netty.util.c(GrpcUtil.i("netty", str2));
        this.f41111s = (Runnable) com.google.common.base.o.t(runnable, "tooManyPingsRunnable");
        this.f41116x = (p2) com.google.common.base.o.t(p2Var, "transportTracer");
        this.f41117y = (io.grpc.a) com.google.common.base.o.t(aVar, "eagAttributes");
        this.f41118z = (v.c) com.google.common.base.o.t(cVar, "localSocketPicker");
        this.f41093a = io.grpc.g0.a(getClass(), socketAddress2.toString());
        this.A = (ChannelLogger) com.google.common.base.o.t(channelLogger, "channelLogger");
        this.B = z12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Status l(io.grpc.netty.shaded.io.netty.channel.i iVar) {
        Throwable L = iVar.L();
        if (!(L instanceof ClosedChannelException) && !(L instanceof StreamBufferingEncoder.Http2ChannelClosedException)) {
            return m0.s(L);
        }
        Status a10 = this.f41115w.a();
        return a10 == null ? Status.f41706h.r("Channel closed but for unknown reason").q(new ClosedChannelException().initCause(L)) : a10;
    }

    @Override // io.grpc.internal.k1
    public void b(Status status) {
        io.grpc.netty.shaded.io.netty.channel.e eVar = this.f41113u;
        if (eVar == null || !eVar.isOpen()) {
            return;
        }
        this.f41112t.c1().d(new f(status), true);
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return this.f41093a;
    }

    @Override // io.grpc.internal.r
    public void d(r.a aVar, Executor executor) {
        if (this.f41113u == null) {
            executor.execute(new a(aVar));
            return;
        }
        this.f41112t.c1().c(new j0(aVar, executor), true).c((ug.r<? extends ug.q<? super Void>>) new b(aVar, executor));
    }

    @Override // io.grpc.internal.r
    public io.grpc.internal.q e(MethodDescriptor<?, ?> methodDescriptor, s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
        com.google.common.base.o.t(methodDescriptor, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        com.google.common.base.o.t(s0Var, "headers");
        if (this.f41113u == null) {
            return new io.grpc.internal.f0(this.f41114v, kVarArr);
        }
        i2 h10 = i2.h(kVarArr, f(), s0Var);
        return new z(new c(this.f41112t, this.f41113u.a0(), this.f41104l, h10, this.f41116x, methodDescriptor.c()), methodDescriptor, s0Var, this.f41113u, this.f41100h, this.f41110r, this.f41101i, h10, this.f41116x, cVar, this.B);
    }

    @Override // io.grpc.internal.u
    public io.grpc.a f() {
        return this.f41112t.a1();
    }

    @Override // io.grpc.internal.k1
    public void g(Status status) {
        io.grpc.netty.shaded.io.netty.channel.e eVar = this.f41113u;
        if (eVar != null && eVar.isOpen()) {
            this.f41112t.c1().c(new i(status), true);
        }
    }

    @Override // io.grpc.internal.k1
    public Runnable h(k1.a aVar) {
        io.grpc.netty.shaded.io.netty.channel.r<Integer> q10;
        this.f41115w = new ig.d((k1.a) com.google.common.base.o.t(aVar, "listener"));
        io.grpc.netty.shaded.io.netty.channel.l0 next = this.f41097e.next();
        if (this.f41107o != Long.MAX_VALUE) {
            this.f41106n = new c1(new c1.c(this), next, this.f41107o, this.f41108p, this.f41109q);
        }
        y g12 = y.g1(this.f41115w, this.f41106n, this.f41102j, this.f41103k, this.f41105m, GrpcUtil.f42363v, this.f41111s, this.f41116x, this.f41117y, this.f41099g, this.A);
        this.f41112t = g12;
        io.grpc.netty.shaded.io.netty.channel.k a10 = this.f41098f.a(g12);
        jg.c cVar = new jg.c();
        cVar.u(io.grpc.netty.shaded.io.netty.channel.r.f43725f, m0.m(false));
        cVar.k(next);
        cVar.d(this.f41096d);
        cVar.u(io.grpc.netty.shaded.io.netty.channel.r.f43739t, Boolean.TRUE);
        if (this.f41107o != Long.MAX_VALUE && (q10 = m0.q()) != null) {
            cVar.u(q10, Integer.valueOf((int) TimeUnit.NANOSECONDS.toMillis(this.f41108p)));
        }
        for (Map.Entry<io.grpc.netty.shaded.io.netty.channel.r<?>, ?> entry : this.f41094b.entrySet()) {
            cVar.u(entry.getKey(), entry.getValue());
        }
        cVar.m(new n0(a10));
        io.grpc.netty.shaded.io.netty.channel.i w6 = cVar.w();
        if (w6.isDone() && !w6.p0()) {
            this.f41113u = null;
            Throwable L = w6.L();
            if (L == null) {
                L = new IllegalStateException("Channel is null, but future doesn't have a cause");
            }
            this.f41114v = m0.s(L);
            return new d();
        }
        io.grpc.netty.shaded.io.netty.channel.e d10 = w6.d();
        this.f41113u = d10;
        this.f41112t.q1(d10);
        this.f41113u.g(y.R).c((ug.r<? extends ug.q<? super Void>>) new e());
        SocketAddress a11 = this.f41118z.a(this.f41095c, this.f41117y);
        if (a11 != null) {
            this.f41113u.I(this.f41095c, a11);
        } else {
            this.f41113u.f(this.f41095c);
        }
        c1 c1Var = this.f41106n;
        if (c1Var != null) {
            c1Var.q();
        }
        return null;
    }

    public String toString() {
        return com.google.common.base.j.c(this).c("logId", this.f41093a.d()).d("remoteAddress", this.f41095c).d("channel", this.f41113u).toString();
    }
}
