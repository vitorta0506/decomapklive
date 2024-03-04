package io.grpc.internal;
/* loaded from: classes5.dex */
public final class p2 {

    /* renamed from: l  reason: collision with root package name */
    private static final b f42975l = new b(m2.f42901a);

    /* renamed from: a  reason: collision with root package name */
    private final m2 f42976a;

    /* renamed from: b  reason: collision with root package name */
    private long f42977b;

    /* renamed from: c  reason: collision with root package name */
    private long f42978c;

    /* renamed from: d  reason: collision with root package name */
    private long f42979d;

    /* renamed from: e  reason: collision with root package name */
    private long f42980e;

    /* renamed from: f  reason: collision with root package name */
    private long f42981f;

    /* renamed from: g  reason: collision with root package name */
    private c f42982g;

    /* renamed from: h  reason: collision with root package name */
    private long f42983h;

    /* renamed from: i  reason: collision with root package name */
    private long f42984i;

    /* renamed from: j  reason: collision with root package name */
    private final e1 f42985j;

    /* renamed from: k  reason: collision with root package name */
    private volatile long f42986k;

    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final m2 f42987a;

        public b(m2 m2Var) {
            this.f42987a = m2Var;
        }

        public p2 a() {
            return new p2(this.f42987a);
        }
    }

    /* loaded from: classes5.dex */
    public interface c {
    }

    public static b a() {
        return f42975l;
    }

    public void b() {
        this.f42981f++;
    }

    public void c() {
        this.f42977b++;
        this.f42978c = this.f42976a.a();
    }

    public void d() {
        this.f42985j.add(1L);
        this.f42986k = this.f42976a.a();
    }

    public void e(int i9) {
        if (i9 == 0) {
            return;
        }
        this.f42983h += i9;
        this.f42984i = this.f42976a.a();
    }

    public void f(boolean z10) {
        if (z10) {
            this.f42979d++;
        } else {
            this.f42980e++;
        }
    }

    public void g(c cVar) {
        this.f42982g = (c) com.google.common.base.o.s(cVar);
    }

    public p2() {
        this.f42985j = f1.a();
        this.f42976a = m2.f42901a;
    }

    private p2(m2 m2Var) {
        this.f42985j = f1.a();
        this.f42976a = m2Var;
    }
}
