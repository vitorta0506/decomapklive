package com.snapchat.kit.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.config.ConfigClient;
import com.snapchat.kit.sdk.core.metrics.MetricsClient;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
import com.snapchat.kit.sdk.core.metrics.skate.SkateClient;
import com.snapchat.kit.sdk.core.networking.FirebaseExtensionClient;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
/* loaded from: classes4.dex */
public final class g implements be.b {
    private fi.a<ge.f> A;
    private fi.a<ee.a> B;
    private fi.a<de.b<OpMetric>> C;
    private fi.a<f> D;
    private k E;
    private fi.a<de.p> F;
    private fi.a<ConfigClient> G;
    private fi.a<com.snapchat.kit.sdk.core.config.f> H;
    private fi.a<Random> I;
    private fi.a<he.d> J;
    private fi.a<SkateClient> K;
    private fi.a<he.a> L;
    private fi.a<de.b<SkateEvent>> M;
    private fi.a<SnapKitInitType> N;
    private fi.a<he.c> O;
    private fi.a<SnapKitAppLifecycleObserver> P;

    /* renamed from: a  reason: collision with root package name */
    private fi.a<Context> f29545a;

    /* renamed from: b  reason: collision with root package name */
    private fi.a<Gson> f29546b;

    /* renamed from: c  reason: collision with root package name */
    private fi.a<SharedPreferences> f29547c;

    /* renamed from: d  reason: collision with root package name */
    private fi.a<SecureSharedPreferences> f29548d;

    /* renamed from: e  reason: collision with root package name */
    private fi.a<be.d> f29549e;

    /* renamed from: f  reason: collision with root package name */
    private fi.a<Handler> f29550f;

    /* renamed from: g  reason: collision with root package name */
    private fi.a<ce.c> f29551g;

    /* renamed from: h  reason: collision with root package name */
    private fi.a<OkHttpClient> f29552h;

    /* renamed from: i  reason: collision with root package name */
    private fi.a<Cache> f29553i;

    /* renamed from: j  reason: collision with root package name */
    private fi.a<String> f29554j;

    /* renamed from: k  reason: collision with root package name */
    private fi.a<ie.f> f29555k;

    /* renamed from: l  reason: collision with root package name */
    private fi.a f29556l;

    /* renamed from: m  reason: collision with root package name */
    private fi.a<ie.a> f29557m;

    /* renamed from: n  reason: collision with root package name */
    private fi.a<FirebaseExtensionClient> f29558n;

    /* renamed from: o  reason: collision with root package name */
    private fi.a<ie.j> f29559o;

    /* renamed from: p  reason: collision with root package name */
    private fi.a<ge.i> f29560p;

    /* renamed from: q  reason: collision with root package name */
    private fi.a<MetricsClient> f29561q;

    /* renamed from: r  reason: collision with root package name */
    private fi.a<fe.a> f29562r;

    /* renamed from: s  reason: collision with root package name */
    private fi.a<ge.b> f29563s;

    /* renamed from: t  reason: collision with root package name */
    private fi.a<ScheduledExecutorService> f29564t;

    /* renamed from: u  reason: collision with root package name */
    private fi.a f29565u;

    /* renamed from: v  reason: collision with root package name */
    private fi.a<de.d<ServerEvent>> f29566v;

    /* renamed from: w  reason: collision with root package name */
    private fi.a<ge.d> f29567w;

    /* renamed from: x  reason: collision with root package name */
    private fi.a<KitPluginType> f29568x;

    /* renamed from: y  reason: collision with root package name */
    private fi.a<Boolean> f29569y;

    /* renamed from: z  reason: collision with root package name */
    private fi.a<ge.a> f29570z;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private k f29571a;

        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }

        public final be.b a() {
            if (this.f29571a != null) {
                return new g(this, (byte) 0);
            }
            throw new IllegalStateException(k.class.getCanonicalName() + " must be set");
        }

        public final a b(k kVar) {
            this.f29571a = (k) eg.d.a(kVar);
            return this;
        }
    }

    /* synthetic */ g(a aVar, byte b10) {
        this(aVar);
    }

    public static a m() {
        return new a((byte) 0);
    }

    @Override // be.c
    public final ge.a a() {
        return ge.h.b(g(), b(), l());
    }

    @Override // be.c
    public final KitPluginType b() {
        return (KitPluginType) eg.d.b(this.E.k(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // be.b
    public final void c(SnapKitActivity snapKitActivity) {
        j.a(snapKitActivity, this.D.get());
    }

    @Override // be.c
    public final Handler d() {
        return this.f29550f.get();
    }

    @Override // be.b
    public final void e(SnapCFSActivity snapCFSActivity) {
        i.b(snapCFSActivity, this.D.get());
        i.a(snapCFSActivity, n());
    }

    @Override // be.c
    public final de.b<ServerEvent> f() {
        return this.f29567w.get();
    }

    @Override // be.c
    public final String g() {
        return (String) eg.d.b(this.E.i(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // be.c
    public final Context h() {
        return this.f29545a.get();
    }

    @Override // be.c
    public final String i() {
        return (String) eg.d.b(this.E.j(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // be.c
    public final de.b<OpMetric> j() {
        return this.C.get();
    }

    @Override // be.c
    public final SnapKitAppLifecycleObserver k() {
        return this.P.get();
    }

    @Override // be.c
    public final boolean l() {
        return this.E.l();
    }

    public final ce.b n() {
        return (ce.b) eg.d.b(k.b(this.f29551g.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    private g(a aVar) {
        this.f29545a = eg.b.b(n.a(aVar.f29571a));
        this.f29546b = eg.b.b(q.a(aVar.f29571a));
        this.f29547c = eg.b.b(x.a(aVar.f29571a));
        this.f29548d = eg.b.b(w.a(aVar.f29571a, this.f29546b, this.f29547c));
        this.f29549e = eg.b.b(p.a(aVar.f29571a, this.f29547c, this.f29546b));
        fi.a<Handler> b10 = eg.b.b(e.a(aVar.f29571a));
        this.f29550f = b10;
        this.f29551g = eg.b.b(ce.d.a(b10));
        this.f29552h = eg.b.b(t.a(aVar.f29571a));
        this.f29553i = eg.b.b(l.a(aVar.f29571a));
        this.D = new eg.a();
        eg.c<String> a10 = m.a(aVar.f29571a);
        this.f29554j = a10;
        this.f29555k = ie.g.a(this.D, this.f29551g, a10, this.f29546b);
        fi.a b11 = eg.b.b(ie.i.a(this.f29554j));
        this.f29556l = b11;
        this.f29557m = eg.b.b(ie.d.a(this.f29553i, this.f29546b, this.f29555k, b11));
        fi.a<FirebaseExtensionClient> b12 = eg.b.b(o.a(aVar.f29571a, this.f29557m));
        this.f29558n = b12;
        this.f29559o = eg.b.b(ie.k.a(b12, this.f29546b));
        this.f29560p = de.n.a(this.f29547c);
        this.f29561q = eg.b.b(de.j.a(this.f29557m));
        eg.c<fe.a> a11 = fe.b.a(this.f29546b);
        this.f29562r = a11;
        this.f29563s = eg.b.b(ge.c.a(this.f29547c, this.f29560p, this.f29561q, a11));
        fi.a<ScheduledExecutorService> b13 = eg.b.b(de.m.a());
        this.f29564t = b13;
        fi.a b14 = eg.b.b(de.k.a(this.f29545a, b13));
        this.f29565u = b14;
        eg.c<de.d<ServerEvent>> a12 = de.g.a(this.f29563s, this.f29564t, b14);
        this.f29566v = a12;
        this.f29567w = eg.b.b(ge.e.a(this.f29560p, a12));
        this.f29568x = r.a(aVar.f29571a);
        eg.c<Boolean> a13 = v.a(aVar.f29571a);
        this.f29569y = a13;
        eg.c<ge.a> a14 = ge.h.a(this.f29554j, this.f29568x, a13);
        this.f29570z = a14;
        this.A = ge.g.a(a14);
        fi.a<ee.a> b15 = eg.b.b(ee.b.a(this.f29547c, this.f29561q, this.f29562r));
        this.B = b15;
        this.C = eg.b.b(de.l.a(b15, this.f29564t, this.f29565u));
        fi.a<f> b16 = eg.b.b(s.a(aVar.f29571a, this.f29548d, this.f29549e, this.f29551g, this.f29552h, this.f29559o, this.f29546b, this.f29567w, this.A, this.C));
        this.D = b16;
        ((eg.a) this.D).b(b16);
        this.E = aVar.f29571a;
        this.F = eg.b.b(de.q.a(this.f29547c, this.f29561q, this.f29562r, this.f29554j));
        fi.a<ConfigClient> b17 = eg.b.b(de.h.a(this.f29557m));
        this.G = b17;
        this.H = eg.b.b(com.snapchat.kit.sdk.core.config.h.a(b17, this.f29547c));
        eg.c<Random> a15 = u.a(aVar.f29571a);
        this.I = a15;
        this.J = he.e.a(this.f29547c, a15);
        fi.a<SkateClient> b18 = eg.b.b(de.o.a(this.f29557m));
        this.K = b18;
        fi.a<he.a> b19 = eg.b.b(he.b.a(this.H, this.f29547c, this.f29560p, b18, this.f29562r));
        this.L = b19;
        this.M = eg.b.b(de.i.a(b19, this.f29564t, this.f29565u));
        this.N = d.a(aVar.f29571a);
        this.O = eg.b.b(y.a(aVar.f29571a, this.H, this.J, this.M, this.D, this.N));
        this.P = eg.b.b(z.a(aVar.f29571a, this.O));
    }
}
