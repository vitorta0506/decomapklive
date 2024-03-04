package xg;

import com.google.common.io.BaseEncoding;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.a;
import io.grpc.internal.i2;
import io.grpc.internal.p2;
import io.grpc.internal.q2;
import io.grpc.internal.u0;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.s0;
import java.util.List;
import okio.Buffer;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class f extends io.grpc.internal.a {

    /* renamed from: r  reason: collision with root package name */
    private static final Buffer f59808r = new Buffer();

    /* renamed from: h  reason: collision with root package name */
    private final MethodDescriptor<?, ?> f59809h;

    /* renamed from: i  reason: collision with root package name */
    private final String f59810i;

    /* renamed from: j  reason: collision with root package name */
    private final i2 f59811j;

    /* renamed from: k  reason: collision with root package name */
    private String f59812k;

    /* renamed from: l  reason: collision with root package name */
    private Object f59813l;

    /* renamed from: m  reason: collision with root package name */
    private volatile int f59814m;

    /* renamed from: n  reason: collision with root package name */
    private final b f59815n;

    /* renamed from: o  reason: collision with root package name */
    private final a f59816o;

    /* renamed from: p  reason: collision with root package name */
    private final io.grpc.a f59817p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f59818q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements a.b {
        a() {
        }

        @Override // io.grpc.internal.a.b
        public void e(Status status) {
            qh.c.g("OkHttpClientStream$Sink.cancel");
            try {
                synchronized (f.this.f59815n.f59821z) {
                    f.this.f59815n.c0(status, true, null);
                }
            } finally {
                qh.c.i("OkHttpClientStream$Sink.cancel");
            }
        }

        @Override // io.grpc.internal.a.b
        public void f(q2 q2Var, boolean z10, boolean z11, int i9) {
            Buffer c10;
            qh.c.g("OkHttpClientStream$Sink.writeFrame");
            if (q2Var == null) {
                c10 = f.f59808r;
            } else {
                c10 = ((m) q2Var).c();
                int size = (int) c10.size();
                if (size > 0) {
                    f.this.s(size);
                }
            }
            try {
                synchronized (f.this.f59815n.f59821z) {
                    f.this.f59815n.e0(c10, z10, z11);
                    f.this.w().e(i9);
                }
            } finally {
                qh.c.i("OkHttpClientStream$Sink.writeFrame");
            }
        }

        @Override // io.grpc.internal.a.b
        public void g(s0 s0Var, byte[] bArr) {
            qh.c.g("OkHttpClientStream$Sink.writeHeaders");
            String str = FileUtils.RES_PREFIX_STORAGE + f.this.f59809h.c();
            if (bArr != null) {
                f.this.f59818q = true;
                str = str + "?" + BaseEncoding.b().g(bArr);
            }
            try {
                synchronized (f.this.f59815n.f59821z) {
                    f.this.f59815n.g0(s0Var, str);
                }
            } finally {
                qh.c.i("OkHttpClientStream$Sink.writeHeaders");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends u0 {
        private List<yg.c> A;
        private Buffer B;
        private boolean C;
        private boolean D;
        private boolean E;
        private int F;
        private int G;
        private final xg.b H;
        private final o I;
        private final g J;
        private boolean K;
        private final qh.d L;

        /* renamed from: y  reason: collision with root package name */
        private final int f59820y;

        /* renamed from: z  reason: collision with root package name */
        private final Object f59821z;

        public b(int i9, i2 i2Var, Object obj, xg.b bVar, o oVar, g gVar, int i10, String str) {
            super(i9, i2Var, f.this.w());
            this.B = new Buffer();
            this.C = false;
            this.D = false;
            this.E = false;
            this.K = true;
            this.f59821z = com.google.common.base.o.t(obj, "lock");
            this.H = bVar;
            this.I = oVar;
            this.J = gVar;
            this.F = i10;
            this.G = i10;
            this.f59820y = i10;
            this.L = qh.c.b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c0(Status status, boolean z10, s0 s0Var) {
            if (this.E) {
                return;
            }
            this.E = true;
            if (this.K) {
                this.J.j0(f.this);
                this.A = null;
                this.B.clear();
                this.K = false;
                if (s0Var == null) {
                    s0Var = new s0();
                }
                P(status, true, s0Var);
                return;
            }
            this.J.V(f.this.P(), status, ClientStreamListener.RpcProgress.PROCESSED, z10, ErrorCode.CANCEL, s0Var);
        }

        private void d0() {
            if (!I()) {
                this.J.V(f.this.P(), null, ClientStreamListener.RpcProgress.PROCESSED, false, ErrorCode.CANCEL, null);
            } else {
                this.J.V(f.this.P(), null, ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e0(Buffer buffer, boolean z10, boolean z11) {
            if (this.E) {
                return;
            }
            if (this.K) {
                this.B.write(buffer, (int) buffer.size());
                this.C |= z10;
                this.D |= z11;
                return;
            }
            com.google.common.base.o.A(f.this.P() != -1, "streamId should be set");
            this.I.c(z10, f.this.P(), buffer, z11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g0(s0 s0Var, String str) {
            this.A = c.a(s0Var, str, f.this.f59812k, f.this.f59810i, f.this.f59818q, this.J.d0());
            this.J.q0(f.this);
        }

        @Override // io.grpc.internal.u0
        protected void R(Status status, boolean z10, s0 s0Var) {
            c0(status, z10, s0Var);
        }

        @Override // io.grpc.internal.l1.b
        public void b(int i9) {
            int i10 = this.G - i9;
            this.G = i10;
            int i11 = this.f59820y;
            if (i10 <= i11 * 0.5f) {
                int i12 = i11 - i10;
                this.F += i12;
                this.G = i10 + i12;
                this.H.windowUpdate(f.this.P(), i12);
            }
        }

        @Override // io.grpc.internal.l1.b
        public void c(Throwable th2) {
            R(Status.l(th2), true, new s0());
        }

        @Override // io.grpc.internal.u0, io.grpc.internal.a.c, io.grpc.internal.l1.b
        public void d(boolean z10) {
            d0();
            super.d(z10);
        }

        @Override // io.grpc.internal.g.d
        public void e(Runnable runnable) {
            synchronized (this.f59821z) {
                runnable.run();
            }
        }

        public void f0(int i9) {
            com.google.common.base.o.B(f.this.f59814m == -1, "the stream has been started with id %s", i9);
            f.this.f59814m = i9;
            f.this.f59815n.s();
            if (this.K) {
                this.H.synStream(f.this.f59818q, false, f.this.f59814m, 0, this.A);
                f.this.f59811j.c();
                this.A = null;
                if (this.B.size() > 0) {
                    this.I.c(this.C, f.this.f59814m, this.B, this.D);
                }
                this.K = false;
            }
        }

        public void h0(Buffer buffer, boolean z10) {
            int size = this.F - ((int) buffer.size());
            this.F = size;
            if (size < 0) {
                this.H.g(f.this.P(), ErrorCode.FLOW_CONTROL_ERROR);
                this.J.V(f.this.P(), Status.f41718t.r("Received data size exceeded our receiving window size"), ClientStreamListener.RpcProgress.PROCESSED, false, null, null);
                return;
            }
            super.U(new j(buffer), z10);
        }

        public void i0(List<yg.c> list, boolean z10) {
            if (z10) {
                W(q.c(list));
            } else {
                V(q.a(list));
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.internal.d.a
        public void s() {
            super.s();
            m().c();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public qh.d tag() {
            return this.L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(MethodDescriptor<?, ?> methodDescriptor, s0 s0Var, xg.b bVar, g gVar, o oVar, Object obj, int i9, int i10, String str, String str2, i2 i2Var, p2 p2Var, io.grpc.c cVar, boolean z10) {
        super(new n(), i2Var, p2Var, s0Var, cVar, z10 && methodDescriptor.g());
        this.f59814m = -1;
        this.f59816o = new a();
        this.f59818q = false;
        this.f59811j = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
        this.f59809h = methodDescriptor;
        this.f59812k = str;
        this.f59810i = str2;
        this.f59817p = gVar.f();
        this.f59815n = new b(i9, i2Var, obj, bVar, oVar, gVar, i10, methodDescriptor.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object N() {
        return this.f59813l;
    }

    public MethodDescriptor.MethodType O() {
        return this.f59809h.f();
    }

    public int P() {
        return this.f59814m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(Object obj) {
        this.f59813l = obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.a
    /* renamed from: R */
    public b y() {
        return this.f59815n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S() {
        return this.f59818q;
    }

    @Override // io.grpc.internal.q
    public io.grpc.a f() {
        return this.f59817p;
    }

    @Override // io.grpc.internal.q
    public void k(String str) {
        this.f59812k = (String) com.google.common.base.o.t(str, "authority");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.internal.a
    /* renamed from: z */
    public a u() {
        return this.f59816o;
    }
}
