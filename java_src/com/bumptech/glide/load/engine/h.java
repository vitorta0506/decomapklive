package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.f;
import com.bumptech.glide.load.engine.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import w0.a;
/* loaded from: classes.dex */
class h<R> implements f.a, Runnable, Comparable<h<?>>, a.f {
    private DataSource A;
    private com.bumptech.glide.load.data.d<?> B;
    private volatile com.bumptech.glide.load.engine.f C;
    private volatile boolean D;
    private volatile boolean E;
    private boolean F;

    /* renamed from: d  reason: collision with root package name */
    private final e f4297d;

    /* renamed from: e  reason: collision with root package name */
    private final Pools.Pool<h<?>> f4298e;

    /* renamed from: h  reason: collision with root package name */
    private com.bumptech.glide.e f4301h;

    /* renamed from: i  reason: collision with root package name */
    private e0.b f4302i;

    /* renamed from: j  reason: collision with root package name */
    private Priority f4303j;

    /* renamed from: k  reason: collision with root package name */
    private n f4304k;

    /* renamed from: l  reason: collision with root package name */
    private int f4305l;

    /* renamed from: m  reason: collision with root package name */
    private int f4306m;

    /* renamed from: n  reason: collision with root package name */
    private j f4307n;

    /* renamed from: o  reason: collision with root package name */
    private e0.e f4308o;

    /* renamed from: p  reason: collision with root package name */
    private b<R> f4309p;

    /* renamed from: q  reason: collision with root package name */
    private int f4310q;

    /* renamed from: r  reason: collision with root package name */
    private EnumC0066h f4311r;

    /* renamed from: s  reason: collision with root package name */
    private g f4312s;

    /* renamed from: t  reason: collision with root package name */
    private long f4313t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f4314u;

    /* renamed from: v  reason: collision with root package name */
    private Object f4315v;

    /* renamed from: w  reason: collision with root package name */
    private Thread f4316w;

    /* renamed from: x  reason: collision with root package name */
    private e0.b f4317x;

    /* renamed from: y  reason: collision with root package name */
    private e0.b f4318y;

    /* renamed from: z  reason: collision with root package name */
    private Object f4319z;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.g<R> f4294a = new com.bumptech.glide.load.engine.g<>();

    /* renamed from: b  reason: collision with root package name */
    private final List<Throwable> f4295b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final w0.c f4296c = w0.c.a();

    /* renamed from: f  reason: collision with root package name */
    private final d<?> f4299f = new d<>();

    /* renamed from: g  reason: collision with root package name */
    private final f f4300g = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4320a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4321b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f4322c;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f4322c = iArr;
            try {
                iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4322c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC0066h.values().length];
            f4321b = iArr2;
            try {
                iArr2[EnumC0066h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4321b[EnumC0066h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4321b[EnumC0066h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4321b[EnumC0066h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4321b[EnumC0066h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[g.values().length];
            f4320a = iArr3;
            try {
                iArr3[g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4320a[g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4320a[g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b<R> {
        void b(u<R> uVar, DataSource dataSource, boolean z10);

        void c(GlideException glideException);

        void e(h<?> hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c<Z> implements i.a<Z> {

        /* renamed from: a  reason: collision with root package name */
        private final DataSource f4323a;

        c(DataSource dataSource) {
            this.f4323a = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.i.a
        @NonNull
        public u<Z> a(@NonNull u<Z> uVar) {
            return h.this.y(this.f4323a, uVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d<Z> {

        /* renamed from: a  reason: collision with root package name */
        private e0.b f4325a;

        /* renamed from: b  reason: collision with root package name */
        private e0.g<Z> f4326b;

        /* renamed from: c  reason: collision with root package name */
        private t<Z> f4327c;

        d() {
        }

        void a() {
            this.f4325a = null;
            this.f4326b = null;
            this.f4327c = null;
        }

        void b(e eVar, e0.e eVar2) {
            w0.b.a("DecodeJob.encode");
            try {
                eVar.a().b(this.f4325a, new com.bumptech.glide.load.engine.e(this.f4326b, this.f4327c, eVar2));
            } finally {
                this.f4327c.f();
                w0.b.e();
            }
        }

        boolean c() {
            return this.f4327c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        <X> void d(e0.b bVar, e0.g<X> gVar, t<X> tVar) {
            this.f4325a = bVar;
            this.f4326b = gVar;
            this.f4327c = tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface e {
        h0.a a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4328a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f4329b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f4330c;

        f() {
        }

        private boolean a(boolean z10) {
            return (this.f4330c || z10 || this.f4329b) && this.f4328a;
        }

        synchronized boolean b() {
            this.f4329b = true;
            return a(false);
        }

        synchronized boolean c() {
            this.f4330c = true;
            return a(false);
        }

        synchronized boolean d(boolean z10) {
            this.f4328a = true;
            return a(z10);
        }

        synchronized void e() {
            this.f4329b = false;
            this.f4328a = false;
            this.f4330c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0066h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, Pools.Pool<h<?>> pool) {
        this.f4297d = eVar;
        this.f4298e = pool;
    }

    private void A() {
        this.f4300g.e();
        this.f4299f.a();
        this.f4294a.a();
        this.D = false;
        this.f4301h = null;
        this.f4302i = null;
        this.f4308o = null;
        this.f4303j = null;
        this.f4304k = null;
        this.f4309p = null;
        this.f4311r = null;
        this.C = null;
        this.f4316w = null;
        this.f4317x = null;
        this.f4319z = null;
        this.A = null;
        this.B = null;
        this.f4313t = 0L;
        this.E = false;
        this.f4315v = null;
        this.f4295b.clear();
        this.f4298e.release(this);
    }

    private void B() {
        this.f4316w = Thread.currentThread();
        this.f4313t = v0.f.b();
        boolean z10 = false;
        while (!this.E && this.C != null && !(z10 = this.C.a())) {
            this.f4311r = m(this.f4311r);
            this.C = l();
            if (this.f4311r == EnumC0066h.SOURCE) {
                f();
                return;
            }
        }
        if ((this.f4311r == EnumC0066h.FINISHED || this.E) && !z10) {
            v();
        }
    }

    private <Data, ResourceType> u<R> C(Data data, DataSource dataSource, s<Data, ResourceType, R> sVar) throws GlideException {
        e0.e o10 = o(dataSource);
        com.bumptech.glide.load.data.e<Data> l10 = this.f4301h.i().l(data);
        try {
            return sVar.a(l10, o10, this.f4305l, this.f4306m, new c(dataSource));
        } finally {
            l10.b();
        }
    }

    private void F() {
        int i9 = a.f4320a[this.f4312s.ordinal()];
        if (i9 == 1) {
            this.f4311r = m(EnumC0066h.INITIALIZE);
            this.C = l();
            B();
        } else if (i9 == 2) {
            B();
        } else if (i9 == 3) {
            k();
        } else {
            throw new IllegalStateException("Unrecognized run reason: " + this.f4312s);
        }
    }

    private void I() {
        Throwable th2;
        this.f4296c.c();
        if (this.D) {
            if (this.f4295b.isEmpty()) {
                th2 = null;
            } else {
                List<Throwable> list = this.f4295b;
                th2 = list.get(list.size() - 1);
            }
            throw new IllegalStateException("Already notified", th2);
        }
        this.D = true;
    }

    private <Data> u<R> i(com.bumptech.glide.load.data.d<?> dVar, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            return null;
        }
        try {
            long b10 = v0.f.b();
            u<R> j10 = j(data, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                r("Decoded result " + j10, b10);
            }
            return j10;
        } finally {
            dVar.b();
        }
    }

    private <Data> u<R> j(Data data, DataSource dataSource) throws GlideException {
        return C(data, dataSource, (s<Data, ?, R>) this.f4294a.h(data.getClass()));
    }

    private void k() {
        if (Log.isLoggable("DecodeJob", 2)) {
            long j10 = this.f4313t;
            s("Retrieved data", j10, "data: " + this.f4319z + ", cache key: " + this.f4317x + ", fetcher: " + this.B);
        }
        u<R> uVar = null;
        try {
            uVar = i(this.B, this.f4319z, this.A);
        } catch (GlideException e10) {
            e10.setLoggingDetails(this.f4318y, this.A);
            this.f4295b.add(e10);
        }
        if (uVar != null) {
            u(uVar, this.A, this.F);
        } else {
            B();
        }
    }

    private com.bumptech.glide.load.engine.f l() {
        int i9 = a.f4321b[this.f4311r.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 4) {
                        return null;
                    }
                    throw new IllegalStateException("Unrecognized stage: " + this.f4311r);
                }
                return new y(this.f4294a, this);
            }
            return new com.bumptech.glide.load.engine.c(this.f4294a, this);
        }
        return new v(this.f4294a, this);
    }

    private EnumC0066h m(EnumC0066h enumC0066h) {
        int i9 = a.f4321b[enumC0066h.ordinal()];
        if (i9 == 1) {
            if (this.f4307n.a()) {
                return EnumC0066h.DATA_CACHE;
            }
            return m(EnumC0066h.DATA_CACHE);
        } else if (i9 == 2) {
            return this.f4314u ? EnumC0066h.FINISHED : EnumC0066h.SOURCE;
        } else if (i9 == 3 || i9 == 4) {
            return EnumC0066h.FINISHED;
        } else {
            if (i9 == 5) {
                if (this.f4307n.b()) {
                    return EnumC0066h.RESOURCE_CACHE;
                }
                return m(EnumC0066h.RESOURCE_CACHE);
            }
            throw new IllegalArgumentException("Unrecognized stage: " + enumC0066h);
        }
    }

    @NonNull
    private e0.e o(DataSource dataSource) {
        e0.e eVar = this.f4308o;
        if (Build.VERSION.SDK_INT < 26) {
            return eVar;
        }
        boolean z10 = dataSource == DataSource.RESOURCE_DISK_CACHE || this.f4294a.x();
        e0.d<Boolean> dVar = com.bumptech.glide.load.resource.bitmap.m.f4527j;
        Boolean bool = (Boolean) eVar.a(dVar);
        if (bool == null || (bool.booleanValue() && !z10)) {
            e0.e eVar2 = new e0.e();
            eVar2.b(this.f4308o);
            eVar2.c(dVar, Boolean.valueOf(z10));
            return eVar2;
        }
        return eVar;
    }

    private int p() {
        return this.f4303j.ordinal();
    }

    private void r(String str, long j10) {
        s(str, j10, null);
    }

    private void s(String str, long j10, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" in ");
        sb2.append(v0.f.a(j10));
        sb2.append(", load key: ");
        sb2.append(this.f4304k);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", thread: ");
        sb2.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sb2.toString());
    }

    private void t(u<R> uVar, DataSource dataSource, boolean z10) {
        I();
        this.f4309p.b(uVar, dataSource, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void u(u<R> uVar, DataSource dataSource, boolean z10) {
        w0.b.a("DecodeJob.notifyEncodeAndRelease");
        try {
            if (uVar instanceof q) {
                ((q) uVar).initialize();
            }
            t tVar = 0;
            if (this.f4299f.c()) {
                uVar = t.c(uVar);
                tVar = uVar;
            }
            t(uVar, dataSource, z10);
            this.f4311r = EnumC0066h.ENCODE;
            if (this.f4299f.c()) {
                this.f4299f.b(this.f4297d, this.f4308o);
            }
            if (tVar != 0) {
                tVar.f();
            }
            w();
        } finally {
            w0.b.e();
        }
    }

    private void v() {
        I();
        this.f4309p.c(new GlideException("Failed to load resource", new ArrayList(this.f4295b)));
        x();
    }

    private void w() {
        if (this.f4300g.b()) {
            A();
        }
    }

    private void x() {
        if (this.f4300g.c()) {
            A();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean L() {
        EnumC0066h m10 = m(EnumC0066h.INITIALIZE);
        return m10 == EnumC0066h.RESOURCE_CACHE || m10 == EnumC0066h.DATA_CACHE;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void b(e0.b bVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource) {
        dVar.b();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(bVar, dataSource, dVar.a());
        this.f4295b.add(glideException);
        if (Thread.currentThread() != this.f4316w) {
            this.f4312s = g.SWITCH_TO_SOURCE_SERVICE;
            this.f4309p.e(this);
            return;
        }
        B();
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c(e0.b bVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, DataSource dataSource, e0.b bVar2) {
        this.f4317x = bVar;
        this.f4319z = obj;
        this.B = dVar;
        this.A = dataSource;
        this.f4318y = bVar2;
        this.F = bVar != this.f4294a.c().get(0);
        if (Thread.currentThread() != this.f4316w) {
            this.f4312s = g.DECODE_DATA;
            this.f4309p.e(this);
            return;
        }
        w0.b.a("DecodeJob.decodeFromRetrievedData");
        try {
            k();
        } finally {
            w0.b.e();
        }
    }

    @Override // w0.a.f
    @NonNull
    public w0.c d() {
        return this.f4296c;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void f() {
        this.f4312s = g.SWITCH_TO_SOURCE_SERVICE;
        this.f4309p.e(this);
    }

    public void g() {
        this.E = true;
        com.bumptech.glide.load.engine.f fVar = this.C;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: h */
    public int compareTo(@NonNull h<?> hVar) {
        int p10 = p() - hVar.p();
        return p10 == 0 ? this.f4310q - hVar.f4310q : p10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h<R> q(com.bumptech.glide.e eVar, Object obj, n nVar, e0.b bVar, int i9, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, e0.h<?>> map, boolean z10, boolean z11, boolean z12, e0.e eVar2, b<R> bVar2, int i11) {
        this.f4294a.v(eVar, obj, bVar, i9, i10, jVar, cls, cls2, priority, eVar2, map, z10, z11, this.f4297d);
        this.f4301h = eVar;
        this.f4302i = bVar;
        this.f4303j = priority;
        this.f4304k = nVar;
        this.f4305l = i9;
        this.f4306m = i10;
        this.f4307n = jVar;
        this.f4314u = z12;
        this.f4308o = eVar2;
        this.f4309p = bVar2;
        this.f4310q = i11;
        this.f4312s = g.INITIALIZE;
        this.f4315v = obj;
        return this;
    }

    @Override // java.lang.Runnable
    public void run() {
        w0.b.c("DecodeJob#run(reason=%s, model=%s)", this.f4312s, this.f4315v);
        com.bumptech.glide.load.data.d<?> dVar = this.B;
        try {
            try {
                if (this.E) {
                    v();
                    if (dVar != null) {
                        dVar.b();
                    }
                    w0.b.e();
                    return;
                }
                F();
                if (dVar != null) {
                    dVar.b();
                }
                w0.b.e();
            } catch (com.bumptech.glide.load.engine.b e10) {
                throw e10;
            }
        }
    }

    @NonNull
    <Z> u<Z> y(DataSource dataSource, @NonNull u<Z> uVar) {
        u<Z> uVar2;
        e0.h<Z> hVar;
        EncodeStrategy encodeStrategy;
        e0.b dVar;
        Class<?> cls = uVar.get().getClass();
        e0.g<Z> gVar = null;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            e0.h<Z> s10 = this.f4294a.s(cls);
            hVar = s10;
            uVar2 = s10.transform(this.f4301h, uVar, this.f4305l, this.f4306m);
        } else {
            uVar2 = uVar;
            hVar = null;
        }
        if (!uVar.equals(uVar2)) {
            uVar.recycle();
        }
        if (this.f4294a.w(uVar2)) {
            gVar = this.f4294a.n(uVar2);
            encodeStrategy = gVar.b(this.f4308o);
        } else {
            encodeStrategy = EncodeStrategy.NONE;
        }
        e0.g gVar2 = gVar;
        if (this.f4307n.d(!this.f4294a.y(this.f4317x), dataSource, encodeStrategy)) {
            if (gVar2 != null) {
                int i9 = a.f4322c[encodeStrategy.ordinal()];
                if (i9 == 1) {
                    dVar = new com.bumptech.glide.load.engine.d(this.f4317x, this.f4302i);
                } else if (i9 == 2) {
                    dVar = new w(this.f4294a.b(), this.f4317x, this.f4302i, this.f4305l, this.f4306m, hVar, cls, this.f4308o);
                } else {
                    throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
                }
                t c10 = t.c(uVar2);
                this.f4299f.d(dVar, gVar2, c10);
                return c10;
            }
            throw new Registry.NoResultEncoderAvailableException(uVar2.get().getClass());
        }
        return uVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(boolean z10) {
        if (this.f4300g.d(z10)) {
            A();
        }
    }
}
