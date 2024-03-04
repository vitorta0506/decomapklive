package eh;

import eh.j0;
import eh.n0;
import eh.s2;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.e0;
import io.grpc.xds.XdsInitializationException;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class f2 implements s2.b {

    /* renamed from: a  reason: collision with root package name */
    private final j0 f38747a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f38748b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<Map<String, ?>> f38749c;

    /* renamed from: d  reason: collision with root package name */
    private volatile io.grpc.internal.p1<p2> f38750d;

    /* loaded from: classes5.dex */
    static class a implements io.grpc.internal.p1<p2> {

        /* renamed from: b  reason: collision with root package name */
        private final j0.b f38752b;

        /* renamed from: d  reason: collision with root package name */
        private ScheduledExecutorService f38754d;

        /* renamed from: e  reason: collision with root package name */
        private p2 f38755e;

        /* renamed from: f  reason: collision with root package name */
        private int f38756f;

        /* renamed from: a  reason: collision with root package name */
        private final io.grpc.r f38751a = io.grpc.r.f45316e;

        /* renamed from: c  reason: collision with root package name */
        private final Object f38753c = new Object();

        a(j0.b bVar) {
            this.f38752b = (j0.b) com.google.common.base.o.s(bVar);
        }

        @Override // io.grpc.internal.p1
        /* renamed from: c */
        public p2 a() {
            p2 p2Var;
            synchronized (this.f38753c) {
                if (this.f38756f == 0) {
                    this.f38754d = (ScheduledExecutorService) io.grpc.internal.f2.d(GrpcUtil.f42362u);
                    this.f38755e = new n0(n0.r.f38982a, this.f38752b, this.f38751a, this.f38754d, new e0.a(), GrpcUtil.f42363v, io.grpc.internal.m2.f42901a, new ih.g(this.f38752b));
                }
                this.f38756f++;
                p2Var = this.f38755e;
            }
            return p2Var;
        }

        @Override // io.grpc.internal.p1
        /* renamed from: d */
        public p2 b(Object obj) {
            synchronized (this.f38753c) {
                int i9 = this.f38756f - 1;
                this.f38756f = i9;
                if (i9 == 0) {
                    this.f38755e.s();
                    this.f38755e = null;
                    this.f38754d = (ScheduledExecutorService) io.grpc.internal.f2.f(GrpcUtil.f42362u, this.f38754d);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final f2 f38757a = new f2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f2() {
        this(new k0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f2 c() {
        return b.f38757a;
    }

    @Override // eh.s2.b
    public void a(Map<String, ?> map) {
        this.f38749c.set(map);
    }

    @Override // eh.s2.b
    public io.grpc.internal.p1<p2> b() throws XdsInitializationException {
        j0.b a10;
        io.grpc.internal.p1<p2> p1Var = this.f38750d;
        if (p1Var == null) {
            synchronized (this.f38748b) {
                p1Var = this.f38750d;
                if (p1Var == null) {
                    Map<String, ?> map = this.f38749c.get();
                    if (map != null) {
                        a10 = this.f38747a.b(map);
                    } else {
                        a10 = this.f38747a.a();
                    }
                    if (!a10.g().isEmpty()) {
                        a aVar = new a(a10);
                        this.f38750d = aVar;
                        p1Var = aVar;
                    } else {
                        throw new XdsInitializationException("No xDS server provided");
                    }
                }
            }
        }
        return p1Var;
    }

    f2(j0 j0Var) {
        this.f38748b = new Object();
        this.f38749c = new AtomicReference<>();
        this.f38747a = (j0) com.google.common.base.o.t(j0Var, "bootstrapper");
    }
}
