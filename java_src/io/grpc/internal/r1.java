package io.grpc.internal;

import io.grpc.ConnectivityState;
import io.grpc.Status;
import io.grpc.n0;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
final class r1 extends io.grpc.n0 {

    /* renamed from: c  reason: collision with root package name */
    private final n0.d f43017c;

    /* renamed from: d  reason: collision with root package name */
    private n0.h f43018d;

    /* loaded from: classes5.dex */
    class a implements n0.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.h f43019a;

        a(n0.h hVar) {
            this.f43019a = hVar;
        }

        @Override // io.grpc.n0.j
        public void a(io.grpc.q qVar) {
            r1.this.h(this.f43019a, qVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43021a;

        static {
            int[] iArr = new int[ConnectivityState.values().length];
            f43021a = iArr;
            try {
                iArr[ConnectivityState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43021a[ConnectivityState.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f43021a[ConnectivityState.READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f43021a[ConnectivityState.TRANSIENT_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final n0.e f43022a;

        c(n0.e eVar) {
            this.f43022a = (n0.e) com.google.common.base.o.t(eVar, "result");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            return this.f43022a;
        }

        public String toString() {
            return com.google.common.base.j.b(c.class).d("result", this.f43022a).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class d extends n0.i {

        /* renamed from: a  reason: collision with root package name */
        private final n0.h f43023a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f43024b = new AtomicBoolean(false);

        /* loaded from: classes5.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f43023a.g();
            }
        }

        d(n0.h hVar) {
            this.f43023a = (n0.h) com.google.common.base.o.t(hVar, "subchannel");
        }

        @Override // io.grpc.n0.i
        public n0.e a(n0.f fVar) {
            if (this.f43024b.compareAndSet(false, true)) {
                r1.this.f43017c.h().execute(new a());
            }
            return n0.e.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r1(n0.d dVar) {
        this.f43017c = (n0.d) com.google.common.base.o.t(dVar, "helper");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(n0.h hVar, io.grpc.q qVar) {
        n0.i dVar;
        n0.i iVar;
        ConnectivityState c10 = qVar.c();
        if (c10 == ConnectivityState.SHUTDOWN) {
            return;
        }
        if (qVar.c() == ConnectivityState.TRANSIENT_FAILURE || qVar.c() == ConnectivityState.IDLE) {
            this.f43017c.j();
        }
        int i9 = b.f43021a[c10.ordinal()];
        if (i9 == 1) {
            dVar = new d(hVar);
        } else {
            if (i9 == 2) {
                iVar = new c(n0.e.g());
            } else if (i9 == 3) {
                dVar = new c(n0.e.h(hVar));
            } else if (i9 == 4) {
                iVar = new c(n0.e.f(qVar.d()));
            } else {
                throw new IllegalArgumentException("Unsupported state:" + c10);
            }
            this.f43017c.k(c10, iVar);
        }
        iVar = dVar;
        this.f43017c.k(c10, iVar);
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        n0.h hVar = this.f43018d;
        if (hVar != null) {
            hVar.h();
            this.f43018d = null;
        }
        this.f43017c.k(ConnectivityState.TRANSIENT_FAILURE, new c(n0.e.f(status)));
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        List<io.grpc.x> a10 = gVar.a();
        n0.h hVar = this.f43018d;
        if (hVar == null) {
            n0.h b10 = this.f43017c.b(n0.b.c().e(a10).b());
            b10.i(new a(b10));
            this.f43018d = b10;
            this.f43017c.k(ConnectivityState.CONNECTING, new c(n0.e.h(b10)));
            b10.g();
            return;
        }
        hVar.j(a10);
    }

    @Override // io.grpc.n0
    public void e() {
        n0.h hVar = this.f43018d;
        if (hVar != null) {
            hVar.h();
        }
    }
}
