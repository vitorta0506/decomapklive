package dh;

import com.google.common.base.j;
import com.google.common.base.o;
import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.n0;
/* loaded from: classes5.dex */
public final class d extends dh.a {

    /* renamed from: l  reason: collision with root package name */
    static final n0.i f38095l = new c();

    /* renamed from: c  reason: collision with root package name */
    private final n0 f38096c;

    /* renamed from: d  reason: collision with root package name */
    private final n0.d f38097d;

    /* renamed from: e  reason: collision with root package name */
    private n0.c f38098e;

    /* renamed from: f  reason: collision with root package name */
    private n0 f38099f;

    /* renamed from: g  reason: collision with root package name */
    private n0.c f38100g;

    /* renamed from: h  reason: collision with root package name */
    private n0 f38101h;

    /* renamed from: i  reason: collision with root package name */
    private ConnectivityState f38102i;

    /* renamed from: j  reason: collision with root package name */
    private n0.i f38103j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f38104k;

    /* loaded from: classes5.dex */
    class a extends n0 {

        /* renamed from: dh.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0378a extends n0.i {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f38106a;

            C0378a(Status status) {
                this.f38106a = status;
            }

            @Override // io.grpc.n0.i
            public n0.e a(n0.f fVar) {
                return n0.e.f(this.f38106a);
            }

            public String toString() {
                return j.b(C0378a.class).d("error", this.f38106a).toString();
            }
        }

        a() {
        }

        @Override // io.grpc.n0
        public void b(Status status) {
            d.this.f38097d.k(ConnectivityState.TRANSIENT_FAILURE, new C0378a(status));
        }

        @Override // io.grpc.n0
        public void d(n0.g gVar) {
            throw new IllegalStateException("GracefulSwitchLoadBalancer must switch to a load balancing policy before handling ResolvedAddresses");
        }

        @Override // io.grpc.n0
        public void e() {
        }
    }

    /* loaded from: classes5.dex */
    class b extends dh.b {

        /* renamed from: a  reason: collision with root package name */
        n0 f38108a;

        b() {
        }

        @Override // dh.b, io.grpc.n0.d
        public void k(ConnectivityState connectivityState, n0.i iVar) {
            if (this.f38108a == d.this.f38101h) {
                o.A(d.this.f38104k, "there's pending lb while current lb has been out of READY");
                d.this.f38102i = connectivityState;
                d.this.f38103j = iVar;
                if (connectivityState == ConnectivityState.READY) {
                    d.this.p();
                }
            } else if (this.f38108a == d.this.f38099f) {
                d.this.f38104k = connectivityState == ConnectivityState.READY;
                if (!d.this.f38104k && d.this.f38101h != d.this.f38096c) {
                    d.this.p();
                } else {
                    d.this.f38097d.k(connectivityState, iVar);
                }
            }
        }

        @Override // dh.b
        protected n0.d m() {
            return d.this.f38097d;
        }
    }

    /* loaded from: classes5.dex */
    class c extends n0.i {
        c() {
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return n0.e.g();
        }

        public String toString() {
            return "BUFFER_PICKER";
        }
    }

    public d(n0.d dVar) {
        a aVar = new a();
        this.f38096c = aVar;
        this.f38099f = aVar;
        this.f38101h = aVar;
        this.f38097d = (n0.d) o.t(dVar, "helper");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.f38097d.k(this.f38102i, this.f38103j);
        this.f38099f.e();
        this.f38099f = this.f38101h;
        this.f38098e = this.f38100g;
        this.f38101h = this.f38096c;
        this.f38100g = null;
    }

    @Override // dh.a, io.grpc.n0
    public void e() {
        this.f38101h.e();
        this.f38099f.e();
    }

    @Override // dh.a
    protected n0 f() {
        n0 n0Var = this.f38101h;
        return n0Var == this.f38096c ? this.f38099f : n0Var;
    }

    public void q(n0.c cVar) {
        o.t(cVar, "newBalancerFactory");
        if (cVar.equals(this.f38100g)) {
            return;
        }
        this.f38101h.e();
        this.f38101h = this.f38096c;
        this.f38100g = null;
        this.f38102i = ConnectivityState.CONNECTING;
        this.f38103j = f38095l;
        if (cVar.equals(this.f38098e)) {
            return;
        }
        b bVar = new b();
        n0 a10 = cVar.a(bVar);
        bVar.f38108a = a10;
        this.f38101h = a10;
        this.f38100g = cVar;
        if (this.f38104k) {
            return;
        }
        p();
    }
}
