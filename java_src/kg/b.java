package kg;

import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
/* loaded from: classes5.dex */
public abstract class b implements k {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f53735b;

    /* renamed from: c  reason: collision with root package name */
    private final j f53736c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53737a;

        static {
            int[] iArr = new int[ResourceLeakDetector.Level.values().length];
            f53737a = iArr;
            try {
                iArr[ResourceLeakDetector.Level.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53737a[ResourceLeakDetector.Level.ADVANCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f53737a[ResourceLeakDetector.Level.PARANOID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        ResourceLeakDetector.d(b.class, "toLeakAwareBuffer");
    }

    protected b() {
        this(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j q(j jVar) {
        j o0Var;
        io.grpc.netty.shaded.io.netty.util.v<j> l10;
        int i9 = a.f53737a[ResourceLeakDetector.f().ordinal()];
        if (i9 == 1) {
            io.grpc.netty.shaded.io.netty.util.v<j> l11 = kg.a.f53716i.l(jVar);
            if (l11 == null) {
                return jVar;
            }
            o0Var = new o0(jVar, l11);
        } else if ((i9 != 2 && i9 != 3) || (l10 = kg.a.f53716i.l(jVar)) == null) {
            return jVar;
        } else {
            o0Var = new h(jVar, l10);
        }
        return o0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static o r(o oVar) {
        o p0Var;
        io.grpc.netty.shaded.io.netty.util.v<j> l10;
        int i9 = a.f53737a[ResourceLeakDetector.f().ordinal()];
        if (i9 == 1) {
            io.grpc.netty.shaded.io.netty.util.v<j> l11 = kg.a.f53716i.l(oVar);
            if (l11 == null) {
                return oVar;
            }
            p0Var = new p0(oVar, l11);
        } else if ((i9 != 2 && i9 != 3) || (l10 = kg.a.f53716i.l(oVar)) == null) {
            return oVar;
        } else {
            p0Var = new i(oVar, l10);
        }
        return p0Var;
    }

    private static void s(int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "initialCapacity");
        if (i9 > i10) {
            throw new IllegalArgumentException(String.format("initialCapacity: %d (expected: not greater than maxCapacity(%d)", Integer.valueOf(i9), Integer.valueOf(i10)));
        }
    }

    @Override // kg.k
    public o a(int i9) {
        return r(new o(this, true, i9));
    }

    @Override // kg.k
    public j b(int i9) {
        return f(i9, Integer.MAX_VALUE);
    }

    @Override // kg.k
    public j buffer() {
        if (this.f53735b) {
            return g();
        }
        return k();
    }

    @Override // kg.k
    public int c(int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minNewCapacity");
        if (i9 <= i10) {
            if (i9 == 4194304) {
                return 4194304;
            }
            if (i9 > 4194304) {
                int i11 = (i9 / 4194304) * 4194304;
                return i11 > i10 - 4194304 ? i10 : i11 + 4194304;
            }
            return Math.min(io.grpc.netty.shaded.io.netty.util.internal.o.b(Math.max(i9, 64)), i10);
        }
        throw new IllegalArgumentException(String.format("minNewCapacity: %d (expected: not greater than maxCapacity(%d)", Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    @Override // kg.k
    public j d(int i9) {
        if (!io.grpc.netty.shaded.io.netty.util.internal.t.T() && !e()) {
            return b(i9);
        }
        return h(i9);
    }

    @Override // kg.k
    public j f(int i9, int i10) {
        if (i9 == 0 && i10 == 0) {
            return this.f53736c;
        }
        s(i9, i10);
        return p(i9, i10);
    }

    @Override // kg.k
    public j g() {
        return i(256, Integer.MAX_VALUE);
    }

    @Override // kg.k
    public j h(int i9) {
        return i(i9, Integer.MAX_VALUE);
    }

    @Override // kg.k
    public j i(int i9, int i10) {
        if (i9 == 0 && i10 == 0) {
            return this.f53736c;
        }
        s(i9, i10);
        return o(i9, i10);
    }

    @Override // kg.k
    public j j(int i9, int i10) {
        if (this.f53735b) {
            return i(i9, i10);
        }
        return f(i9, i10);
    }

    @Override // kg.k
    public j k() {
        return f(256, Integer.MAX_VALUE);
    }

    @Override // kg.k
    public j l(int i9) {
        if (this.f53735b) {
            return h(i9);
        }
        return b(i9);
    }

    @Override // kg.k
    public o m(int i9) {
        if (this.f53735b) {
            return a(i9);
        }
        return n(i9);
    }

    public o n(int i9) {
        return r(new o(this, false, i9));
    }

    protected abstract j o(int i9, int i10);

    protected abstract j p(int i9, int i10);

    public String toString() {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.m(this) + "(directByDefault: " + this.f53735b + ')';
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(boolean z10) {
        this.f53735b = z10 && io.grpc.netty.shaded.io.netty.util.internal.t.T();
        this.f53736c = new r(this);
    }
}
