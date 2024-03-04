package k2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
/* loaded from: classes.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    public c f53490a;

    /* renamed from: b  reason: collision with root package name */
    public long f53491b;

    /* renamed from: c  reason: collision with root package name */
    public long f53492c;

    /* renamed from: d  reason: collision with root package name */
    public long f53493d;

    /* renamed from: e  reason: collision with root package name */
    public int f53494e;

    /* renamed from: f  reason: collision with root package name */
    public int f53495f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f53501l;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    public p f53503n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f53505p;

    /* renamed from: q  reason: collision with root package name */
    public long f53506q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f53507r;

    /* renamed from: g  reason: collision with root package name */
    public long[] f53496g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f53497h = new int[0];

    /* renamed from: i  reason: collision with root package name */
    public int[] f53498i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public long[] f53499j = new long[0];

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f53500k = new boolean[0];

    /* renamed from: m  reason: collision with root package name */
    public boolean[] f53502m = new boolean[0];

    /* renamed from: o  reason: collision with root package name */
    public final b0 f53504o = new b0();

    public void a(c2.m mVar) throws IOException {
        mVar.readFully(this.f53504o.d(), 0, this.f53504o.f());
        this.f53504o.P(0);
        this.f53505p = false;
    }

    public void b(b0 b0Var) {
        b0Var.j(this.f53504o.d(), 0, this.f53504o.f());
        this.f53504o.P(0);
        this.f53505p = false;
    }

    public long c(int i9) {
        return this.f53499j[i9];
    }

    public void d(int i9) {
        this.f53504o.L(i9);
        this.f53501l = true;
        this.f53505p = true;
    }

    public void e(int i9, int i10) {
        this.f53494e = i9;
        this.f53495f = i10;
        if (this.f53497h.length < i9) {
            this.f53496g = new long[i9];
            this.f53497h = new int[i9];
        }
        if (this.f53498i.length < i10) {
            int i11 = (i10 * 125) / 100;
            this.f53498i = new int[i11];
            this.f53499j = new long[i11];
            this.f53500k = new boolean[i11];
            this.f53502m = new boolean[i11];
        }
    }

    public void f() {
        this.f53494e = 0;
        this.f53506q = 0L;
        this.f53507r = false;
        this.f53501l = false;
        this.f53505p = false;
        this.f53503n = null;
    }

    public boolean g(int i9) {
        return this.f53501l && this.f53502m[i9];
    }
}
