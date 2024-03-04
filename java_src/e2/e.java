package e2;

import c2.b0;
import c2.c0;
import c2.e0;
import c2.m;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    protected final e0 f38347a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38348b;

    /* renamed from: c  reason: collision with root package name */
    private final int f38349c;

    /* renamed from: d  reason: collision with root package name */
    private final long f38350d;

    /* renamed from: e  reason: collision with root package name */
    private final int f38351e;

    /* renamed from: f  reason: collision with root package name */
    private int f38352f;

    /* renamed from: g  reason: collision with root package name */
    private int f38353g;

    /* renamed from: h  reason: collision with root package name */
    private int f38354h;

    /* renamed from: i  reason: collision with root package name */
    private int f38355i;

    /* renamed from: j  reason: collision with root package name */
    private int f38356j;

    /* renamed from: k  reason: collision with root package name */
    private long[] f38357k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f38358l;

    public e(int i9, int i10, long j10, int i11, e0 e0Var) {
        boolean z10 = true;
        if (i10 != 1 && i10 != 2) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.f38350d = j10;
        this.f38351e = i11;
        this.f38347a = e0Var;
        this.f38348b = d(i9, i10 == 2 ? 1667497984 : 1651965952);
        this.f38349c = i10 == 2 ? d(i9, 1650720768) : -1;
        this.f38357k = new long[512];
        this.f38358l = new int[512];
    }

    private static int d(int i9, int i10) {
        return (((i9 % 10) + 48) << 8) | ((i9 / 10) + 48) | i10;
    }

    private long e(int i9) {
        return (this.f38350d * i9) / this.f38351e;
    }

    private c0 h(int i9) {
        return new c0(this.f38358l[i9] * g(), this.f38357k[i9]);
    }

    public void a() {
        this.f38354h++;
    }

    public void b(long j10) {
        if (this.f38356j == this.f38358l.length) {
            long[] jArr = this.f38357k;
            this.f38357k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f38358l;
            this.f38358l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f38357k;
        int i9 = this.f38356j;
        jArr2[i9] = j10;
        this.f38358l[i9] = this.f38355i;
        this.f38356j = i9 + 1;
    }

    public void c() {
        this.f38357k = Arrays.copyOf(this.f38357k, this.f38356j);
        this.f38358l = Arrays.copyOf(this.f38358l, this.f38356j);
    }

    public long f() {
        return e(this.f38354h);
    }

    public long g() {
        return e(1);
    }

    public b0.a i(long j10) {
        int g10 = (int) (j10 / g());
        int h10 = l0.h(this.f38358l, g10, true, true);
        if (this.f38358l[h10] == g10) {
            return new b0.a(h(h10));
        }
        c0 h11 = h(h10);
        int i9 = h10 + 1;
        if (i9 < this.f38357k.length) {
            return new b0.a(h11, h(i9));
        }
        return new b0.a(h11);
    }

    public boolean j(int i9) {
        return this.f38348b == i9 || this.f38349c == i9;
    }

    public void k() {
        this.f38355i++;
    }

    public boolean l() {
        return Arrays.binarySearch(this.f38358l, this.f38354h) >= 0;
    }

    public boolean m(m mVar) throws IOException {
        int i9 = this.f38353g;
        int b10 = i9 - this.f38347a.b(mVar, i9, false);
        this.f38353g = b10;
        boolean z10 = b10 == 0;
        if (z10) {
            if (this.f38352f > 0) {
                this.f38347a.c(f(), l() ? 1 : 0, this.f38352f, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i9) {
        this.f38352f = i9;
        this.f38353g = i9;
    }

    public void o(long j10) {
        if (this.f38356j == 0) {
            this.f38354h = 0;
            return;
        }
        this.f38354h = this.f38358l[l0.i(this.f38357k, j10, true, true)];
    }
}
