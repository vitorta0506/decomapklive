package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.base.j;
import com.google.common.base.w;
import com.google.common.base.x;
import com.google.common.base.z;
import com.google.common.cache.k;
import com.meizu.cloud.pushsdk.notification.model.NotificationStyle;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public final class d<K, V> {

    /* renamed from: q  reason: collision with root package name */
    static final w<? extends com.google.common.cache.b> f12417q = x.a(new a());

    /* renamed from: r  reason: collision with root package name */
    static final com.google.common.cache.e f12418r = new com.google.common.cache.e(0, 0, 0, 0, 0, 0);

    /* renamed from: s  reason: collision with root package name */
    static final w<com.google.common.cache.b> f12419s = new b();

    /* renamed from: t  reason: collision with root package name */
    static final z f12420t = new c();

    /* renamed from: u  reason: collision with root package name */
    private static final Logger f12421u = Logger.getLogger(d.class.getName());

    /* renamed from: f  reason: collision with root package name */
    t<? super K, ? super V> f12427f;

    /* renamed from: g  reason: collision with root package name */
    k.u f12428g;

    /* renamed from: h  reason: collision with root package name */
    k.u f12429h;

    /* renamed from: l  reason: collision with root package name */
    Equivalence<Object> f12433l;

    /* renamed from: m  reason: collision with root package name */
    Equivalence<Object> f12434m;

    /* renamed from: n  reason: collision with root package name */
    r<? super K, ? super V> f12435n;

    /* renamed from: o  reason: collision with root package name */
    z f12436o;

    /* renamed from: a  reason: collision with root package name */
    boolean f12422a = true;

    /* renamed from: b  reason: collision with root package name */
    int f12423b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f12424c = -1;

    /* renamed from: d  reason: collision with root package name */
    long f12425d = -1;

    /* renamed from: e  reason: collision with root package name */
    long f12426e = -1;

    /* renamed from: i  reason: collision with root package name */
    long f12430i = -1;

    /* renamed from: j  reason: collision with root package name */
    long f12431j = -1;

    /* renamed from: k  reason: collision with root package name */
    long f12432k = -1;

    /* renamed from: p  reason: collision with root package name */
    w<? extends com.google.common.cache.b> f12437p = f12417q;

    /* loaded from: classes2.dex */
    class a implements com.google.common.cache.b {
        a() {
        }

        @Override // com.google.common.cache.b
        public void a(int i9) {
        }

        @Override // com.google.common.cache.b
        public void b(int i9) {
        }

        @Override // com.google.common.cache.b
        public void c() {
        }

        @Override // com.google.common.cache.b
        public void d(long j10) {
        }

        @Override // com.google.common.cache.b
        public void e(long j10) {
        }
    }

    /* loaded from: classes2.dex */
    class b implements w<com.google.common.cache.b> {
        b() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public com.google.common.cache.b get() {
            return new com.google.common.cache.a();
        }
    }

    /* loaded from: classes2.dex */
    class c extends z {
        c() {
        }

        @Override // com.google.common.base.z
        public long a() {
            return 0L;
        }
    }

    /* renamed from: com.google.common.cache.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    enum EnumC0103d implements r<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.r
        public void a(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* loaded from: classes2.dex */
    enum e implements t<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.t
        public int a(Object obj, Object obj2) {
            return 1;
        }
    }

    private d() {
    }

    private void c() {
        com.google.common.base.o.A(this.f12432k == -1, "refreshAfterWrite requires a LoadingCache");
    }

    private void d() {
        if (this.f12427f == null) {
            com.google.common.base.o.A(this.f12426e == -1, "maximumWeight requires weigher");
        } else if (this.f12422a) {
            com.google.common.base.o.A(this.f12426e != -1, "weigher requires maximumWeight");
        } else if (this.f12426e == -1) {
            f12421u.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    public static d<Object, Object> y() {
        return new d<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> A(k.u uVar) {
        k.u uVar2 = this.f12428g;
        com.google.common.base.o.D(uVar2 == null, "Key strength was already set to %s", uVar2);
        this.f12428g = (k.u) com.google.common.base.o.s(uVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> B(k.u uVar) {
        k.u uVar2 = this.f12429h;
        com.google.common.base.o.D(uVar2 == null, "Value strength was already set to %s", uVar2);
        this.f12429h = (k.u) com.google.common.base.o.s(uVar);
        return this;
    }

    public d<K, V> C(z zVar) {
        com.google.common.base.o.z(this.f12436o == null);
        this.f12436o = (z) com.google.common.base.o.s(zVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> D(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f12434m;
        com.google.common.base.o.D(equivalence2 == null, "value equivalence was already set to %s", equivalence2);
        this.f12434m = (Equivalence) com.google.common.base.o.s(equivalence);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K1 extends K, V1 extends V> d<K1, V1> E(t<? super K1, ? super V1> tVar) {
        com.google.common.base.o.z(this.f12427f == null);
        if (this.f12422a) {
            long j10 = this.f12425d;
            com.google.common.base.o.C(j10 == -1, "weigher can not be combined with maximum size", j10);
        }
        this.f12427f = (t) com.google.common.base.o.s(tVar);
        return this;
    }

    public <K1 extends K, V1 extends V> com.google.common.cache.c<K1, V1> a() {
        d();
        c();
        return new k.p(this);
    }

    public <K1 extends K, V1 extends V> g<K1, V1> b(CacheLoader<? super K1, V1> cacheLoader) {
        d();
        return new k.o(this, cacheLoader);
    }

    public d<K, V> e(int i9) {
        int i10 = this.f12424c;
        com.google.common.base.o.B(i10 == -1, "concurrency level was already set to %s", i10);
        com.google.common.base.o.d(i9 > 0);
        this.f12424c = i9;
        return this;
    }

    public d<K, V> f(long j10, TimeUnit timeUnit) {
        long j11 = this.f12431j;
        com.google.common.base.o.C(j11 == -1, "expireAfterAccess was already set to %s ns", j11);
        com.google.common.base.o.l(j10 >= 0, "duration cannot be negative: %s %s", j10, timeUnit);
        this.f12431j = timeUnit.toNanos(j10);
        return this;
    }

    public d<K, V> g(long j10, TimeUnit timeUnit) {
        long j11 = this.f12430i;
        com.google.common.base.o.C(j11 == -1, "expireAfterWrite was already set to %s ns", j11);
        com.google.common.base.o.l(j10 >= 0, "duration cannot be negative: %s %s", j10, timeUnit);
        this.f12430i = timeUnit.toNanos(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        int i9 = this.f12424c;
        if (i9 == -1) {
            return 4;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long i() {
        long j10 = this.f12431j;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long j() {
        long j10 = this.f12430i;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        int i9 = this.f12423b;
        if (i9 == -1) {
            return 16;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> l() {
        return (Equivalence) com.google.common.base.j.a(this.f12433l, m().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.u m() {
        return (k.u) com.google.common.base.j.a(this.f12428g, k.u.f12571a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long n() {
        if (this.f12430i == 0 || this.f12431j == 0) {
            return 0L;
        }
        return this.f12427f == null ? this.f12425d : this.f12426e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long o() {
        long j10 = this.f12432k;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> r<K1, V1> p() {
        return (r) com.google.common.base.j.a(this.f12435n, EnumC0103d.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w<? extends com.google.common.cache.b> q() {
        return this.f12437p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z r(boolean z10) {
        z zVar = this.f12436o;
        return zVar != null ? zVar : z10 ? z.b() : f12420t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> s() {
        return (Equivalence) com.google.common.base.j.a(this.f12434m, t().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.u t() {
        return (k.u) com.google.common.base.j.a(this.f12429h, k.u.f12571a);
    }

    public String toString() {
        j.b c10 = com.google.common.base.j.c(this);
        int i9 = this.f12423b;
        if (i9 != -1) {
            c10.b("initialCapacity", i9);
        }
        int i10 = this.f12424c;
        if (i10 != -1) {
            c10.b("concurrencyLevel", i10);
        }
        long j10 = this.f12425d;
        if (j10 != -1) {
            c10.c("maximumSize", j10);
        }
        long j11 = this.f12426e;
        if (j11 != -1) {
            c10.c("maximumWeight", j11);
        }
        long j12 = this.f12430i;
        if (j12 != -1) {
            StringBuilder sb2 = new StringBuilder(22);
            sb2.append(j12);
            sb2.append(NotificationStyle.NOTIFICATION_STYLE);
            c10.d("expireAfterWrite", sb2.toString());
        }
        long j13 = this.f12431j;
        if (j13 != -1) {
            StringBuilder sb3 = new StringBuilder(22);
            sb3.append(j13);
            sb3.append(NotificationStyle.NOTIFICATION_STYLE);
            c10.d("expireAfterAccess", sb3.toString());
        }
        k.u uVar = this.f12428g;
        if (uVar != null) {
            c10.d("keyStrength", com.google.common.base.c.f(uVar.toString()));
        }
        k.u uVar2 = this.f12429h;
        if (uVar2 != null) {
            c10.d("valueStrength", com.google.common.base.c.f(uVar2.toString()));
        }
        if (this.f12433l != null) {
            c10.k("keyEquivalence");
        }
        if (this.f12434m != null) {
            c10.k("valueEquivalence");
        }
        if (this.f12435n != null) {
            c10.k("removalListener");
        }
        return c10.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> t<K1, V1> u() {
        return (t) com.google.common.base.j.a(this.f12427f, e.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> v(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f12433l;
        com.google.common.base.o.D(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f12433l = (Equivalence) com.google.common.base.o.s(equivalence);
        return this;
    }

    public d<K, V> w(long j10) {
        long j11 = this.f12425d;
        com.google.common.base.o.C(j11 == -1, "maximum size was already set to %s", j11);
        long j12 = this.f12426e;
        com.google.common.base.o.C(j12 == -1, "maximum weight was already set to %s", j12);
        com.google.common.base.o.A(this.f12427f == null, "maximum size can not be combined with weigher");
        com.google.common.base.o.e(j10 >= 0, "maximum size must not be negative");
        this.f12425d = j10;
        return this;
    }

    public d<K, V> x(long j10) {
        long j11 = this.f12426e;
        com.google.common.base.o.C(j11 == -1, "maximum weight was already set to %s", j11);
        long j12 = this.f12425d;
        com.google.common.base.o.C(j12 == -1, "maximum size was already set to %s", j12);
        com.google.common.base.o.e(j10 >= 0, "maximum weight must not be negative");
        this.f12426e = j10;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K1 extends K, V1 extends V> d<K1, V1> z(r<? super K1, ? super V1> rVar) {
        com.google.common.base.o.z(this.f12435n == null);
        this.f12435n = (r) com.google.common.base.o.s(rVar);
        return this;
    }
}
