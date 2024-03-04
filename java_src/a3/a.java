package a3;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
import x2.b;
import x2.g;
import x2.h;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final b0 f586o;

    /* renamed from: p  reason: collision with root package name */
    private final b0 f587p;

    /* renamed from: q  reason: collision with root package name */
    private final C0000a f588q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Inflater f589r;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0000a {

        /* renamed from: a  reason: collision with root package name */
        private final b0 f590a = new b0();

        /* renamed from: b  reason: collision with root package name */
        private final int[] f591b = new int[256];

        /* renamed from: c  reason: collision with root package name */
        private boolean f592c;

        /* renamed from: d  reason: collision with root package name */
        private int f593d;

        /* renamed from: e  reason: collision with root package name */
        private int f594e;

        /* renamed from: f  reason: collision with root package name */
        private int f595f;

        /* renamed from: g  reason: collision with root package name */
        private int f596g;

        /* renamed from: h  reason: collision with root package name */
        private int f597h;

        /* renamed from: i  reason: collision with root package name */
        private int f598i;

        /* JADX INFO: Access modifiers changed from: private */
        public void e(b0 b0Var, int i9) {
            int G;
            if (i9 < 4) {
                return;
            }
            b0Var.Q(3);
            int i10 = i9 - 4;
            if ((b0Var.D() & 128) != 0) {
                if (i10 < 7 || (G = b0Var.G()) < 4) {
                    return;
                }
                this.f597h = b0Var.J();
                this.f598i = b0Var.J();
                this.f590a.L(G - 4);
                i10 -= 7;
            }
            int e10 = this.f590a.e();
            int f10 = this.f590a.f();
            if (e10 >= f10 || i10 <= 0) {
                return;
            }
            int min = Math.min(i10, f10 - e10);
            b0Var.j(this.f590a.d(), e10, min);
            this.f590a.P(e10 + min);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(b0 b0Var, int i9) {
            if (i9 < 19) {
                return;
            }
            this.f593d = b0Var.J();
            this.f594e = b0Var.J();
            b0Var.Q(11);
            this.f595f = b0Var.J();
            this.f596g = b0Var.J();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(b0 b0Var, int i9) {
            if (i9 % 5 != 2) {
                return;
            }
            b0Var.Q(2);
            Arrays.fill(this.f591b, 0);
            int i10 = i9 / 5;
            int i11 = 0;
            while (i11 < i10) {
                int D = b0Var.D();
                int D2 = b0Var.D();
                int D3 = b0Var.D();
                int D4 = b0Var.D();
                int D5 = b0Var.D();
                double d10 = D2;
                double d11 = D3 - 128;
                int i12 = i11;
                double d12 = D4 - 128;
                this.f591b[D] = l0.p((int) (d10 + (d12 * 1.772d)), 0, 255) | (l0.p((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8) | (D5 << 24) | (l0.p((int) ((1.402d * d11) + d10), 0, 255) << 16);
                i11 = i12 + 1;
            }
            this.f592c = true;
        }

        @Nullable
        public x2.b d() {
            int i9;
            if (this.f593d == 0 || this.f594e == 0 || this.f597h == 0 || this.f598i == 0 || this.f590a.f() == 0 || this.f590a.e() != this.f590a.f() || !this.f592c) {
                return null;
            }
            this.f590a.P(0);
            int i10 = this.f597h * this.f598i;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int D = this.f590a.D();
                if (D != 0) {
                    i9 = i11 + 1;
                    iArr[i11] = this.f591b[D];
                } else {
                    int D2 = this.f590a.D();
                    if (D2 != 0) {
                        i9 = ((D2 & 64) == 0 ? D2 & 63 : ((D2 & 63) << 8) | this.f590a.D()) + i11;
                        Arrays.fill(iArr, i11, i9, (D2 & 128) == 0 ? 0 : this.f591b[this.f590a.D()]);
                    }
                }
                i11 = i9;
            }
            return new b.C0686b().f(Bitmap.createBitmap(iArr, this.f597h, this.f598i, Bitmap.Config.ARGB_8888)).k(this.f595f / this.f593d).l(0).h(this.f596g / this.f594e, 0).i(0).n(this.f597h / this.f593d).g(this.f598i / this.f594e).a();
        }

        public void h() {
            this.f593d = 0;
            this.f594e = 0;
            this.f595f = 0;
            this.f596g = 0;
            this.f597h = 0;
            this.f598i = 0;
            this.f590a.L(0);
            this.f592c = false;
        }
    }

    public a() {
        super("PgsDecoder");
        this.f586o = new b0();
        this.f587p = new b0();
        this.f588q = new C0000a();
    }

    private void A(b0 b0Var) {
        if (b0Var.a() <= 0 || b0Var.h() != 120) {
            return;
        }
        if (this.f589r == null) {
            this.f589r = new Inflater();
        }
        if (l0.l0(b0Var, this.f587p, this.f589r)) {
            b0Var.N(this.f587p.d(), this.f587p.f());
        }
    }

    @Nullable
    private static x2.b B(b0 b0Var, C0000a c0000a) {
        int f10 = b0Var.f();
        int D = b0Var.D();
        int J = b0Var.J();
        int e10 = b0Var.e() + J;
        x2.b bVar = null;
        if (e10 > f10) {
            b0Var.P(f10);
            return null;
        }
        if (D != 128) {
            switch (D) {
                case 20:
                    c0000a.g(b0Var, J);
                    break;
                case 21:
                    c0000a.e(b0Var, J);
                    break;
                case 22:
                    c0000a.f(b0Var, J);
                    break;
            }
        } else {
            bVar = c0000a.d();
            c0000a.h();
        }
        b0Var.P(e10);
        return bVar;
    }

    @Override // x2.g
    protected h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException {
        this.f586o.N(bArr, i9);
        A(this.f586o);
        this.f588q.h();
        ArrayList arrayList = new ArrayList();
        while (this.f586o.a() >= 3) {
            x2.b B = B(this.f586o, this.f588q);
            if (B != null) {
                arrayList.add(B);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
