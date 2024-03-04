package com.google.api.gax.rpc;

import com.google.api.core.NanoClock;
import com.google.api.gax.rpc.g0;
import com.google.api.gax.tracing.ApiTracerFactory;
import java.io.IOException;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public abstract class g0<SettingsT extends g0<SettingsT>> {

    /* renamed from: a  reason: collision with root package name */
    private final l5.h f11273a;

    /* renamed from: b  reason: collision with root package name */
    private final l5.f f11274b;

    /* renamed from: c  reason: collision with root package name */
    private final p f11275c;

    /* renamed from: d  reason: collision with root package name */
    private final p f11276d;

    /* renamed from: e  reason: collision with root package name */
    private final i0 f11277e;

    /* renamed from: f  reason: collision with root package name */
    private final k5.a f11278f;

    /* renamed from: g  reason: collision with root package name */
    private final String f11279g;

    /* renamed from: h  reason: collision with root package name */
    private final String f11280h;

    /* renamed from: i  reason: collision with root package name */
    private final String f11281i;

    /* renamed from: j  reason: collision with root package name */
    private final m0 f11282j;

    /* renamed from: k  reason: collision with root package name */
    private final Duration f11283k;

    /* renamed from: l  reason: collision with root package name */
    private final ApiTracerFactory f11284l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f11285m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f11286n;

    /* loaded from: classes2.dex */
    public static abstract class a<SettingsT extends g0<SettingsT>, B extends a<SettingsT, B>> {

        /* renamed from: a  reason: collision with root package name */
        private l5.h f11287a;

        /* renamed from: b  reason: collision with root package name */
        private l5.f f11288b;

        /* renamed from: c  reason: collision with root package name */
        private p f11289c;

        /* renamed from: d  reason: collision with root package name */
        private p f11290d;

        /* renamed from: e  reason: collision with root package name */
        private i0 f11291e;

        /* renamed from: f  reason: collision with root package name */
        private k5.a f11292f;

        /* renamed from: g  reason: collision with root package name */
        private String f11293g;

        /* renamed from: h  reason: collision with root package name */
        private String f11294h;

        /* renamed from: i  reason: collision with root package name */
        private String f11295i;

        /* renamed from: j  reason: collision with root package name */
        private m0 f11296j;

        /* renamed from: k  reason: collision with root package name */
        private Duration f11297k;

        /* renamed from: l  reason: collision with root package name */
        private ApiTracerFactory f11298l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f11299m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f11300n = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(j jVar) {
            if (jVar == null) {
                this.f11287a = l5.m.e().a();
                this.f11291e = null;
                this.f11288b = l5.n.b();
                this.f11289c = new NoHeaderProvider();
                this.f11290d = new NoHeaderProvider();
                this.f11292f = NanoClock.getDefaultClock();
                this.f11293g = null;
                this.f11294h = null;
                this.f11295i = null;
                this.f11296j = q.i();
                this.f11297k = Duration.ofSeconds(10L);
                this.f11298l = com.google.api.gax.tracing.a.b();
                this.f11299m = false;
                return;
            }
            l5.j c10 = l5.j.c(jVar.h());
            this.f11299m = true;
            this.f11287a = c10;
            this.f11291e = n.k(jVar.p());
            this.f11288b = l5.i.b(jVar.d());
            this.f11289c = FixedHeaderProvider.create(jVar.i());
            this.f11290d = FixedHeaderProvider.create(jVar.k());
            this.f11292f = jVar.c();
            String f10 = jVar.f();
            this.f11293g = f10;
            if (f10 != null) {
                this.f11294h = f10.replace("googleapis.com", "mtls.googleapis.com");
            }
            this.f11296j = o.i(jVar.m());
            this.f11297k = jVar.n();
            this.f11298l = jVar.o();
            this.f11295i = x(jVar);
        }

        private static String x(j jVar) {
            if (jVar.l() != null) {
                return jVar.l();
            }
            if (jVar.d() instanceof com.google.auth.oauth2.p) {
                return ((com.google.auth.oauth2.p) jVar.d()).getQuotaProjectId();
            }
            if (jVar.i().containsKey("x-goog-user-project")) {
                return jVar.i().get("x-goog-user-project");
            }
            if (jVar.k().containsKey("x-goog-user-project")) {
                return jVar.k().get("x-goog-user-project");
            }
            return null;
        }

        public i0 A() {
            return this.f11291e;
        }

        protected B B() {
            return this;
        }

        public B C(l5.f fVar) {
            this.f11288b = (l5.f) com.google.common.base.o.s(fVar);
            return B();
        }

        public B D(String str) {
            this.f11293g = str;
            this.f11300n = false;
            if (str != null && this.f11294h == null) {
                this.f11294h = str.replace("googleapis.com", "mtls.googleapis.com");
            }
            return B();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public B E(p pVar) {
            this.f11290d = pVar;
            if (this.f11295i == null && pVar.getHeaders().containsKey("x-goog-user-project")) {
                this.f11295i = pVar.getHeaders().get("x-goog-user-project");
            }
            return B();
        }

        public B F(String str) {
            this.f11294h = str;
            return B();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public B G(boolean z10) {
            this.f11300n = z10;
            return B();
        }

        public B H(i0 i0Var) {
            this.f11291e = i0Var;
            return B();
        }

        public abstract <B extends g0<B>> g0<B> o() throws IOException;

        public l5.h p() {
            return this.f11287a;
        }

        public k5.a q() {
            return this.f11292f;
        }

        public l5.f r() {
            return this.f11288b;
        }

        public String s() {
            return this.f11293g;
        }

        @Deprecated
        public l5.h t() {
            if (this.f11299m) {
                return this.f11287a;
            }
            return null;
        }

        public String toString() {
            return com.google.common.base.j.c(this).d("backgroundExecutorProvider", this.f11287a).d("transportChannelProvider", this.f11291e).d("credentialsProvider", this.f11288b).d("headerProvider", this.f11289c).d("internalHeaderProvider", this.f11290d).d("clock", this.f11292f).d("endpoint", this.f11293g).d("mtlsEndpoint", this.f11294h).e("switchToMtlsEndpointAllowed", this.f11300n).d("quotaProjectId", this.f11295i).d("streamWatchdogProvider", this.f11296j).d("streamWatchdogCheckInterval", this.f11297k).d("tracerFactory", this.f11298l).toString();
        }

        public p u() {
            return this.f11289c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public p v() {
            return this.f11290d;
        }

        public String w() {
            return this.f11295i;
        }

        public Duration y() {
            return this.f11297k;
        }

        public m0 z() {
            return this.f11296j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g0(a aVar) {
        this.f11273a = aVar.f11287a;
        this.f11277e = aVar.f11291e;
        this.f11274b = aVar.f11288b;
        this.f11275c = aVar.f11289c;
        this.f11276d = aVar.f11290d;
        this.f11278f = aVar.f11292f;
        this.f11279g = aVar.f11293g;
        this.f11280h = aVar.f11294h;
        this.f11286n = aVar.f11300n;
        this.f11281i = aVar.f11295i;
        this.f11282j = aVar.f11296j;
        this.f11283k = aVar.f11297k;
        this.f11284l = aVar.f11298l;
        this.f11285m = aVar.f11299m;
    }

    public final l5.h a() {
        return this.f11273a;
    }

    public final k5.a b() {
        return this.f11278f;
    }

    public final l5.f c() {
        return this.f11274b;
    }

    public final String d() {
        return this.f11279g;
    }

    @Deprecated
    public final l5.h e() {
        if (this.f11285m) {
            return this.f11273a;
        }
        return null;
    }

    public final p f() {
        return this.f11275c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final p g() {
        return this.f11276d;
    }

    public final String h() {
        return this.f11280h;
    }

    public final String i() {
        return this.f11281i;
    }

    public final Duration j() {
        return this.f11283k;
    }

    public final m0 k() {
        return this.f11282j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return this.f11286n;
    }

    public ApiTracerFactory m() {
        return this.f11284l;
    }

    public final i0 n() {
        return this.f11277e;
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("backgroundExecutorProvider", this.f11273a).d("transportChannelProvider", this.f11277e).d("credentialsProvider", this.f11274b).d("headerProvider", this.f11275c).d("internalHeaderProvider", this.f11276d).d("clock", this.f11278f).d("endpoint", this.f11279g).d("mtlsEndpoint", this.f11280h).e("switchToMtlsEndpointAllowed", this.f11286n).d("quotaProjectId", this.f11281i).d("streamWatchdogProvider", this.f11282j).d("streamWatchdogCheckInterval", this.f11283k).d("tracerFactory", this.f11284l).toString();
    }
}
