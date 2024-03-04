package kg;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class w<T> implements z {

    /* renamed from: a  reason: collision with root package name */
    final v<T> f53938a;

    /* renamed from: b  reason: collision with root package name */
    final Object f53939b;

    /* renamed from: c  reason: collision with root package name */
    final T f53940c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f53941d;

    /* renamed from: e  reason: collision with root package name */
    private final t f53942e;

    /* renamed from: f  reason: collision with root package name */
    private final u[] f53943f;

    /* renamed from: g  reason: collision with root package name */
    private final a0<T>[] f53944g;

    /* renamed from: h  reason: collision with root package name */
    private final int f53945h;

    /* renamed from: i  reason: collision with root package name */
    private final int f53946i;

    /* renamed from: j  reason: collision with root package name */
    private final int f53947j;

    /* renamed from: k  reason: collision with root package name */
    private final Deque<ByteBuffer> f53948k;

    /* renamed from: l  reason: collision with root package name */
    int f53949l;

    /* renamed from: m  reason: collision with root package name */
    int f53950m;

    /* renamed from: n  reason: collision with root package name */
    x<T> f53951n;

    /* renamed from: o  reason: collision with root package name */
    w<T> f53952o;

    /* renamed from: p  reason: collision with root package name */
    w<T> f53953p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v<T> vVar, Object obj, T t10, int i9, int i10, int i11, int i12) {
        this.f53941d = false;
        this.f53938a = vVar;
        this.f53939b = obj;
        this.f53940c = t10;
        this.f53945h = i9;
        this.f53946i = i10;
        this.f53947j = i11;
        this.f53949l = i11;
        this.f53943f = t(i12);
        this.f53942e = new t(-1L);
        int i13 = i11 >> i10;
        this.f53944g = new a0[i13];
        o(0, i13, i13 << 34);
        this.f53948k = new ArrayDeque(8);
    }

    private long A(long j10, int i9) {
        int y10 = y(j10) - i9;
        if (y10 > 0) {
            int x10 = x(j10);
            int i10 = x10 + i9;
            o(i10, y10, B(i10, y10, 0));
            return B(x10, i9, 1);
        }
        return j10 | 8589934592L;
    }

    private static long B(int i9, int i10, int i11) {
        return (i10 << 34) | (i9 << 49) | (i11 << 33);
    }

    private int C(int i9) {
        if (i9 == 0) {
            return 100;
        }
        int i10 = (int) ((i9 * 100) / this.f53947j);
        if (i10 == 0) {
            return 99;
        }
        return 100 - i10;
    }

    private long c(int i9) {
        int i10 = i9 >> this.f53946i;
        int e10 = this.f53938a.e(i10);
        synchronized (this.f53943f) {
            int w6 = w(e10);
            if (w6 == -1) {
                return -1L;
            }
            u uVar = this.f53943f[w6];
            long d10 = uVar.d();
            v(uVar, d10);
            if (d10 != -1) {
                d10 = A(d10, i10);
            }
            int z10 = z(this.f53946i, d10);
            this.f53949l -= z10;
            this.f53950m += z10;
            return d10;
        }
    }

    private long d(int i9) {
        a0<T> u10 = this.f53938a.u(i9);
        synchronized (u10) {
            long c10 = c(f(i9));
            if (c10 < 0) {
                return -1L;
            }
            int x10 = x(c10);
            int l10 = this.f53938a.l(i9);
            int i10 = this.f53946i;
            a0<T> a0Var = new a0<>(u10, this, i10, x10, z(i10, c10), l10);
            this.f53944g[x10] = a0Var;
            return a0Var.b();
        }
    }

    static int e(long j10) {
        return (int) j10;
    }

    private int f(int i9) {
        int i10;
        int i11 = 1 << (this.f53946i - 4);
        int l10 = this.f53938a.l(i9);
        int i12 = 0;
        do {
            i12 += this.f53945h;
            i10 = i12 / l10;
            if (i10 >= i11) {
                break;
            }
        } while (i12 != i10 * l10);
        while (i10 > i11) {
            i12 -= this.f53945h;
            i10 = i12 / l10;
        }
        return i12;
    }

    private long g(long j10) {
        while (true) {
            int x10 = x(j10);
            int y10 = y(j10);
            int i9 = x10 + y10;
            long l10 = l(i9);
            if (l10 == -1) {
                return j10;
            }
            int x11 = x(l10);
            int y11 = y(l10);
            if (l10 == j10 || i9 != x11) {
                break;
            }
            u(l10);
            j10 = B(x10, y10 + y11, 0);
        }
        return j10;
    }

    private long h(long j10) {
        while (true) {
            int x10 = x(j10);
            int y10 = y(j10);
            long l10 = l(x10 - 1);
            if (l10 == -1) {
                return j10;
            }
            int x11 = x(l10);
            int y11 = y(l10);
            if (l10 == j10 || x11 + y11 != x10) {
                break;
            }
            u(l10);
            j10 = B(x11, y11 + y10, 0);
        }
        return j10;
    }

    private long i(long j10) {
        return g(h(j10));
    }

    private long l(int i9) {
        return this.f53942e.c(i9);
    }

    private void o(int i9, int i10, long j10) {
        this.f53943f[this.f53938a.g(i10)].c(j10);
        p(i9, j10);
        if (i10 > 1) {
            p(s(i9, i10), j10);
        }
    }

    private void p(int i9, long j10) {
        this.f53942e.e(i9, j10);
    }

    static boolean q(long j10) {
        return !r(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(long j10) {
        return ((j10 >> 32) & 1) == 1;
    }

    private static int s(int i9, int i10) {
        return (i9 + i10) - 1;
    }

    private static u[] t(int i9) {
        u[] uVarArr = new u[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            uVarArr[i10] = new u();
        }
        return uVarArr;
    }

    private void u(long j10) {
        v(this.f53943f[this.f53938a.g(y(j10))], j10);
    }

    private void v(u uVar, long j10) {
        uVar.e(j10);
        int x10 = x(j10);
        int y10 = y(j10);
        this.f53942e.f(x10);
        if (y10 > 1) {
            this.f53942e.f(s(x10, y10));
        }
    }

    private int w(int i9) {
        if (this.f53949l == this.f53947j) {
            return this.f53938a.f53884g - 1;
        }
        while (i9 < this.f53938a.f53884g) {
            u uVar = this.f53943f[i9];
            if (uVar != null && !uVar.a()) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    static int x(long j10) {
        return (int) (j10 >> 49);
    }

    static int y(long j10) {
        return (int) ((j10 >> 34) & 32767);
    }

    static int z(int i9, long j10) {
        return y(j10) << i9;
    }

    @Override // kg.z
    public int a() {
        return this.f53947j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(c0<T> c0Var, int i9, int i10, b0 b0Var) {
        long c10;
        v<T> vVar = this.f53938a;
        if (i10 <= vVar.f53885h) {
            c10 = d(i10);
            if (c10 < 0) {
                return false;
            }
        } else {
            c10 = c(vVar.l(i10));
            if (c10 < 0) {
                return false;
            }
        }
        long j10 = c10;
        Deque<ByteBuffer> deque = this.f53948k;
        m(c0Var, deque != null ? deque.pollLast() : null, j10, i9, b0Var);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.f53938a.r(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(long j10, int i9, ByteBuffer byteBuffer) {
        Deque<ByteBuffer> deque;
        int z10 = z(this.f53946i, j10);
        this.f53950m -= z10;
        if (r(j10)) {
            a0<T> u10 = this.f53938a.u(this.f53938a.h(i9));
            int x10 = x(j10);
            a0<T> a0Var = this.f53944g[x10];
            synchronized (u10) {
                if (a0Var.f(u10, e(j10))) {
                    return;
                }
                this.f53944g[x10] = null;
            }
        }
        synchronized (this.f53943f) {
            long i10 = i(j10) & (-8589934593L) & (-4294967297L);
            o(x(i10), y(i10), i10);
            this.f53949l += z10;
        }
        if (byteBuffer == null || (deque = this.f53948k) == null || deque.size() >= d0.f53788z) {
            return;
        }
        this.f53948k.offer(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(c0<T> c0Var, ByteBuffer byteBuffer, long j10, int i9, b0 b0Var) {
        if (q(j10)) {
            int x10 = x(j10);
            int i10 = this.f53946i;
            c0Var.I3(this, byteBuffer, j10, x10 << i10, i9, z(i10, j10), this.f53938a.f53921n.Q());
            return;
        }
        n(c0Var, byteBuffer, j10, i9, b0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(c0<T> c0Var, ByteBuffer byteBuffer, long j10, int i9, b0 b0Var) {
        int x10 = x(j10);
        int e10 = e(j10);
        int i10 = this.f53944g[x10].f53730i;
        c0Var.I3(this, byteBuffer, j10, (x10 << this.f53946i) + (e10 * i10), i9, i10, b0Var);
    }

    public String toString() {
        int i9;
        synchronized (this.f53938a) {
            i9 = this.f53949l;
        }
        return "Chunk(" + Integer.toHexString(System.identityHashCode(this)) + ": " + C(i9) + "%, " + (this.f53947j - i9) + IOUtils.DIR_SEPARATOR_UNIX + this.f53947j + ')';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(v<T> vVar, Object obj, T t10, int i9) {
        this.f53941d = true;
        this.f53938a = vVar;
        this.f53939b = obj;
        this.f53940c = t10;
        this.f53945h = 0;
        this.f53946i = 0;
        this.f53942e = null;
        this.f53943f = null;
        this.f53944g = null;
        this.f53947j = i9;
        this.f53948k = null;
    }
}
