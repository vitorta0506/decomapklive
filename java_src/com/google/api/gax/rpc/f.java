package com.google.api.gax.rpc;

import com.google.api.gax.rpc.j;
import com.google.api.gax.tracing.ApiTracerFactory;
import com.google.auth.Credentials;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
final class f extends j {

    /* renamed from: a  reason: collision with root package name */
    private final List<l5.d> f11246a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f11247b;

    /* renamed from: c  reason: collision with root package name */
    private final Credentials f11248c;

    /* renamed from: d  reason: collision with root package name */
    private final h0 f11249d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f11250e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f11251f;

    /* renamed from: g  reason: collision with root package name */
    private final k5.a f11252g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.api.gax.rpc.a f11253h;

    /* renamed from: i  reason: collision with root package name */
    private final l0 f11254i;

    /* renamed from: j  reason: collision with root package name */
    private final Duration f11255j;

    /* renamed from: k  reason: collision with root package name */
    private final String f11256k;

    /* renamed from: l  reason: collision with root package name */
    private final String f11257l;

    /* renamed from: m  reason: collision with root package name */
    private final ApiTracerFactory f11258m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends j.b {

        /* renamed from: a  reason: collision with root package name */
        private List<l5.d> f11259a;

        /* renamed from: b  reason: collision with root package name */
        private ScheduledExecutorService f11260b;

        /* renamed from: c  reason: collision with root package name */
        private Credentials f11261c;

        /* renamed from: d  reason: collision with root package name */
        private h0 f11262d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f11263e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f11264f;

        /* renamed from: g  reason: collision with root package name */
        private k5.a f11265g;

        /* renamed from: h  reason: collision with root package name */
        private com.google.api.gax.rpc.a f11266h;

        /* renamed from: i  reason: collision with root package name */
        private l0 f11267i;

        /* renamed from: j  reason: collision with root package name */
        private Duration f11268j;

        /* renamed from: k  reason: collision with root package name */
        private String f11269k;

        /* renamed from: l  reason: collision with root package name */
        private String f11270l;

        /* renamed from: m  reason: collision with root package name */
        private ApiTracerFactory f11271m;

        @Override // com.google.api.gax.rpc.j.b
        public j a() {
            ScheduledExecutorService scheduledExecutorService;
            Map<String, String> map;
            Map<String, String> map2;
            k5.a aVar;
            com.google.api.gax.rpc.a aVar2;
            Duration duration;
            ApiTracerFactory apiTracerFactory;
            List<l5.d> list = this.f11259a;
            if (list != null && (scheduledExecutorService = this.f11260b) != null && (map = this.f11263e) != null && (map2 = this.f11264f) != null && (aVar = this.f11265g) != null && (aVar2 = this.f11266h) != null && (duration = this.f11268j) != null && (apiTracerFactory = this.f11271m) != null) {
                return new f(list, scheduledExecutorService, this.f11261c, this.f11262d, map, map2, aVar, aVar2, this.f11267i, duration, this.f11269k, this.f11270l, apiTracerFactory);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f11259a == null) {
                sb2.append(" backgroundResources");
            }
            if (this.f11260b == null) {
                sb2.append(" executor");
            }
            if (this.f11263e == null) {
                sb2.append(" headers");
            }
            if (this.f11264f == null) {
                sb2.append(" internalHeaders");
            }
            if (this.f11265g == null) {
                sb2.append(" clock");
            }
            if (this.f11266h == null) {
                sb2.append(" defaultCallContext");
            }
            if (this.f11268j == null) {
                sb2.append(" streamWatchdogCheckInterval");
            }
            if (this.f11271m == null) {
                sb2.append(" tracerFactory");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b b(List<l5.d> list) {
            Objects.requireNonNull(list, "Null backgroundResources");
            this.f11259a = list;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b c(k5.a aVar) {
            Objects.requireNonNull(aVar, "Null clock");
            this.f11265g = aVar;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b d(Credentials credentials) {
            this.f11261c = credentials;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b e(com.google.api.gax.rpc.a aVar) {
            Objects.requireNonNull(aVar, "Null defaultCallContext");
            this.f11266h = aVar;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b f(String str) {
            this.f11269k = str;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b g(ScheduledExecutorService scheduledExecutorService) {
            Objects.requireNonNull(scheduledExecutorService, "Null executor");
            this.f11260b = scheduledExecutorService;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b h(Map<String, String> map) {
            Objects.requireNonNull(map, "Null headers");
            this.f11263e = map;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        protected j.b i(Map<String, String> map) {
            Objects.requireNonNull(map, "Null internalHeaders");
            this.f11264f = map;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b j(String str) {
            this.f11270l = str;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b k(l0 l0Var) {
            this.f11267i = l0Var;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b l(Duration duration) {
            Objects.requireNonNull(duration, "Null streamWatchdogCheckInterval");
            this.f11268j = duration;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b m(ApiTracerFactory apiTracerFactory) {
            Objects.requireNonNull(apiTracerFactory, "Null tracerFactory");
            this.f11271m = apiTracerFactory;
            return this;
        }

        @Override // com.google.api.gax.rpc.j.b
        public j.b n(h0 h0Var) {
            this.f11262d = h0Var;
            return this;
        }
    }

    @Override // com.google.api.gax.rpc.j
    public List<l5.d> b() {
        return this.f11246a;
    }

    @Override // com.google.api.gax.rpc.j
    public k5.a c() {
        return this.f11252g;
    }

    @Override // com.google.api.gax.rpc.j
    public Credentials d() {
        return this.f11248c;
    }

    @Override // com.google.api.gax.rpc.j
    public com.google.api.gax.rpc.a e() {
        return this.f11253h;
    }

    public boolean equals(Object obj) {
        Credentials credentials;
        h0 h0Var;
        l0 l0Var;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return this.f11246a.equals(jVar.b()) && this.f11247b.equals(jVar.h()) && ((credentials = this.f11248c) != null ? credentials.equals(jVar.d()) : jVar.d() == null) && ((h0Var = this.f11249d) != null ? h0Var.equals(jVar.p()) : jVar.p() == null) && this.f11250e.equals(jVar.i()) && this.f11251f.equals(jVar.k()) && this.f11252g.equals(jVar.c()) && this.f11253h.equals(jVar.e()) && ((l0Var = this.f11254i) != null ? l0Var.equals(jVar.m()) : jVar.m() == null) && this.f11255j.equals(jVar.n()) && ((str = this.f11256k) != null ? str.equals(jVar.f()) : jVar.f() == null) && ((str2 = this.f11257l) != null ? str2.equals(jVar.l()) : jVar.l() == null) && this.f11258m.equals(jVar.o());
        }
        return false;
    }

    @Override // com.google.api.gax.rpc.j
    public String f() {
        return this.f11256k;
    }

    @Override // com.google.api.gax.rpc.j
    public ScheduledExecutorService h() {
        return this.f11247b;
    }

    public int hashCode() {
        int hashCode = (((this.f11246a.hashCode() ^ 1000003) * 1000003) ^ this.f11247b.hashCode()) * 1000003;
        Credentials credentials = this.f11248c;
        int hashCode2 = (hashCode ^ (credentials == null ? 0 : credentials.hashCode())) * 1000003;
        h0 h0Var = this.f11249d;
        int hashCode3 = (((((((((hashCode2 ^ (h0Var == null ? 0 : h0Var.hashCode())) * 1000003) ^ this.f11250e.hashCode()) * 1000003) ^ this.f11251f.hashCode()) * 1000003) ^ this.f11252g.hashCode()) * 1000003) ^ this.f11253h.hashCode()) * 1000003;
        l0 l0Var = this.f11254i;
        int hashCode4 = (((hashCode3 ^ (l0Var == null ? 0 : l0Var.hashCode())) * 1000003) ^ this.f11255j.hashCode()) * 1000003;
        String str = this.f11256k;
        int hashCode5 = (hashCode4 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f11257l;
        return ((hashCode5 ^ (str2 != null ? str2.hashCode() : 0)) * 1000003) ^ this.f11258m.hashCode();
    }

    @Override // com.google.api.gax.rpc.j
    public Map<String, String> i() {
        return this.f11250e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.api.gax.rpc.j
    public Map<String, String> k() {
        return this.f11251f;
    }

    @Override // com.google.api.gax.rpc.j
    public String l() {
        return this.f11257l;
    }

    @Override // com.google.api.gax.rpc.j
    public l0 m() {
        return this.f11254i;
    }

    @Override // com.google.api.gax.rpc.j
    public Duration n() {
        return this.f11255j;
    }

    @Override // com.google.api.gax.rpc.j
    public ApiTracerFactory o() {
        return this.f11258m;
    }

    @Override // com.google.api.gax.rpc.j
    public h0 p() {
        return this.f11249d;
    }

    public String toString() {
        return "ClientContext{backgroundResources=" + this.f11246a + ", executor=" + this.f11247b + ", credentials=" + this.f11248c + ", transportChannel=" + this.f11249d + ", headers=" + this.f11250e + ", internalHeaders=" + this.f11251f + ", clock=" + this.f11252g + ", defaultCallContext=" + this.f11253h + ", streamWatchdog=" + this.f11254i + ", streamWatchdogCheckInterval=" + this.f11255j + ", endpoint=" + this.f11256k + ", quotaProjectId=" + this.f11257l + ", tracerFactory=" + this.f11258m + "}";
    }

    private f(List<l5.d> list, ScheduledExecutorService scheduledExecutorService, Credentials credentials, h0 h0Var, Map<String, String> map, Map<String, String> map2, k5.a aVar, com.google.api.gax.rpc.a aVar2, l0 l0Var, Duration duration, String str, String str2, ApiTracerFactory apiTracerFactory) {
        this.f11246a = list;
        this.f11247b = scheduledExecutorService;
        this.f11248c = credentials;
        this.f11249d = h0Var;
        this.f11250e = map;
        this.f11251f = map2;
        this.f11252g = aVar;
        this.f11253h = aVar2;
        this.f11254i = l0Var;
        this.f11255j = duration;
        this.f11256k = str;
        this.f11257l = str2;
        this.f11258m = apiTracerFactory;
    }
}
