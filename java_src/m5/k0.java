package m5;

import com.google.api.gax.rpc.FixedHeaderProvider;
import com.google.api.gax.rpc.mtls.MtlsProvider;
import com.google.auth.Credentials;
import com.google.auth.oauth2.ComputeEngineCredentials;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import io.grpc.TlsChannelCredentials;
import io.grpc.q0;
import io.grpc.r0;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.KeyManagerFactory;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public final class k0 implements com.google.api.gax.rpc.i0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f54831a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f54832b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.api.gax.rpc.p f54833c;

    /* renamed from: d  reason: collision with root package name */
    private final String f54834d;

    /* renamed from: e  reason: collision with root package name */
    private final p5.b f54835e;

    /* renamed from: f  reason: collision with root package name */
    private final a0 f54836f;

    /* renamed from: g  reason: collision with root package name */
    private final Integer f54837g;

    /* renamed from: h  reason: collision with root package name */
    private final Integer f54838h;

    /* renamed from: i  reason: collision with root package name */
    private final Duration f54839i;

    /* renamed from: j  reason: collision with root package name */
    private final Duration f54840j;

    /* renamed from: k  reason: collision with root package name */
    private final Boolean f54841k;

    /* renamed from: l  reason: collision with root package name */
    private final k f54842l;

    /* renamed from: m  reason: collision with root package name */
    private final Credentials f54843m;

    /* renamed from: n  reason: collision with root package name */
    private final l f54844n;

    /* renamed from: o  reason: collision with root package name */
    private final Boolean f54845o;

    /* renamed from: p  reason: collision with root package name */
    private final Boolean f54846p;

    /* renamed from: q  reason: collision with root package name */
    final ImmutableMap<String, ?> f54847q;

    /* renamed from: r  reason: collision with root package name */
    private final MtlsProvider f54848r;

    /* renamed from: s  reason: collision with root package name */
    private final k5.b<r0, r0> f54849s;

    private com.google.api.gax.rpc.h0 E() throws IOException {
        return h0.b(j.s(this.f54842l, new e() { // from class: m5.j0
            @Override // m5.e
            public final q0 a() {
                q0 G;
                G = k0.this.G();
                return G;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v10, types: [io.grpc.r0] */
    public q0 G() throws IOException {
        r0<?> f10;
        boolean z10;
        z zVar = new z(this.f54833c.getHeaders());
        c0 c0Var = new c0();
        int lastIndexOf = this.f54834d.lastIndexOf(58);
        if (lastIndexOf >= 0) {
            int parseInt = Integer.parseInt(this.f54834d.substring(lastIndexOf + 1));
            String substring = this.f54834d.substring(0, lastIndexOf);
            if (I(substring) && J() && K()) {
                io.grpc.e a10 = fg.b.b().b(gg.b.a(this.f54843m)).a();
                z10 = Boolean.parseBoolean(this.f54835e.a("GOOGLE_CLOUD_ENABLE_DIRECT_PATH_XDS"));
                if (z10) {
                    f10 = io.grpc.a0.b("google-c2p-experimental:///" + substring, a10);
                } else {
                    f10 = io.grpc.a0.c(substring, parseInt, a10);
                    f10.b(this.f54847q);
                }
                TimeUnit timeUnit = TimeUnit.SECONDS;
                f10.i(3600L, timeUnit);
                f10.j(20L, timeUnit);
            } else {
                try {
                    io.grpc.e F = F();
                    if (F != null) {
                        f10 = io.grpc.a0.b(this.f54834d, F);
                    } else {
                        f10 = r0.f(substring, parseInt);
                    }
                    z10 = false;
                } catch (GeneralSecurityException e10) {
                    throw new IOException(e10);
                }
            }
            if (!z10) {
                f10.d();
            }
            r0 e11 = f10.h(new s()).h(zVar).h(c0Var).o(zVar.c()).e(this.f54832b);
            Integer num = this.f54838h;
            if (num != null) {
                e11.m(num.intValue());
            }
            Integer num2 = this.f54837g;
            if (num2 != null) {
                e11.l(num2.intValue());
            }
            Duration duration = this.f54839i;
            if (duration != null) {
                e11.i(duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            Duration duration2 = this.f54840j;
            if (duration2 != null) {
                e11.j(duration2.toMillis(), TimeUnit.MILLISECONDS);
            }
            Boolean bool = this.f54841k;
            if (bool != null) {
                e11.k(bool.booleanValue());
            }
            a0 a0Var = this.f54836f;
            if (a0Var != null) {
                e11.g(a0Var.a());
            }
            k5.b<r0, r0> bVar = this.f54849s;
            if (bVar != null) {
                e11 = bVar.apply(e11);
            }
            q0 a11 = e11.a();
            l lVar = this.f54844n;
            if (lVar != null) {
                lVar.a(a11);
            }
            return a11;
        }
        throw new IllegalStateException("invalid endpoint - should have been validated: " + this.f54834d);
    }

    private static ImmutableMap<String, ?> H() {
        return ImmutableMap.of("loadBalancingConfig", ImmutableList.of(ImmutableMap.of("grpclb", ImmutableMap.of("childPolicy", ImmutableList.of(ImmutableMap.of("pick_first", ImmutableMap.of()))))));
    }

    private boolean I(String str) {
        String[] split;
        if (Boolean.parseBoolean(this.f54835e.a("GOOGLE_CLOUD_DISABLE_DIRECT_PATH"))) {
            return false;
        }
        Boolean bool = this.f54845o;
        if (bool != null) {
            return bool.booleanValue();
        }
        String a10 = this.f54835e.a("GOOGLE_CLOUD_ENABLE_DIRECT_PATH");
        if (a10 == null) {
            return false;
        }
        for (String str2 : a10.split(",")) {
            if (!str2.isEmpty() && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean J() {
        Boolean bool = this.f54846p;
        if (bool == null || !bool.booleanValue()) {
            return this.f54843m instanceof ComputeEngineCredentials;
        }
        return true;
    }

    static boolean K() {
        if ("Linux".equals(System.getProperty("os.name"))) {
            try {
                String c10 = com.google.common.io.i.b(new File("/sys/class/dmi/id/product_name"), StandardCharsets.UTF_8).c();
                if (!c10.contains("Google")) {
                    if (!c10.contains("Google Compute Engine")) {
                        return false;
                    }
                }
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
        return false;
    }

    public static b L() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void N(String str) {
        int lastIndexOf = str.lastIndexOf(58);
        if (lastIndexOf >= 0) {
            Integer.parseInt(str.substring(lastIndexOf + 1));
            return;
        }
        throw new IllegalArgumentException(String.format("invalid endpoint, expecting \"<host>:<port>\"", new Object[0]));
    }

    io.grpc.e F() throws IOException, GeneralSecurityException {
        KeyStore b10;
        if (!this.f54848r.f() || (b10 = this.f54848r.b()) == null) {
            return null;
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        keyManagerFactory.init(b10, new char[0]);
        return TlsChannelCredentials.i().j(keyManagerFactory.getKeyManagers()).h();
    }

    public b M() {
        return new b();
    }

    public com.google.api.gax.rpc.i0 O(Executor executor) {
        return M().w(executor).t();
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean a() {
        return true;
    }

    @Override // com.google.api.gax.rpc.i0
    public com.google.api.gax.rpc.i0 b(Credentials credentials) {
        return M().u(credentials).t();
    }

    @Override // com.google.api.gax.rpc.i0
    @Deprecated
    public com.google.api.gax.rpc.i0 c(ScheduledExecutorService scheduledExecutorService) {
        return O(scheduledExecutorService);
    }

    @Override // com.google.api.gax.rpc.i0
    @Deprecated
    public boolean d() {
        return this.f54832b == null;
    }

    @Override // com.google.api.gax.rpc.i0
    public com.google.api.gax.rpc.h0 e() throws IOException {
        if (!f()) {
            if (!h()) {
                return E();
            }
            throw new IllegalStateException("getTransportChannel() called when needsEndpoint() is true");
        }
        throw new IllegalStateException("getTransportChannel() called when needsHeaders() is true");
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean f() {
        return this.f54833c == null;
    }

    @Override // com.google.api.gax.rpc.i0
    public com.google.api.gax.rpc.i0 g(String str) {
        N(str);
        return M().v(str).t();
    }

    @Override // com.google.api.gax.rpc.i0
    public String getTransportName() {
        return h0.j();
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean h() {
        return this.f54834d == null;
    }

    @Override // com.google.api.gax.rpc.i0
    public com.google.api.gax.rpc.i0 i(Map<String, String> map) {
        return M().x(FixedHeaderProvider.create(map)).t();
    }

    @Override // com.google.api.gax.rpc.i0
    public boolean j() {
        return this.f54843m == null;
    }

    /* loaded from: classes2.dex */
    public static final class b {
        @Deprecated

        /* renamed from: a  reason: collision with root package name */
        private int f54850a;

        /* renamed from: b  reason: collision with root package name */
        private Executor f54851b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.api.gax.rpc.p f54852c;

        /* renamed from: d  reason: collision with root package name */
        private String f54853d;

        /* renamed from: e  reason: collision with root package name */
        private p5.b f54854e;

        /* renamed from: f  reason: collision with root package name */
        private MtlsProvider f54855f;

        /* renamed from: g  reason: collision with root package name */
        private a0 f54856g;

        /* renamed from: h  reason: collision with root package name */
        private Integer f54857h;

        /* renamed from: i  reason: collision with root package name */
        private Integer f54858i;

        /* renamed from: j  reason: collision with root package name */
        private Duration f54859j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f54860k;

        /* renamed from: l  reason: collision with root package name */
        private Boolean f54861l;

        /* renamed from: m  reason: collision with root package name */
        private k5.b<r0, r0> f54862m;

        /* renamed from: n  reason: collision with root package name */
        private Credentials f54863n;

        /* renamed from: o  reason: collision with root package name */
        private l f54864o;

        /* renamed from: p  reason: collision with root package name */
        private k f54865p;

        /* renamed from: q  reason: collision with root package name */
        private Boolean f54866q;

        /* renamed from: r  reason: collision with root package name */
        private Boolean f54867r;

        /* renamed from: s  reason: collision with root package name */
        private ImmutableMap<String, ?> f54868s;

        public k0 t() {
            return new k0(this);
        }

        public b u(Credentials credentials) {
            this.f54863n = credentials;
            return this;
        }

        public b v(String str) {
            k0.N(str);
            this.f54853d = str;
            return this;
        }

        public b w(Executor executor) {
            this.f54851b = executor;
            return this;
        }

        public b x(com.google.api.gax.rpc.p pVar) {
            this.f54852c = pVar;
            return this;
        }

        public b y(Integer num) {
            this.f54857h = num;
            return this;
        }

        private b() {
            this.f54855f = new MtlsProvider();
            this.f54850a = Runtime.getRuntime().availableProcessors();
            this.f54854e = l0.f54869a;
            this.f54865p = k.i(1);
        }

        private b(k0 k0Var) {
            this.f54855f = new MtlsProvider();
            this.f54850a = k0Var.f54831a;
            this.f54851b = k0Var.f54832b;
            this.f54852c = k0Var.f54833c;
            this.f54853d = k0Var.f54834d;
            this.f54854e = k0Var.f54835e;
            this.f54856g = k0Var.f54836f;
            this.f54857h = k0Var.f54837g;
            this.f54858i = k0Var.f54838h;
            this.f54859j = k0Var.f54839i;
            this.f54860k = k0Var.f54840j;
            this.f54861l = k0Var.f54841k;
            this.f54862m = k0Var.f54849s;
            this.f54863n = k0Var.f54843m;
            this.f54864o = k0Var.f54844n;
            this.f54865p = k0Var.f54842l;
            this.f54866q = k0Var.f54845o;
            this.f54867r = k0Var.f54846p;
            this.f54868s = k0Var.f54847q;
            this.f54855f = k0Var.f54848r;
        }
    }

    private k0(b bVar) {
        ImmutableMap<String, ?> immutableMap;
        this.f54831a = bVar.f54850a;
        this.f54832b = bVar.f54851b;
        this.f54833c = bVar.f54852c;
        this.f54834d = bVar.f54853d;
        this.f54848r = bVar.f54855f;
        this.f54835e = bVar.f54854e;
        this.f54836f = bVar.f54856g;
        this.f54837g = bVar.f54857h;
        this.f54838h = bVar.f54858i;
        this.f54839i = bVar.f54859j;
        this.f54840j = bVar.f54860k;
        this.f54841k = bVar.f54861l;
        this.f54842l = bVar.f54865p;
        this.f54849s = bVar.f54862m;
        this.f54843m = bVar.f54863n;
        this.f54844n = bVar.f54864o;
        this.f54845o = bVar.f54866q;
        this.f54846p = bVar.f54867r;
        if (bVar.f54868s == null) {
            immutableMap = H();
        } else {
            immutableMap = bVar.f54868s;
        }
        this.f54847q = immutableMap;
    }
}
