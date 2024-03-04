package ig;

import com.google.common.io.BaseEncoding;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.grpc.InternalKnownTransport;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.a;
import io.grpc.internal.i2;
import io.grpc.internal.p2;
import io.grpc.internal.q2;
import io.grpc.internal.u0;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.s0;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class z extends io.grpc.internal.a {

    /* renamed from: o  reason: collision with root package name */
    private static final io.grpc.i0 f41345o;

    /* renamed from: h  reason: collision with root package name */
    private final b f41346h;

    /* renamed from: i  reason: collision with root package name */
    private final c f41347i;

    /* renamed from: j  reason: collision with root package name */
    private final o0 f41348j;

    /* renamed from: k  reason: collision with root package name */
    private final MethodDescriptor<?, ?> f41349k;

    /* renamed from: l  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.util.c f41350l;

    /* renamed from: m  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f41351m;

    /* renamed from: n  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f41352n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b implements a.b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements io.grpc.netty.shaded.io.netty.channel.j {
            a() {
            }

            @Override // ug.r
            /* renamed from: a */
            public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
                if (iVar.p0()) {
                    return;
                }
                Status a10 = z.this.y().f41359z.b1().a();
                if (a10 == null) {
                    a10 = z.this.y().e0(iVar);
                }
                if (z.this.y().a0()) {
                    z.this.y().O(a10, ClientStreamListener.RpcProgress.MISCARRIED, true, new s0());
                } else {
                    z.this.y().O(a10, ClientStreamListener.RpcProgress.PROCESSED, true, new s0());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: ig.z$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0460b implements io.grpc.netty.shaded.io.netty.channel.j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f41355a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f41356b;

            C0460b(int i9, int i10) {
                this.f41355a = i9;
                this.f41356b = i10;
            }

            @Override // ug.r
            /* renamed from: a */
            public void e(io.grpc.netty.shaded.io.netty.channel.i iVar) throws Exception {
                if (!iVar.p0() || z.this.y().Z() == null) {
                    return;
                }
                z.this.y().r(this.f41355a);
                z.this.w().e(this.f41356b);
            }
        }

        private b() {
        }

        private void a(q2 q2Var, boolean z10, boolean z11, int i9) {
            com.google.common.base.o.d(i9 >= 0);
            kg.j q22 = q2Var == null ? kg.s0.f53902d : ((d0) q2Var).c().q2();
            int P1 = q22.P1();
            if (P1 > 0) {
                z.this.s(P1);
                z.this.f41348j.c(new i0(z.this.y(), q22, z10), z11).c((ug.r<? extends ug.q<? super Void>>) new C0460b(P1, i9));
                return;
            }
            z.this.f41348j.c(new i0(z.this.y(), q22, z10), z11);
        }

        private void b(s0 s0Var, byte[] bArr) {
            io.grpc.netty.shaded.io.netty.util.c cVar;
            io.grpc.netty.shaded.io.netty.util.c cVar2;
            io.grpc.netty.shaded.io.netty.util.c cVar3 = (io.grpc.netty.shaded.io.netty.util.c) z.f41345o.a(z.this.f41349k);
            if (cVar3 == null) {
                cVar3 = new io.grpc.netty.shaded.io.netty.util.c(FileUtils.RES_PREFIX_STORAGE + z.this.f41349k.c());
                z.f41345o.b(z.this.f41349k, cVar3);
            }
            boolean z10 = true;
            boolean z11 = bArr != null;
            if (z11) {
                io.grpc.netty.shaded.io.netty.util.c cVar4 = new io.grpc.netty.shaded.io.netty.util.c(((Object) cVar3) + "?" + BaseEncoding.b().g(bArr));
                cVar = m0.f41212d;
                cVar2 = cVar4;
            } else {
                cVar = m0.f41211c;
                cVar2 = cVar3;
            }
            Http2Headers d10 = m0.d(s0Var, z.this.f41351m, cVar2, z.this.f41350l, cVar, z.this.f41352n);
            a aVar = new a();
            o0 o0Var = z.this.f41348j;
            e eVar = new e(d10, z.this.y(), z.this.x(), z11);
            if (z.this.f41349k.f().clientSendsOneMessage() && !z11) {
                z10 = false;
            }
            o0Var.c(eVar, z10).c((ug.r<? extends ug.q<? super Void>>) aVar);
        }

        @Override // io.grpc.internal.a.b
        public void e(Status status) {
            qh.c.g("NettyClientStream$Sink.cancel");
            try {
                z.this.f41348j.c(new ig.c(z.this.y(), status), true);
            } finally {
                qh.c.i("NettyClientStream$Sink.cancel");
            }
        }

        @Override // io.grpc.internal.a.b
        public void f(q2 q2Var, boolean z10, boolean z11, int i9) {
            qh.c.g("NettyClientStream$Sink.writeFrame");
            try {
                a(q2Var, z10, z11, i9);
            } finally {
                qh.c.i("NettyClientStream$Sink.writeFrame");
            }
        }

        @Override // io.grpc.internal.a.b
        public void g(s0 s0Var, byte[] bArr) {
            qh.c.g("NettyClientStream$Sink.writeHeaders");
            try {
                b(s0Var, bArr);
            } finally {
                qh.c.i("NettyClientStream$Sink.writeHeaders");
            }
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class c extends u0 implements k0 {
        private final io.grpc.netty.shaded.io.netty.channel.l0 A;
        private int B;
        private Http2Stream C;
        private qh.d D;

        /* renamed from: y  reason: collision with root package name */
        private final String f41358y;

        /* renamed from: z  reason: collision with root package name */
        private final y f41359z;

        /* JADX INFO: Access modifiers changed from: protected */
        public c(y yVar, io.grpc.netty.shaded.io.netty.channel.l0 l0Var, int i9, i2 i2Var, p2 p2Var, String str) {
            super(i9, i2Var, p2Var);
            this.f41358y = (String) com.google.common.base.o.t(str, "methodName");
            this.f41359z = (y) com.google.common.base.o.t(yVar, "handler");
            this.A = (io.grpc.netty.shaded.io.netty.channel.l0) com.google.common.base.o.t(l0Var, "eventLoop");
            this.D = qh.c.b(str);
        }

        @Override // ig.k0
        public int G() {
            return this.B;
        }

        @Override // io.grpc.internal.u0
        protected void R(Status status, boolean z10, s0 s0Var) {
            P(status, z10, s0Var);
            this.f41359z.c1().c(new ig.c(this, status), true);
        }

        public Http2Stream Z() {
            return this.C;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a0() {
            int i9 = this.B;
            return i9 == -1 || i9 == 0;
        }

        @Override // io.grpc.internal.l1.b
        public void b(int i9) {
            this.f41359z.m1(this.C, i9);
            this.f41359z.c1().f();
        }

        public void b0(Http2Stream http2Stream) {
            com.google.common.base.o.t(http2Stream, "http2Stream");
            com.google.common.base.o.A(this.C == null, "Can only set http2Stream once");
            this.C = http2Stream;
            s();
            m().c();
        }

        @Override // io.grpc.internal.l1.b
        public void c(Throwable th2) {
            R(Status.l(th2), true, new s0());
        }

        public void c0(int i9) {
            com.google.common.base.o.h(i9 > 0, "id must be positive %s", i9);
            int i10 = this.B;
            com.google.common.base.o.B(i10 == 0, "id has been previously set: %s", i10);
            this.B = i9;
            this.D = qh.c.c(this.f41358y, i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d0() {
            int i9 = this.B;
            com.google.common.base.o.B(i9 == 0, "Id has been previously set: %s", i9);
            this.B = -1;
        }

        @Override // io.grpc.internal.g.d
        public void e(Runnable runnable) {
            if (this.A.Y()) {
                runnable.run();
            } else {
                this.A.execute(runnable);
            }
        }

        protected abstract Status e0(io.grpc.netty.shaded.io.netty.channel.i iVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public void f0(kg.j jVar, boolean z10) {
            U(new b0(jVar.retain()), z10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void g0(Http2Headers http2Headers, boolean z10) {
            if (z10) {
                if (!I()) {
                    this.f41359z.c1().c(new ig.c(this, null), true);
                }
                W(m0.g(http2Headers));
                return;
            }
            V(m0.e(http2Headers));
        }

        @Override // ig.k0
        public final qh.d tag() {
            return this.D;
        }
    }

    static {
        f41345o = new io.grpc.i0(a0.class.getName().contains("grpc.netty.shaded") ? InternalKnownTransport.NETTY_SHADED : InternalKnownTransport.NETTY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(c cVar, MethodDescriptor<?, ?> methodDescriptor, s0 s0Var, io.grpc.netty.shaded.io.netty.channel.e eVar, io.grpc.netty.shaded.io.netty.util.c cVar2, io.grpc.netty.shaded.io.netty.util.c cVar3, io.grpc.netty.shaded.io.netty.util.c cVar4, i2 i2Var, p2 p2Var, io.grpc.c cVar5, boolean z10) {
        super(new e0(eVar.P()), i2Var, p2Var, s0Var, cVar5, z10 && methodDescriptor.g());
        this.f41346h = new b();
        this.f41347i = (c) com.google.common.base.o.t(cVar, "transportState");
        this.f41348j = cVar.f41359z.c1();
        this.f41349k = (MethodDescriptor) com.google.common.base.o.t(methodDescriptor, PushConstants.MZ_PUSH_MESSAGE_METHOD);
        this.f41350l = (io.grpc.netty.shaded.io.netty.util.c) com.google.common.base.o.t(cVar2, "authority");
        this.f41351m = (io.grpc.netty.shaded.io.netty.util.c) com.google.common.base.o.t(cVar3, "scheme");
        this.f41352n = cVar4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.a
    /* renamed from: I */
    public c y() {
        return this.f41347i;
    }

    @Override // io.grpc.internal.q
    public io.grpc.a f() {
        return this.f41347i.f41359z.a1();
    }

    @Override // io.grpc.internal.q
    public void k(String str) {
        this.f41350l = io.grpc.netty.shaded.io.netty.util.c.z((CharSequence) com.google.common.base.o.t(str, "authority"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.a
    /* renamed from: z */
    public b u() {
        return this.f41346h;
    }
}
