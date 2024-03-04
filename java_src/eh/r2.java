package eh;

import androidx.webkit.ProxyConfig;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.e9;
import com.google.common.collect.w7;
import com.google.gson.Gson;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import eh.a;
import eh.c2;
import eh.j0;
import eh.j2;
import eh.l1;
import eh.l2;
import eh.p2;
import eh.q2;
import eh.s2;
import eh.u0;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.c;
import io.grpc.d0;
import io.grpc.g;
import io.grpc.internal.GrpcUtil;
import io.grpc.n0;
import io.grpc.s0;
import io.grpc.t0;
import io.grpc.y;
import io.grpc.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class r2 extends io.grpc.t0 {

    /* renamed from: u  reason: collision with root package name */
    static final c.a<String> f39177u = c.a.b("io.grpc.xds.CLUSTER_SELECTION_KEY");

    /* renamed from: v  reason: collision with root package name */
    static final c.a<Long> f39178v = c.a.b("io.grpc.xds.RPC_HASH_KEY");

    /* renamed from: w  reason: collision with root package name */
    static boolean f39179w;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g0 f39180a;

    /* renamed from: b  reason: collision with root package name */
    private final q2 f39181b;

    /* renamed from: c  reason: collision with root package name */
    private final String f39182c;

    /* renamed from: d  reason: collision with root package name */
    private final String f39183d;

    /* renamed from: e  reason: collision with root package name */
    private final t0.h f39184e;

    /* renamed from: f  reason: collision with root package name */
    private final io.grpc.d1 f39185f;

    /* renamed from: g  reason: collision with root package name */
    private final ScheduledExecutorService f39186g;

    /* renamed from: h  reason: collision with root package name */
    private final s2.b f39187h;

    /* renamed from: i  reason: collision with root package name */
    private final j2 f39188i;

    /* renamed from: j  reason: collision with root package name */
    private final m1 f39189j;

    /* renamed from: k  reason: collision with root package name */
    private final u2 f39190k;

    /* renamed from: l  reason: collision with root package name */
    private final ConcurrentMap<String, b> f39191l;

    /* renamed from: m  reason: collision with root package name */
    private final c f39192m;

    /* renamed from: n  reason: collision with root package name */
    private volatile e f39193n;

    /* renamed from: o  reason: collision with root package name */
    private t0.e f39194o;

    /* renamed from: p  reason: collision with root package name */
    private io.grpc.internal.p1<p2> f39195p;

    /* renamed from: q  reason: collision with root package name */
    private p2 f39196q;

    /* renamed from: r  reason: collision with root package name */
    private s2.a f39197r;

    /* renamed from: s  reason: collision with root package name */
    private d f39198s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f39199t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements io.grpc.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f39200a;

        a(List list) {
            this.f39200a = list;
        }

        @Override // io.grpc.h
        public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
            return io.grpc.j.c(dVar, this.f39200a).i(methodDescriptor, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicInteger f39201a;

        /* renamed from: b  reason: collision with root package name */
        final String f39202b;

        /* renamed from: c  reason: collision with root package name */
        final c2.a f39203c;

        private b(AtomicInteger atomicInteger, String str, c2.a aVar) {
            this.f39201a = atomicInteger;
            com.google.common.base.o.e((aVar == null) ^ (str == null), "There must be exactly one non-null value in traditionalCluster and pluginConfig");
            this.f39202b = str;
            this.f39203c = aVar;
        }

        static b b(AtomicInteger atomicInteger, String str) {
            return new b(atomicInteger, str, null);
        }

        static b c(AtomicInteger atomicInteger, c2.a aVar) {
            return new b(atomicInteger, null, aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, ?> d() {
            String str = this.f39202b;
            if (str != null) {
                return ImmutableMap.of("cds_experimental", ImmutableMap.of("cluster", str));
            }
            return ImmutableMap.of("rls_experimental", new ImmutableMap.b().h("routeLookupConfig", this.f39203c.a()).h("childPolicy", ImmutableList.of(ImmutableMap.of("cds_experimental", ImmutableMap.of()))).h("childPolicyConfigTargetFieldName", "cluster").a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c extends io.grpc.d0 {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f39205a;

            a(String str) {
                this.f39205a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (((b) r2.this.f39191l.get(this.f39205a)).f39201a.get() == 0) {
                    r2.this.f39191l.remove(this.f39205a);
                    r2.this.J();
                }
            }
        }

        /* loaded from: classes5.dex */
        class b implements io.grpc.h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f39207a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f39208b;

            /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
            /* loaded from: classes5.dex */
            class a<ReqT, RespT> extends y.a<ReqT, RespT> {

                /* renamed from: eh.r2$c$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes5.dex */
                class C0408a extends z.a<RespT> {

                    /* renamed from: b  reason: collision with root package name */
                    boolean f39211b;

                    C0408a(g.a aVar) {
                        super(aVar);
                    }

                    @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
                    public void a(Status status, io.grpc.s0 s0Var) {
                        if (!this.f39211b) {
                            b bVar = b.this;
                            c.this.d(bVar.f39207a);
                        }
                        e().a(status, s0Var);
                    }

                    @Override // io.grpc.z.a, io.grpc.z, io.grpc.x0, io.grpc.g.a
                    public void b(io.grpc.s0 s0Var) {
                        this.f39211b = true;
                        b bVar = b.this;
                        c.this.d(bVar.f39207a);
                        e().b(s0Var);
                    }
                }

                a(io.grpc.g gVar) {
                    super(gVar);
                }

                @Override // io.grpc.y, io.grpc.g
                public void e(g.a<RespT> aVar, io.grpc.s0 s0Var) {
                    f().e(new C0408a(aVar), s0Var);
                }
            }

            b(String str, long j10) {
                this.f39207a = str;
                this.f39208b = j10;
            }

            @Override // io.grpc.h
            public <ReqT, RespT> io.grpc.g<ReqT, RespT> a(MethodDescriptor<ReqT, RespT> methodDescriptor, io.grpc.c cVar, io.grpc.d dVar) {
                return new a(dVar.i(methodDescriptor, cVar.q(r2.f39177u, this.f39207a).q(r2.f39178v, Long.valueOf(this.f39208b))));
            }
        }

        private c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0096 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0006 A[ADDED_TO_REGION, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private long c(java.util.List<eh.l2.a.AbstractC0399a.b> r9, io.grpc.s0 r10) {
            /*
                r8 = this;
                java.util.Iterator r9 = r9.iterator()
                r0 = 0
                r1 = r0
            L6:
                boolean r2 = r9.hasNext()
                if (r2 == 0) goto L98
                java.lang.Object r2 = r9.next()
                eh.l2$a$a$b r2 = (eh.l2.a.AbstractC0399a.b) r2
                eh.l2$a$a$b$a r3 = r2.h()
                eh.l2$a$a$b$a r4 = eh.l2.a.AbstractC0399a.b.EnumC0401a.HEADER
                if (r3 != r4) goto L4f
                java.lang.String r3 = r2.d()
                java.lang.String r3 = eh.r2.m(r10, r3)
                if (r3 == 0) goto L70
                com.google.re2j.Pattern r4 = r2.f()
                if (r4 == 0) goto L40
                java.lang.String r4 = r2.g()
                if (r4 == 0) goto L40
                com.google.re2j.Pattern r4 = r2.f()
                com.google.re2j.h r3 = r4.matcher(r3)
                java.lang.String r4 = r2.g()
                java.lang.String r3 = r3.o(r4)
            L40:
                eh.r2 r4 = eh.r2.this
                eh.u2 r4 = eh.r2.n(r4)
                long r3 = r4.b(r3)
                java.lang.Long r3 = java.lang.Long.valueOf(r3)
                goto L71
            L4f:
                eh.l2$a$a$b$a r3 = r2.h()
                eh.l2$a$a$b$a r4 = eh.l2.a.AbstractC0399a.b.EnumC0401a.CHANNEL_ID
                if (r3 != r4) goto L70
                eh.r2 r3 = eh.r2.this
                eh.u2 r3 = eh.r2.n(r3)
                eh.r2 r4 = eh.r2.this
                io.grpc.g0 r4 = eh.r2.o(r4)
                long r4 = r4.d()
                long r3 = r3.d(r4)
                java.lang.Long r3 = java.lang.Long.valueOf(r3)
                goto L71
            L70:
                r3 = r0
            L71:
                if (r3 == 0) goto L90
                if (r1 == 0) goto L84
                long r4 = r1.longValue()
                r6 = 1
                long r4 = r4 << r6
                long r6 = r1.longValue()
                r1 = 63
                long r6 = r6 >> r1
                long r4 = r4 | r6
                goto L86
            L84:
                r4 = 0
            L86:
                long r6 = r3.longValue()
                long r3 = r4 ^ r6
                java.lang.Long r1 = java.lang.Long.valueOf(r3)
            L90:
                boolean r2 = r2.e()
                if (r2 == 0) goto L6
                if (r1 == 0) goto L6
            L98:
                if (r1 != 0) goto La5
                eh.r2 r9 = eh.r2.this
                eh.j2 r9 = eh.r2.w(r9)
                long r9 = r9.a()
                goto La9
            La5:
                long r9 = r1.longValue()
            La9:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: eh.r2.c.c(java.util.List, io.grpc.s0):long");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(String str) {
            if (((b) r2.this.f39191l.get(str)).f39201a.decrementAndGet() == 0) {
                r2.this.f39185f.execute(new a(str));
            }
        }

        private boolean e(String str) {
            int i9;
            b bVar = (b) r2.this.f39191l.get(str);
            if (bVar == null) {
                return false;
            }
            AtomicInteger atomicInteger = bVar.f39201a;
            do {
                i9 = atomicInteger.get();
                if (i9 == 0) {
                    return false;
                }
            } while (!atomicInteger.compareAndSet(i9, i9 + 1));
            return true;
        }

        @Override // io.grpc.d0
        public d0.b a(n0.f fVar) {
            e eVar;
            HashMap hashMap;
            io.grpc.h b10;
            ArrayList arrayList = new ArrayList();
            io.grpc.s0 b11 = fVar.b();
            Long l10 = null;
            l2.a aVar = null;
            String str = null;
            do {
                eVar = r2.this.f39193n;
                hashMap = new HashMap(eVar.f39240d);
                Iterator<l2.a> it = eVar.f39238b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    l2.a next = it.next();
                    if (r2.G(next.f(), FileUtils.RES_PREFIX_STORAGE + fVar.c().c(), b11, r2.this.f39188i)) {
                        hashMap.putAll(next.b());
                        aVar = next;
                        break;
                    }
                }
                if (aVar == null) {
                    return d0.b.a(Status.f41719u.r("Could not find xDS route matching RPC"));
                }
                if (aVar.e() == null) {
                    return d0.b.a(Status.f41719u.r("Could not route RPC to Route with non-forwarding action"));
                }
                l2.a.AbstractC0399a e10 = aVar.e();
                if (e10.a() != null) {
                    str = r2.H(e10.a());
                } else if (e10.j() != null) {
                    e9<l2.a.AbstractC0399a.AbstractC0400a> it2 = e10.j().iterator();
                    int i9 = 0;
                    int i10 = 0;
                    while (it2.hasNext()) {
                        i10 += it2.next().d();
                    }
                    int b12 = r2.this.f39188i.b(i10);
                    e9<l2.a.AbstractC0399a.AbstractC0400a> it3 = e10.j().iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        l2.a.AbstractC0399a.AbstractC0400a next2 = it3.next();
                        i9 += next2.d();
                        if (b12 < i9) {
                            str = r2.H(next2.c());
                            hashMap.putAll(next2.b());
                            break;
                        }
                    }
                } else if (e10.g() != null) {
                    str = r2.I(e10.g().c());
                }
            } while (!e(str));
            if (r2.f39179w) {
                Long i11 = aVar.e().i();
                if (i11 == null) {
                    i11 = Long.valueOf(eVar.f39237a);
                }
                if (i11.longValue() > 0) {
                    l10 = i11;
                }
            }
            t0.c a10 = r2.this.f39184e.a(r2.C(l10, aVar.e().h()));
            Object c10 = a10.c();
            if (c10 == null) {
                d(str);
                return d0.b.a(a10.d().f("Failed to parse service config (method config)"));
            }
            List<l1.c> list = eVar.f39239c;
            if (list != null) {
                for (l1.c cVar : list) {
                    l1.b bVar = cVar.f38877b;
                    l1 a11 = r2.this.f39189j.a(bVar.a());
                    if ((a11 instanceof l1.a) && (b10 = ((l1.a) a11).b(bVar, (l1.b) hashMap.get(cVar.f38876a), fVar, r2.this.f39186g)) != null) {
                        arrayList.add(b10);
                    }
                }
            }
            arrayList.add(new b(str, c(aVar.e().f(), b11)));
            return d0.b.e().b(c10).c(r2.z(arrayList)).a();
        }

        /* synthetic */ c(r2 r2Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class d implements p2.f {

        /* renamed from: a  reason: collision with root package name */
        private final t0.c f39213a;

        /* renamed from: b  reason: collision with root package name */
        private final t0.g f39214b;

        /* renamed from: c  reason: collision with root package name */
        private final String f39215c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f39216d;

        /* renamed from: e  reason: collision with root package name */
        private Set<String> f39217e;

        /* renamed from: f  reason: collision with root package name */
        private C0409d f39218f;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p2.g f39220a;

            a(p2.g gVar) {
                this.f39220a = gVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f39216d) {
                    return;
                }
                q2 q2Var = r2.this.f39181b;
                q2.b bVar = q2.b.INFO;
                q2Var.c(bVar, "Receive LDS resource update: {0}", this.f39220a);
                n1 c10 = this.f39220a.c();
                ImmutableList<l2> g10 = c10.g();
                String f10 = c10.f();
                d.this.p();
                if (g10 != null) {
                    d.this.t(g10, c10.e(), c10.d());
                    return;
                }
                d dVar = d.this;
                dVar.f39218f = new C0409d(dVar, f10, c10.e(), c10.d(), null);
                r2.this.f39181b.c(bVar, "Start watching RDS resource {0}", f10);
                r2.this.f39196q.w(f10, d.this.f39218f);
            }
        }

        /* loaded from: classes5.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Status f39222a;

            b(Status status) {
                this.f39222a = status;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f39216d || r2.this.f39199t) {
                    return;
                }
                r2.this.f39194o.a(Status.f41719u.q(this.f39222a.m()).r(String.format("Unable to load LDS %s. xDS server returned: %s: %s.", d.this.f39215c, this.f39222a.n(), this.f39222a.o())));
            }
        }

        /* loaded from: classes5.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f39224a;

            c(String str) {
                this.f39224a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f39216d) {
                    return;
                }
                r2.this.f39181b.c(q2.b.INFO, "LDS resource {0} unavailable", this.f39224a);
                d.this.p();
                d.this.q();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: eh.r2$d$d  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0409d implements p2.h {

            /* renamed from: a  reason: collision with root package name */
            private final String f39226a;

            /* renamed from: b  reason: collision with root package name */
            private final long f39227b;

            /* renamed from: c  reason: collision with root package name */
            private final List<l1.c> f39228c;

            /* renamed from: eh.r2$d$d$a */
            /* loaded from: classes5.dex */
            class a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ p2.i f39230a;

                a(p2.i iVar) {
                    this.f39230a = iVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0409d c0409d = C0409d.this;
                    if (c0409d != d.this.f39218f) {
                        return;
                    }
                    r2.this.f39181b.c(q2.b.INFO, "Received RDS resource update: {0}", this.f39230a);
                    C0409d c0409d2 = C0409d.this;
                    d.this.t(this.f39230a.f39086a, c0409d2.f39227b, C0409d.this.f39228c);
                }
            }

            /* renamed from: eh.r2$d$d$b */
            /* loaded from: classes5.dex */
            class b implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Status f39232a;

                b(Status status) {
                    this.f39232a = status;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0409d c0409d = C0409d.this;
                    if (c0409d != d.this.f39218f || r2.this.f39199t) {
                        return;
                    }
                    r2.this.f39194o.a(Status.f41719u.q(this.f39232a.m()).r(String.format("Unable to load RDS %s. xDS server returned: %s: %s.", C0409d.this.f39226a, this.f39232a.n(), this.f39232a.o())));
                }
            }

            /* renamed from: eh.r2$d$d$c */
            /* loaded from: classes5.dex */
            class c implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f39234a;

                c(String str) {
                    this.f39234a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C0409d c0409d = C0409d.this;
                    if (c0409d != d.this.f39218f) {
                        return;
                    }
                    r2.this.f39181b.c(q2.b.INFO, "RDS resource {0} unavailable", this.f39234a);
                    d.this.q();
                }
            }

            /* synthetic */ C0409d(d dVar, String str, long j10, List list, a aVar) {
                this(str, j10, list);
            }

            @Override // eh.p2.m
            public void a(Status status) {
                r2.this.f39185f.execute(new b(status));
            }

            @Override // eh.p2.m
            public void b(String str) {
                r2.this.f39185f.execute(new c(str));
            }

            @Override // eh.p2.h
            public void c(p2.i iVar) {
                r2.this.f39185f.execute(new a(iVar));
            }

            private C0409d(String str, long j10, List<l1.c> list) {
                this.f39226a = str;
                this.f39227b = j10;
                this.f39228c = list;
            }
        }

        d(String str) {
            t0.c a10 = r2.this.f39184e.a(Collections.emptyMap());
            this.f39213a = a10;
            this.f39214b = t0.g.d().d(a10).a();
            this.f39215c = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p() {
            C0409d c0409d = this.f39218f;
            if (c0409d != null) {
                String str = c0409d.f39226a;
                r2.this.f39181b.c(q2.b.INFO, "Stop watching RDS resource {0}", str);
                r2.this.f39196q.m(str, this.f39218f);
                this.f39218f = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q() {
            Set<String> set = this.f39217e;
            if (set != null) {
                for (String str : set) {
                    if (((b) r2.this.f39191l.get(str)).f39201a.decrementAndGet() == 0) {
                        r2.this.f39191l.remove(str);
                    }
                }
                this.f39217e = null;
            }
            r2.this.f39193n = e.f39236e;
            r2.this.f39194o.c(this.f39214b);
            r2.this.f39199t = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            r2.this.f39181b.c(q2.b.INFO, "Start watching LDS resource {0}", this.f39215c);
            r2.this.f39196q.v(this.f39215c, this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s() {
            r2.this.f39181b.c(q2.b.INFO, "Stop watching LDS resource {0}", this.f39215c);
            this.f39216d = true;
            p();
            r2.this.f39196q.l(this.f39215c, this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(List<l2> list, long j10, List<l1.c> list2) {
            l2 B = r2.B(list, this.f39215c);
            boolean z10 = false;
            if (B == null) {
                r2.this.f39181b.c(q2.b.WARNING, "Failed to find virtual host matching hostname {0}", this.f39215c);
                q();
                return;
            }
            ImmutableList<l2.a> e10 = B.e();
            HashSet<String> hashSet = new HashSet();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            for (l2.a aVar : e10) {
                l2.a.AbstractC0399a e11 = aVar.e();
                if (e11 != null) {
                    if (e11.a() != null) {
                        String H = r2.H(e11.a());
                        hashSet.add(H);
                        hashMap.put(H, e11.a());
                    } else if (e11.j() != null) {
                        e9<l2.a.AbstractC0399a.AbstractC0400a> it = e11.j().iterator();
                        while (it.hasNext()) {
                            l2.a.AbstractC0399a.AbstractC0400a next = it.next();
                            String H2 = r2.H(next.c());
                            hashSet.add(H2);
                            hashMap.put(H2, next.c());
                        }
                    } else if (e11.g() != null) {
                        u0.b a10 = e11.g().a();
                        if (a10 instanceof c2.a) {
                            String I = r2.I(e11.g().c());
                            hashSet.add(I);
                            hashMap2.put(I, (c2.a) a10);
                        }
                    }
                }
            }
            Set<String> set = this.f39217e;
            boolean z11 = set == null;
            Set<String> a11 = set == null ? hashSet : w7.a(hashSet, set);
            Set<String> set2 = this.f39217e;
            Set<String> emptySet = set2 == null ? Collections.emptySet() : w7.a(set2, hashSet);
            this.f39217e = hashSet;
            for (String str : a11) {
                if (r2.this.f39191l.containsKey(str)) {
                    ((b) r2.this.f39191l.get(str)).f39201a.incrementAndGet();
                } else {
                    if (hashMap.containsKey(str)) {
                        r2.this.f39191l.put(str, b.b(new AtomicInteger(1), (String) hashMap.get(str)));
                    }
                    if (hashMap2.containsKey(str)) {
                        r2.this.f39191l.put(str, b.c(new AtomicInteger(1), (c2.a) hashMap2.get(str)));
                    }
                    z11 = true;
                }
            }
            for (String str2 : hashSet) {
                c2.a aVar2 = (c2.a) hashMap2.get(str2);
                if (!Objects.equals(aVar2, ((b) r2.this.f39191l.get(str2)).f39203c)) {
                    r2.this.f39191l.put(str2, b.c(((b) r2.this.f39191l.get(str2)).f39201a, aVar2));
                    z11 = true;
                }
            }
            if (z11) {
                r2.this.J();
            }
            r2.this.f39193n = new e(j10, e10, list2, B.c(), null);
            for (String str3 : emptySet) {
                if (((b) r2.this.f39191l.get(str3)).f39201a.decrementAndGet() == 0) {
                    r2.this.f39191l.remove(str3);
                    z10 = true;
                }
            }
            if (z10) {
                r2.this.J();
            }
        }

        @Override // eh.p2.m
        public void a(Status status) {
            r2.this.f39185f.execute(new b(status));
        }

        @Override // eh.p2.m
        public void b(String str) {
            r2.this.f39185f.execute(new c(str));
        }

        @Override // eh.p2.f
        public void e(p2.g gVar) {
            r2.this.f39185f.execute(new a(gVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class e {

        /* renamed from: e  reason: collision with root package name */
        private static e f39236e = new e(0, Collections.emptyList(), null, Collections.emptyMap());

        /* renamed from: a  reason: collision with root package name */
        private final long f39237a;

        /* renamed from: b  reason: collision with root package name */
        final List<l2.a> f39238b;

        /* renamed from: c  reason: collision with root package name */
        final List<l1.c> f39239c;

        /* renamed from: d  reason: collision with root package name */
        final Map<String, l1.b> f39240d;

        /* synthetic */ e(long j10, List list, List list2, Map map, a aVar) {
            this(j10, list, list2, map);
        }

        private e(long j10, List<l2.a> list, List<l1.c> list2, Map<String, l1.b> map) {
            this.f39237a = j10;
            this.f39238b = list;
            com.google.common.base.o.e(list2 == null || !list2.isEmpty(), "filterChain is empty");
            this.f39239c = list2 == null ? null : Collections.unmodifiableList(list2);
            this.f39240d = Collections.unmodifiableMap(map);
        }
    }

    static {
        f39179w = com.google.common.base.v.b(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_TIMEOUT")) || Boolean.parseBoolean(System.getenv("GRPC_XDS_EXPERIMENTAL_ENABLE_TIMEOUT"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r2(String str, String str2, t0.h hVar, io.grpc.d1 d1Var, ScheduledExecutorService scheduledExecutorService, Map<String, ?> map) {
        this(str, str2, hVar, d1Var, scheduledExecutorService, f2.c(), j2.a.f38802a, m1.b(), map);
    }

    private static String A(String str, String str2) {
        return str.replace("%s", str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
        if (r6.startsWith(androidx.webkit.ProxyConfig.MATCH_ALL_SCHEMES) != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x001c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static eh.l2 B(java.util.List<eh.l2> r10, java.lang.String r11) {
        /*
            java.util.Iterator r10 = r10.iterator()
            r0 = 0
            r1 = -1
            r2 = 0
            r3 = 0
        L8:
            boolean r4 = r10.hasNext()
            if (r4 == 0) goto L59
            java.lang.Object r4 = r10.next()
            eh.l2 r4 = (eh.l2) r4
            com.google.common.collect.ImmutableList r5 = r4.b()
            com.google.common.collect.e9 r5 = r5.iterator()
        L1c:
            boolean r6 = r5.hasNext()
            r7 = 1
            if (r6 == 0) goto L57
            java.lang.Object r6 = r5.next()
            java.lang.String r6 = (java.lang.String) r6
            boolean r8 = E(r11, r6)
            if (r8 == 0) goto L4e
            java.lang.String r8 = "*"
            boolean r9 = r6.contains(r8)
            if (r9 != 0) goto L3a
            r2 = r4
            r3 = 1
            goto L57
        L3a:
            int r9 = r6.length()
            if (r9 <= r1) goto L41
            goto L4f
        L41:
            int r9 = r6.length()
            if (r9 != r1) goto L4e
            boolean r8 = r6.startsWith(r8)
            if (r8 == 0) goto L4e
            goto L4f
        L4e:
            r7 = 0
        L4f:
            if (r7 == 0) goto L1c
            int r1 = r6.length()
            r2 = r4
            goto L1c
        L57:
            if (r3 == 0) goto L8
        L59:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: eh.r2.B(java.util.List, java.lang.String):eh.l2");
    }

    static Map<String, ?> C(Long l10, l2.a.AbstractC0399a.c cVar) {
        if (l10 == null && (cVar == null || cVar.f().isEmpty())) {
            return Collections.emptyMap();
        }
        ImmutableMap.b builder = ImmutableMap.builder();
        builder.h("name", Collections.singletonList(Collections.emptyMap()));
        if (cVar != null && !cVar.f().isEmpty()) {
            ImmutableMap.b builder2 = ImmutableMap.builder();
            builder2.h("maxAttempts", Double.valueOf(cVar.c()));
            builder2.h("initialBackoff", v6.a.i(cVar.b()));
            builder2.h("maxBackoff", v6.a.i(cVar.d()));
            builder2.h("backoffMultiplier", Double.valueOf(2.0d));
            ArrayList arrayList = new ArrayList(cVar.f().size());
            e9<Status.Code> it = cVar.f().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().name());
            }
            builder2.h("retryableStatusCodes", Collections.unmodifiableList(arrayList));
            if (cVar.e() != null) {
                builder2.h("perAttemptRecvTimeout", v6.a.i(cVar.e()));
            }
            builder.h("retryPolicy", builder2.a());
        }
        if (l10 != null) {
            builder.h("timeout", (l10.longValue() / 1.0E9d) + NotifyType.SOUND);
        }
        return Collections.singletonMap("methodConfig", Collections.singletonList(builder.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String D(io.grpc.s0 s0Var, String str) {
        if (str.endsWith("-bin")) {
            return null;
        }
        if (str.equals("content-type")) {
            return "application/grpc";
        }
        try {
            Iterable<? extends Object> l10 = s0Var.l(s0.i.e(str, io.grpc.s0.f45383e));
            if (l10 == null) {
                return null;
            }
            return com.google.common.base.i.h(",").d(l10);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static boolean E(String str, String str2) {
        com.google.common.base.o.e((str.length() == 0 || str.startsWith(".") || str.endsWith(".")) ? false : true, "Invalid host name");
        com.google.common.base.o.e((str2.length() == 0 || str2.startsWith(".") || str2.endsWith(".")) ? false : true, "Invalid pattern/domain name");
        Locale locale = Locale.US;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        if (!lowerCase2.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
            return lowerCase.equals(lowerCase2);
        }
        if (lowerCase2.length() == 1) {
            return true;
        }
        int indexOf = lowerCase2.indexOf(42);
        if (lowerCase2.indexOf(42, indexOf + 1) != -1) {
            return false;
        }
        if ((indexOf == 0 || indexOf == lowerCase2.length() - 1) && lowerCase.length() >= lowerCase2.length()) {
            if (indexOf == 0 && lowerCase.endsWith(lowerCase2.substring(1))) {
                return true;
            }
            return indexOf == lowerCase2.length() - 1 && lowerCase.startsWith(lowerCase2.substring(0, lowerCase2.length() - 1));
        }
        return false;
    }

    private static boolean F(l2.a.b.AbstractC0402a abstractC0402a, String str) {
        if (abstractC0402a.f() != null) {
            if (abstractC0402a.a()) {
                return abstractC0402a.f().equals(str);
            }
            return abstractC0402a.f().equalsIgnoreCase(str);
        } else if (abstractC0402a.g() != null) {
            if (abstractC0402a.a()) {
                return str.startsWith(abstractC0402a.g());
            }
            return str.toLowerCase().startsWith(abstractC0402a.g().toLowerCase());
        } else {
            return abstractC0402a.h().matches(str);
        }
    }

    static boolean G(l2.a.b bVar, String str, io.grpc.s0 s0Var, j2 j2Var) {
        if (F(bVar.d(), str)) {
            e9<fh.i> it = bVar.c().iterator();
            while (it.hasNext()) {
                fh.i next = it.next();
                if (!next.j(D(s0Var, next.k()))) {
                    return false;
                }
            }
            fh.h b10 = bVar.b();
            return b10 == null || j2Var.b(b10.b()) < b10.c();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String H(String str) {
        return "cluster:" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String I(String str) {
        return "cluster_specifier_plugin:" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        this.f39185f.e();
        ImmutableMap.b bVar = new ImmutableMap.b();
        for (String str : this.f39191l.keySet()) {
            bVar.h(str, ImmutableMap.of("lbPolicy", ImmutableList.of(this.f39191l.get(str).d())));
        }
        ImmutableMap of2 = ImmutableMap.of("loadBalancingConfig", ImmutableList.of(ImmutableMap.of("cluster_manager_experimental", ImmutableMap.of("childPolicy", bVar.a()))));
        q2 q2Var = this.f39181b;
        q2.b bVar2 = q2.b.INFO;
        if (q2Var.a(bVar2)) {
            this.f39181b.c(bVar2, "Generated service config:\n{0}", new Gson().toJson(of2));
        }
        this.f39194o.c(t0.g.d().c(io.grpc.a.c().d(o1.f39035b, this.f39195p).d(o1.f39036c, this.f39197r).d(io.grpc.d0.f42306a, this.f39192m).a()).d(this.f39184e.a(of2)).a());
        this.f39199t = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static io.grpc.h z(List<io.grpc.h> list) {
        com.google.common.base.o.e(!list.isEmpty(), "empty interceptors");
        if (list.size() == 1) {
            return list.get(0);
        }
        return new a(list);
    }

    @Override // io.grpc.t0
    public String a() {
        return this.f39183d;
    }

    @Override // io.grpc.t0
    public void c() {
        this.f39181b.b(q2.b.INFO, "Shutdown");
        d dVar = this.f39198s;
        if (dVar != null) {
            dVar.s();
        }
        p2 p2Var = this.f39196q;
        if (p2Var != null) {
            this.f39196q = this.f39195p.b(p2Var);
        }
    }

    @Override // io.grpc.t0
    public void d(t0.e eVar) {
        String a10;
        this.f39194o = (t0.e) com.google.common.base.o.t(eVar, "listener");
        try {
            io.grpc.internal.p1<p2> b10 = this.f39187h.b();
            this.f39195p = b10;
            p2 a11 = b10.a();
            this.f39196q = a11;
            j0.b o10 = a11.o();
            if (this.f39182c == null) {
                a10 = o10.d();
            } else {
                j0.a aVar = o10.a().get(this.f39182c);
                if (aVar == null) {
                    eVar.a(Status.f41707i.r("invalid target URI: target authority not found in the bootstrap"));
                    return;
                }
                a10 = aVar.a();
            }
            String str = this.f39183d;
            if (a10.startsWith("xdstp:")) {
                str = p2.r(str);
            }
            String A = A(a10, str);
            a.f fVar = a.f.LDS;
            if (!p2.q(A, fVar.b()) && !p2.q(A, fVar.c())) {
                Status status = Status.f41707i;
                eVar.a(status.r("invalid listener resource URI for service authority: " + this.f39183d));
                return;
            }
            String n9 = p2.n(A);
            this.f39197r = e2.c();
            d dVar = new d(n9);
            this.f39198s = dVar;
            dVar.r();
        } catch (Exception e10) {
            eVar.a(Status.f41719u.r("Failed to initialize xDS").q(e10));
        }
    }

    r2(String str, String str2, t0.h hVar, io.grpc.d1 d1Var, ScheduledExecutorService scheduledExecutorService, s2.b bVar, j2 j2Var, m1 m1Var, Map<String, ?> map) {
        s2.b f2Var;
        this.f39190k = u2.f39345c;
        this.f39191l = new ConcurrentHashMap();
        this.f39192m = new c(this, null);
        this.f39193n = e.f39236e;
        this.f39182c = str;
        this.f39183d = GrpcUtil.d((String) com.google.common.base.o.t(str2, "name"));
        this.f39184e = (t0.h) com.google.common.base.o.t(hVar, "serviceConfigParser");
        this.f39185f = (io.grpc.d1) com.google.common.base.o.t(d1Var, "syncContext");
        this.f39186g = (ScheduledExecutorService) com.google.common.base.o.t(scheduledExecutorService, "scheduler");
        if (map == null) {
            f2Var = (s2.b) com.google.common.base.o.t(bVar, "xdsClientPoolFactory");
        } else {
            f2Var = new f2();
        }
        this.f39187h = f2Var;
        f2Var.a(map);
        this.f39188i = (j2) com.google.common.base.o.t(j2Var, "random");
        this.f39189j = (m1) com.google.common.base.o.t(m1Var, "filterRegistry");
        io.grpc.g0 b10 = io.grpc.g0.b("xds-resolver", str2);
        this.f39180a = b10;
        q2 f10 = q2.f(b10);
        this.f39181b = f10;
        f10.c(q2.b.INFO, "Created resolver for {0}", str2);
    }
}
