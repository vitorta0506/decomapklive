package io.grpc.internal;

import androidx.core.app.NotificationCompat;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.google.common.base.VerifyException;
import com.tencent.bugly.Bugly;
import io.grpc.ProxiedSocketAddress;
import io.grpc.Status;
import io.grpc.internal.f2;
import io.grpc.t0;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class c0 extends io.grpc.t0 {
    private static final g A;
    private static String B;

    /* renamed from: s  reason: collision with root package name */
    private static final Logger f42477s = Logger.getLogger(c0.class.getName());

    /* renamed from: t  reason: collision with root package name */
    private static final Set<String> f42478t = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));

    /* renamed from: u  reason: collision with root package name */
    private static final String f42479u;

    /* renamed from: v  reason: collision with root package name */
    private static final String f42480v;

    /* renamed from: w  reason: collision with root package name */
    private static final String f42481w;

    /* renamed from: x  reason: collision with root package name */
    static boolean f42482x;

    /* renamed from: y  reason: collision with root package name */
    static boolean f42483y;

    /* renamed from: z  reason: collision with root package name */
    protected static boolean f42484z;

    /* renamed from: a  reason: collision with root package name */
    final io.grpc.z0 f42485a;

    /* renamed from: b  reason: collision with root package name */
    private final Random f42486b = new Random();

    /* renamed from: c  reason: collision with root package name */
    protected volatile b f42487c = d.INSTANCE;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<f> f42488d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private final String f42489e;

    /* renamed from: f  reason: collision with root package name */
    private final String f42490f;

    /* renamed from: g  reason: collision with root package name */
    private final int f42491g;

    /* renamed from: h  reason: collision with root package name */
    private final f2.d<Executor> f42492h;

    /* renamed from: i  reason: collision with root package name */
    private final long f42493i;

    /* renamed from: j  reason: collision with root package name */
    private final io.grpc.d1 f42494j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.common.base.u f42495k;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f42496l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f42497m;

    /* renamed from: n  reason: collision with root package name */
    private Executor f42498n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f42499o;

    /* renamed from: p  reason: collision with root package name */
    private final t0.h f42500p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f42501q;

    /* renamed from: r  reason: collision with root package name */
    private t0.e f42502r;

    /* loaded from: classes5.dex */
    public interface b {
        List<InetAddress> a(String str) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private Status f42503a;

        /* renamed from: b  reason: collision with root package name */
        private List<io.grpc.x> f42504b;

        /* renamed from: c  reason: collision with root package name */
        private t0.c f42505c;

        /* renamed from: d  reason: collision with root package name */
        public io.grpc.a f42506d;

        private c() {
        }
    }

    /* loaded from: classes5.dex */
    private enum d implements b {
        INSTANCE;

        @Override // io.grpc.internal.c0.b
        public List<InetAddress> a(String str) throws UnknownHostException {
            return Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final t0.e f42509a;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f42511a;

            a(boolean z10) {
                this.f42511a = z10;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f42511a) {
                    c0 c0Var = c0.this;
                    c0Var.f42496l = true;
                    if (c0Var.f42493i > 0) {
                        c0.this.f42495k.f().g();
                    }
                }
                c0.this.f42501q = false;
            }
        }

        e(t0.e eVar) {
            this.f42509a = (t0.e) com.google.common.base.o.t(eVar, "savedListener");
        }

        @Override // java.lang.Runnable
        public void run() {
            io.grpc.d1 d1Var;
            a aVar;
            Logger logger = c0.f42477s;
            Level level = Level.FINER;
            if (logger.isLoggable(level)) {
                Logger logger2 = c0.f42477s;
                logger2.finer("Attempting DNS resolution of " + c0.this.f42490f);
            }
            c cVar = null;
            boolean z10 = true;
            try {
                try {
                    io.grpc.x n9 = c0.this.n();
                    t0.g.a d10 = t0.g.d();
                    if (n9 != null) {
                        if (c0.f42477s.isLoggable(level)) {
                            Logger logger3 = c0.f42477s;
                            logger3.finer("Using proxy address " + n9);
                        }
                        d10.b(Collections.singletonList(n9));
                    } else {
                        cVar = c0.this.o(false);
                        if (cVar.f42503a != null) {
                            this.f42509a.a(cVar.f42503a);
                            return;
                        }
                        if (cVar.f42504b != null) {
                            d10.b(cVar.f42504b);
                        }
                        if (cVar.f42505c != null) {
                            d10.d(cVar.f42505c);
                        }
                        io.grpc.a aVar2 = cVar.f42506d;
                        if (aVar2 != null) {
                            d10.c(aVar2);
                        }
                    }
                    this.f42509a.c(d10.a());
                    z10 = (cVar == null || cVar.f42503a != null) ? false : false;
                    d1Var = c0.this.f42494j;
                    aVar = new a(z10);
                } catch (IOException e10) {
                    t0.e eVar = this.f42509a;
                    Status status = Status.f41719u;
                    eVar.a(status.r("Unable to resolve host " + c0.this.f42490f).q(e10));
                    z10 = (0 == 0 || null.f42503a != null) ? false : false;
                    d1Var = c0.this.f42494j;
                    aVar = new a(z10);
                }
                d1Var.execute(aVar);
            } finally {
                c0.this.f42494j.execute(new a((0 == 0 || null.f42503a != null) ? false : false));
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface f {
        List<String> a(String str) throws Exception;

        List<h> b(String str) throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface g {
        f a();

        Throwable b();
    }

    /* loaded from: classes5.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final String f42513a;

        /* renamed from: b  reason: collision with root package name */
        public final int f42514b;

        public h(String str, int i9) {
            this.f42513a = str;
            this.f42514b = i9;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || h.class != obj.getClass()) {
                return false;
            }
            h hVar = (h) obj;
            return this.f42514b == hVar.f42514b && this.f42513a.equals(hVar.f42513a);
        }

        public int hashCode() {
            return com.google.common.base.l.b(this.f42513a, Integer.valueOf(this.f42514b));
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("host", this.f42513a).b("port", this.f42514b).toString();
        }
    }

    static {
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        f42479u = property;
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", Bugly.SDK_IS_DEV);
        f42480v = property2;
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", Bugly.SDK_IS_DEV);
        f42481w = property3;
        f42482x = Boolean.parseBoolean(property);
        f42483y = Boolean.parseBoolean(property2);
        f42484z = Boolean.parseBoolean(property3);
        A = w(c0.class.getClassLoader());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c0(String str, String str2, t0.b bVar, f2.d<Executor> dVar, com.google.common.base.u uVar, boolean z10) {
        com.google.common.base.o.t(bVar, "args");
        this.f42492h = dVar;
        URI create = URI.create("//" + ((String) com.google.common.base.o.t(str2, "name")));
        com.google.common.base.o.m(create.getHost() != null, "Invalid DNS name: %s", str2);
        this.f42489e = (String) com.google.common.base.o.u(create.getAuthority(), "nameUri (%s) doesn't have an authority", create);
        this.f42490f = create.getHost();
        if (create.getPort() == -1) {
            this.f42491g = bVar.a();
        } else {
            this.f42491g = create.getPort();
        }
        this.f42485a = (io.grpc.z0) com.google.common.base.o.t(bVar.c(), "proxyDetector");
        this.f42493i = t(z10);
        this.f42495k = (com.google.common.base.u) com.google.common.base.o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
        this.f42494j = (io.grpc.d1) com.google.common.base.o.t(bVar.f(), "syncContext");
        Executor b10 = bVar.b();
        this.f42498n = b10;
        this.f42499o = b10 == null;
        this.f42500p = (t0.h) com.google.common.base.o.t(bVar.e(), "serviceConfigParser");
    }

    private void A() {
        if (this.f42501q || this.f42497m || !m()) {
            return;
        }
        this.f42501q = true;
        this.f42498n.execute(new e(this.f42502r));
    }

    private List<io.grpc.x> B() {
        Exception e10 = null;
        try {
            try {
                List<InetAddress> a10 = this.f42487c.a(this.f42490f);
                ArrayList arrayList = new ArrayList(a10.size());
                for (InetAddress inetAddress : a10) {
                    arrayList.add(new io.grpc.x(new InetSocketAddress(inetAddress, this.f42491g)));
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception e11) {
                e10 = e11;
                com.google.common.base.y.k(e10);
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            if (e10 != null) {
                f42477s.log(Level.FINE, "Address resolution failure", (Throwable) e10);
            }
            throw th2;
        }
    }

    private t0.c C() {
        List<String> emptyList = Collections.emptyList();
        f v10 = v();
        if (v10 != null) {
            try {
                emptyList = v10.a("_grpc_config." + this.f42490f);
            } catch (Exception e10) {
                f42477s.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) e10);
            }
        }
        if (!emptyList.isEmpty()) {
            t0.c y10 = y(emptyList, this.f42486b, s());
            if (y10 != null) {
                if (y10.d() != null) {
                    return t0.c.b(y10.d());
                }
                return this.f42500p.a((Map) y10.c());
            }
            return null;
        }
        f42477s.log(Level.FINE, "No TXT records found for {0}", new Object[]{this.f42490f});
        return null;
    }

    protected static boolean D(boolean z10, boolean z11, String str) {
        if (z10) {
            if ("localhost".equalsIgnoreCase(str)) {
                return z11;
            }
            if (str.contains(CertificateUtil.DELIMITER)) {
                return false;
            }
            boolean z12 = true;
            for (int i9 = 0; i9 < str.length(); i9++) {
                char charAt = str.charAt(i9);
                if (charAt != '.') {
                    z12 &= charAt >= '0' && charAt <= '9';
                }
            }
            return true ^ z12;
        }
        return false;
    }

    private boolean m() {
        if (this.f42496l) {
            long j10 = this.f42493i;
            if (j10 != 0 && (j10 <= 0 || this.f42495k.d(TimeUnit.NANOSECONDS) <= this.f42493i)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public io.grpc.x n() throws IOException {
        ProxiedSocketAddress a10 = this.f42485a.a(InetSocketAddress.createUnresolved(this.f42490f, this.f42491g));
        if (a10 != null) {
            return new io.grpc.x(a10);
        }
        return null;
    }

    private static final List<String> p(Map<String, ?> map) {
        return b1.g(map, "clientLanguage");
    }

    private static final List<String> r(Map<String, ?> map) {
        return b1.g(map, "clientHostname");
    }

    private static String s() {
        if (B == null) {
            try {
                B = InetAddress.getLocalHost().getHostName();
            } catch (UnknownHostException e10) {
                throw new RuntimeException(e10);
            }
        }
        return B;
    }

    private static long t(boolean z10) {
        if (z10) {
            return 0L;
        }
        String property = System.getProperty("networkaddress.cache.ttl");
        long j10 = 30;
        if (property != null) {
            try {
                j10 = Long.parseLong(property);
            } catch (NumberFormatException unused) {
                f42477s.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
            }
        }
        return j10 > 0 ? TimeUnit.SECONDS.toNanos(j10) : j10;
    }

    private static final Double u(Map<String, ?> map) {
        return b1.h(map, "percentage");
    }

    static g w(ClassLoader classLoader) {
        try {
            try {
                try {
                    g gVar = (g) Class.forName("io.grpc.internal.z0", true, classLoader).asSubclass(g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (gVar.b() != null) {
                        f42477s.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", gVar.b());
                        return null;
                    }
                    return gVar;
                } catch (Exception e10) {
                    f42477s.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e10);
                    return null;
                }
            } catch (Exception e11) {
                f42477s.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e11);
                return null;
            }
        } catch (ClassCastException e12) {
            f42477s.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e12);
            return null;
        } catch (ClassNotFoundException e13) {
            f42477s.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e13);
            return null;
        }
    }

    static Map<String, ?> x(Map<String, ?> map, Random random, String str) {
        boolean z10;
        boolean z11;
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            com.google.common.base.a0.b(f42478t.contains(entry.getKey()), "Bad key: %s", entry);
        }
        List<String> p10 = p(map);
        if (p10 != null && !p10.isEmpty()) {
            Iterator<String> it = p10.iterator();
            while (true) {
                if (it.hasNext()) {
                    if ("java".equalsIgnoreCase(it.next())) {
                        z11 = true;
                        break;
                    }
                } else {
                    z11 = false;
                    break;
                }
            }
            if (!z11) {
                return null;
            }
        }
        Double u10 = u(map);
        if (u10 != null) {
            int intValue = u10.intValue();
            com.google.common.base.a0.b(intValue >= 0 && intValue <= 100, "Bad percentage: %s", u10);
            if (random.nextInt(100) >= intValue) {
                return null;
            }
        }
        List<String> r10 = r(map);
        if (r10 != null && !r10.isEmpty()) {
            Iterator<String> it2 = r10.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().equals(str)) {
                        z10 = true;
                        break;
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            if (!z10) {
                return null;
            }
        }
        Map<String, ?> k10 = b1.k(map, "serviceConfig");
        if (k10 != null) {
            return k10;
        }
        throw new VerifyException(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    static t0.c y(List<String> list, Random random, String str) {
        try {
            Map<String, ?> map = null;
            for (Map<String, ?> map2 : z(list)) {
                try {
                    map = x(map2, random, str);
                    if (map != null) {
                        break;
                    }
                } catch (RuntimeException e10) {
                    return t0.c.b(Status.f41706h.r("failed to pick service config choice").q(e10));
                }
            }
            if (map == null) {
                return null;
            }
            return t0.c.a(map);
        } catch (IOException | RuntimeException e11) {
            return t0.c.b(Status.f41706h.r("failed to parse TXT records").q(e11));
        }
    }

    static List<Map<String, ?>> z(List<String> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.startsWith("grpc_config=")) {
                f42477s.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            } else {
                Object a10 = a1.a(str.substring(12));
                if (a10 instanceof List) {
                    arrayList.addAll(b1.a((List) a10));
                } else {
                    throw new ClassCastException("wrong type " + a10);
                }
            }
        }
        return arrayList;
    }

    @Override // io.grpc.t0
    public String a() {
        return this.f42489e;
    }

    @Override // io.grpc.t0
    public void b() {
        com.google.common.base.o.A(this.f42502r != null, "not started");
        A();
    }

    @Override // io.grpc.t0
    public void c() {
        if (this.f42497m) {
            return;
        }
        this.f42497m = true;
        Executor executor = this.f42498n;
        if (executor == null || !this.f42499o) {
            return;
        }
        this.f42498n = (Executor) f2.f(this.f42492h, executor);
    }

    @Override // io.grpc.t0
    public void d(t0.e eVar) {
        com.google.common.base.o.A(this.f42502r == null, "already started");
        if (this.f42499o) {
            this.f42498n = (Executor) f2.d(this.f42492h);
        }
        this.f42502r = (t0.e) com.google.common.base.o.t(eVar, "listener");
        A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c o(boolean z10) {
        c cVar = new c();
        try {
            cVar.f42504b = B();
        } catch (Exception e10) {
            if (!z10) {
                Status status = Status.f41719u;
                cVar.f42503a = status.r("Unable to resolve host " + this.f42490f).q(e10);
                return cVar;
            }
        }
        if (f42484z) {
            cVar.f42505c = C();
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String q() {
        return this.f42490f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f v() {
        g gVar;
        if (D(f42482x, f42483y, this.f42490f)) {
            f fVar = this.f42488d.get();
            return (fVar != null || (gVar = A) == null) ? fVar : gVar.a();
        }
        return null;
    }
}
