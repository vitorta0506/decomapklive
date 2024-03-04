package com.google.api.client.http;

import com.google.api.client.util.c0;
import com.google.api.client.util.z;
import io.opencensus.trace.Span;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes2.dex */
public final class m {
    public static final String C;
    public static final String D;

    /* renamed from: a  reason: collision with root package name */
    private i f11025a;

    /* renamed from: h  reason: collision with root package name */
    private f f11032h;

    /* renamed from: i  reason: collision with root package name */
    private final s f11033i;

    /* renamed from: j  reason: collision with root package name */
    private String f11034j;

    /* renamed from: k  reason: collision with root package name */
    private d f11035k;

    /* renamed from: o  reason: collision with root package name */
    private t f11039o;

    /* renamed from: p  reason: collision with root package name */
    private k f11040p;

    /* renamed from: q  reason: collision with root package name */
    private q f11041q;

    /* renamed from: r  reason: collision with root package name */
    private com.google.api.client.util.w f11042r;

    /* renamed from: s  reason: collision with root package name */
    private g f11043s;
    @Deprecated

    /* renamed from: t  reason: collision with root package name */
    private b f11044t;

    /* renamed from: y  reason: collision with root package name */
    private boolean f11049y;

    /* renamed from: b  reason: collision with root package name */
    private j f11026b = new j();

    /* renamed from: c  reason: collision with root package name */
    private j f11027c = new j();

    /* renamed from: d  reason: collision with root package name */
    private int f11028d = 10;

    /* renamed from: e  reason: collision with root package name */
    private int f11029e = 16384;

    /* renamed from: f  reason: collision with root package name */
    private boolean f11030f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11031g = true;

    /* renamed from: l  reason: collision with root package name */
    private int f11036l = 20000;

    /* renamed from: m  reason: collision with root package name */
    private int f11037m = 20000;

    /* renamed from: n  reason: collision with root package name */
    private int f11038n = 0;

    /* renamed from: u  reason: collision with root package name */
    private boolean f11045u = true;

    /* renamed from: v  reason: collision with root package name */
    private boolean f11046v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f11047w = true;
    @Deprecated

    /* renamed from: x  reason: collision with root package name */
    private boolean f11048x = false;

    /* renamed from: z  reason: collision with root package name */
    private c0 f11050z = c0.f11106a;
    private final io.opencensus.trace.h A = w.b();
    private boolean B = false;

    static {
        String k10 = k();
        C = k10;
        D = "Google-HTTP-Java-Client/" + k10 + " (gzip)";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(s sVar, String str) {
        this.f11033i = sVar;
        s(str);
    }

    private static void a(Span span, String str, String str2) {
        if (str2 != null) {
            span.i(str, mh.a.b(str2));
        }
    }

    private static String k() {
        String str = "unknown-version";
        try {
            InputStream resourceAsStream = m.class.getResourceAsStream("/com/google/api/client/http/google-http-client.properties");
            if (resourceAsStream != null) {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                str = properties.getProperty("google-http-client.version");
            }
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        } catch (IOException unused) {
        }
        return str;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(2:20|(24:22|(1:24)|25|(2:27|(1:29)(1:30))|31|(1:33)|34|(1:175)(1:38)|39|(8:41|(1:43)|44|(1:46)(1:173)|47|(5:49|(2:51|(1:53))(1:171)|(2:55|(1:57))|58|(1:60))(1:172)|(1:62)|63)(1:174)|(2:65|(3:67|(1:69)|70))|(1:170)(1:73)|74|75|76|(1:78)|79|80|81|(3:112|113|(7:115|(1:117)(1:137)|(3:119|(1:(3:127|128|(2:130|131)))|121)|134|(1:136)|86|(4:89|(1:91)|92|(4:94|(1:96)|97|(1:109)(3:101|102|103))(1:110))(1:88)))|(1:84)(1:111)|85|86|(0)(0)))(1:177)|75|76|(0)|79|80|81|(0)|(0)(0)|85|86|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0293, code lost:
        if (r1.f11048x == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02aa, code lost:
        if (r9 != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02ac, code lost:
        r8.log(java.util.logging.Level.WARNING, "exception thrown while executing request", (java.lang.Throwable) r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02b3, code lost:
        r4.close();
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0290, code lost:
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0351 A[LOOP:0: B:10:0x0035->B:167:0x0351, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0313 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0261 A[Catch: all -> 0x028d, IOException -> 0x0290, TRY_LEAVE, TryCatch #3 {IOException -> 0x0290, blocks: (B:87:0x025b, B:89:0x0261, B:93:0x0283, B:95:0x0289, B:96:0x028c), top: B:177:0x025b, outer: #5 }] */
    /* JADX WARN: Type inference failed for: r14v0, types: [com.google.api.client.http.h] */
    /* JADX WARN: Type inference failed for: r14v4, types: [com.google.api.client.util.t] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.api.client.http.p b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.m.b():com.google.api.client.http.p");
    }

    public int c() {
        return this.f11029e;
    }

    public boolean d() {
        return this.f11045u;
    }

    public j e() {
        return this.f11026b;
    }

    public final com.google.api.client.util.w f() {
        return this.f11042r;
    }

    public String g() {
        return this.f11034j;
    }

    public j h() {
        return this.f11027c;
    }

    public boolean i() {
        return this.B;
    }

    public d j() {
        return this.f11035k;
    }

    public boolean l(int i9, j jVar) {
        String l10 = jVar.l();
        if (d() && r.a(i9) && l10 != null) {
            v(new d(this.f11035k.u(l10), this.f11046v));
            if (i9 == 303) {
                s("GET");
                o(null);
            }
            this.f11026b.s(null);
            this.f11026b.u(null);
            this.f11026b.w(null);
            this.f11026b.v(null);
            this.f11026b.y(null);
            this.f11026b.x(null);
            return true;
        }
        return false;
    }

    public boolean m() {
        return this.f11030f;
    }

    public m n(int i9) {
        z.a(i9 >= 0);
        this.f11036l = i9;
        return this;
    }

    public m o(f fVar) {
        this.f11032h = fVar;
        return this;
    }

    public m p(j jVar) {
        this.f11026b = (j) z.d(jVar);
        return this;
    }

    public m q(int i9) {
        z.a(i9 >= 0);
        this.f11028d = i9;
        return this;
    }

    public m r(com.google.api.client.util.w wVar) {
        this.f11042r = wVar;
        return this;
    }

    public m s(String str) {
        z.a(str == null || l.h(str));
        this.f11034j = str;
        return this;
    }

    public m t(boolean z10) {
        this.f11047w = z10;
        return this;
    }

    public m u(t tVar) {
        this.f11039o = tVar;
        return this;
    }

    public m v(d dVar) {
        this.f11035k = (d) z.d(dVar);
        return this;
    }
}
