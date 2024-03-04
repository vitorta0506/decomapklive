package d2;

import android.net.Uri;
import c2.a0;
import c2.b0;
import c2.e;
import c2.e0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f37887r;

    /* renamed from: u  reason: collision with root package name */
    private static final int f37890u;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f37891a;

    /* renamed from: b  reason: collision with root package name */
    private final int f37892b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37893c;

    /* renamed from: d  reason: collision with root package name */
    private long f37894d;

    /* renamed from: e  reason: collision with root package name */
    private int f37895e;

    /* renamed from: f  reason: collision with root package name */
    private int f37896f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37897g;

    /* renamed from: h  reason: collision with root package name */
    private long f37898h;

    /* renamed from: i  reason: collision with root package name */
    private int f37899i;

    /* renamed from: j  reason: collision with root package name */
    private int f37900j;

    /* renamed from: k  reason: collision with root package name */
    private long f37901k;

    /* renamed from: l  reason: collision with root package name */
    private n f37902l;

    /* renamed from: m  reason: collision with root package name */
    private e0 f37903m;

    /* renamed from: n  reason: collision with root package name */
    private b0 f37904n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f37905o;

    /* renamed from: p  reason: collision with root package name */
    public static final r f37885p = new r() { // from class: d2.a
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] m10;
            m10 = b.m();
            return m10;
        }
    };

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f37886q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: s  reason: collision with root package name */
    private static final byte[] f37888s = l0.h0("#!AMR\n");

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f37889t = l0.h0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f37887r = iArr;
        f37890u = iArr[8];
    }

    public b() {
        this(0);
    }

    private void d() {
        com.google.android.exoplayer2.util.a.h(this.f37903m);
        l0.j(this.f37902l);
    }

    private static int e(int i9, long j10) {
        return (int) (((i9 * 8) * 1000000) / j10);
    }

    private b0 g(long j10, boolean z10) {
        return new e(j10, this.f37898h, e(this.f37899i, 20000L), this.f37899i, z10);
    }

    private int i(int i9) throws ParserException {
        if (k(i9)) {
            return this.f37893c ? f37887r[i9] : f37886q[i9];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Illegal AMR ");
        sb2.append(this.f37893c ? "WB" : "NB");
        sb2.append(" frame type ");
        sb2.append(i9);
        throw ParserException.createForMalformedContainer(sb2.toString(), null);
    }

    private boolean j(int i9) {
        return !this.f37893c && (i9 < 12 || i9 > 14);
    }

    private boolean k(int i9) {
        return i9 >= 0 && i9 <= 15 && (l(i9) || j(i9));
    }

    private boolean l(int i9) {
        return this.f37893c && (i9 < 10 || i9 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] m() {
        return new l[]{new b()};
    }

    private void n() {
        if (this.f37905o) {
            return;
        }
        this.f37905o = true;
        boolean z10 = this.f37893c;
        this.f37903m.d(new k1.b().e0(z10 ? "audio/amr-wb" : "audio/3gpp").W(f37890u).H(1).f0(z10 ? 16000 : 8000).E());
    }

    private void o(long j10, int i9) {
        int i10;
        if (this.f37897g) {
            return;
        }
        int i11 = this.f37892b;
        if ((i11 & 1) != 0 && j10 != -1 && ((i10 = this.f37899i) == -1 || i10 == this.f37895e)) {
            if (this.f37900j >= 20 || i9 == -1) {
                b0 g10 = g(j10, (i11 & 2) != 0);
                this.f37904n = g10;
                this.f37902l.l(g10);
                this.f37897g = true;
                return;
            }
            return;
        }
        b0.b bVar = new b0.b(-9223372036854775807L);
        this.f37904n = bVar;
        this.f37902l.l(bVar);
        this.f37897g = true;
    }

    private static boolean p(m mVar, byte[] bArr) throws IOException {
        mVar.f();
        byte[] bArr2 = new byte[bArr.length];
        mVar.m(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int q(m mVar) throws IOException {
        mVar.f();
        mVar.m(this.f37891a, 0, 1);
        byte b10 = this.f37891a[0];
        if ((b10 & 131) <= 0) {
            return i((b10 >> 3) & 15);
        }
        throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean r(m mVar) throws IOException {
        byte[] bArr = f37888s;
        if (p(mVar, bArr)) {
            this.f37893c = false;
            mVar.k(bArr.length);
            return true;
        }
        byte[] bArr2 = f37889t;
        if (p(mVar, bArr2)) {
            this.f37893c = true;
            mVar.k(bArr2.length);
            return true;
        }
        return false;
    }

    private int s(m mVar) throws IOException {
        if (this.f37896f == 0) {
            try {
                int q10 = q(mVar);
                this.f37895e = q10;
                this.f37896f = q10;
                if (this.f37899i == -1) {
                    this.f37898h = mVar.getPosition();
                    this.f37899i = this.f37895e;
                }
                if (this.f37899i == this.f37895e) {
                    this.f37900j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int b10 = this.f37903m.b(mVar, this.f37896f, true);
        if (b10 == -1) {
            return -1;
        }
        int i9 = this.f37896f - b10;
        this.f37896f = i9;
        if (i9 > 0) {
            return 0;
        }
        this.f37903m.c(this.f37901k + this.f37894d, 1, this.f37895e, 0, null);
        this.f37894d += 20000;
        return 0;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f37894d = 0L;
        this.f37895e = 0;
        this.f37896f = 0;
        if (j10 != 0) {
            b0 b0Var = this.f37904n;
            if (b0Var instanceof e) {
                this.f37901k = ((e) b0Var).b(j10);
                return;
            }
        }
        this.f37901k = 0L;
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        d();
        if (mVar.getPosition() == 0 && !r(mVar)) {
            throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        n();
        int s10 = s(mVar);
        o(mVar.a(), s10);
        return s10;
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f37902l = nVar;
        this.f37903m = nVar.q(0, 1);
        nVar.o();
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        return r(mVar);
    }

    @Override // c2.l
    public void release() {
    }

    public b(int i9) {
        this.f37892b = (i9 & 2) != 0 ? i9 | 1 : i9;
        this.f37891a = new byte[1];
        this.f37899i = -1;
    }
}
