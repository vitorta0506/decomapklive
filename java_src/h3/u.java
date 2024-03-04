package h3;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import com.google.android.exoplayer2.w2;
import com.google.android.exoplayer2.x2;
import java.util.Arrays;
import v2.o0;
import v2.q;
import v2.q0;
/* loaded from: classes2.dex */
public abstract class u extends b0 {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f40478c;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f40479a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f40480b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f40481c;

        /* renamed from: d  reason: collision with root package name */
        private final q0[] f40482d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f40483e;

        /* renamed from: f  reason: collision with root package name */
        private final int[][][] f40484f;

        /* renamed from: g  reason: collision with root package name */
        private final q0 f40485g;

        @VisibleForTesting
        a(String[] strArr, int[] iArr, q0[] q0VarArr, int[] iArr2, int[][][] iArr3, q0 q0Var) {
            this.f40480b = strArr;
            this.f40481c = iArr;
            this.f40482d = q0VarArr;
            this.f40484f = iArr3;
            this.f40483e = iArr2;
            this.f40485g = q0Var;
            this.f40479a = iArr.length;
        }

        public int a(int i9, int i10, boolean z10) {
            int i11 = this.f40482d[i9].b(i10).f58912a;
            int[] iArr = new int[i11];
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                int g10 = g(i9, i10, i13);
                if (g10 == 4 || (z10 && g10 == 3)) {
                    iArr[i12] = i13;
                    i12++;
                }
            }
            return b(i9, i10, Arrays.copyOf(iArr, i12));
        }

        public int b(int i9, int i10, int[] iArr) {
            int i11 = 0;
            String str = null;
            boolean z10 = false;
            int i12 = 0;
            int i13 = 16;
            while (i11 < iArr.length) {
                String str2 = this.f40482d[i9].b(i10).b(iArr[i11]).f6111l;
                int i14 = i12 + 1;
                if (i12 == 0) {
                    str = str2;
                } else {
                    z10 |= !l0.c(str, str2);
                }
                i13 = Math.min(i13, v2.d(this.f40484f[i9][i10][i11]));
                i11++;
                i12 = i14;
            }
            return z10 ? Math.min(i13, this.f40483e[i9]) : i13;
        }

        public int c(int i9, int i10, int i11) {
            return this.f40484f[i9][i10][i11];
        }

        public int d() {
            return this.f40479a;
        }

        public int e(int i9) {
            return this.f40481c[i9];
        }

        public q0 f(int i9) {
            return this.f40482d[i9];
        }

        public int g(int i9, int i10, int i11) {
            return v2.f(c(i9, i10, i11));
        }

        public q0 h() {
            return this.f40485g;
        }
    }

    private static int k(w2[] w2VarArr, o0 o0Var, int[] iArr, boolean z10) throws ExoPlaybackException {
        int length = w2VarArr.length;
        int i9 = 0;
        boolean z11 = true;
        for (int i10 = 0; i10 < w2VarArr.length; i10++) {
            w2 w2Var = w2VarArr[i10];
            int i11 = 0;
            for (int i12 = 0; i12 < o0Var.f58912a; i12++) {
                i11 = Math.max(i11, v2.f(w2Var.a(o0Var.b(i12))));
            }
            boolean z12 = iArr[i10] == 0;
            if (i11 > i9 || (i11 == i9 && z10 && !z11 && z12)) {
                length = i10;
                z11 = z12;
                i9 = i11;
            }
        }
        return length;
    }

    private static int[] l(w2 w2Var, o0 o0Var) throws ExoPlaybackException {
        int[] iArr = new int[o0Var.f58912a];
        for (int i9 = 0; i9 < o0Var.f58912a; i9++) {
            iArr[i9] = w2Var.a(o0Var.b(i9));
        }
        return iArr;
    }

    private static int[] m(w2[] w2VarArr) throws ExoPlaybackException {
        int length = w2VarArr.length;
        int[] iArr = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = w2VarArr[i9].r();
        }
        return iArr;
    }

    @Override // h3.b0
    public final void f(@Nullable Object obj) {
        this.f40478c = (a) obj;
    }

    @Override // h3.b0
    public final c0 h(w2[] w2VarArr, q0 q0Var, q.b bVar, i3 i3Var) throws ExoPlaybackException {
        int[] l10;
        int[] iArr = new int[w2VarArr.length + 1];
        int length = w2VarArr.length + 1;
        o0[][] o0VarArr = new o0[length];
        int[][][] iArr2 = new int[w2VarArr.length + 1][];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = q0Var.f58920a;
            o0VarArr[i9] = new o0[i10];
            iArr2[i9] = new int[i10];
        }
        int[] m10 = m(w2VarArr);
        for (int i11 = 0; i11 < q0Var.f58920a; i11++) {
            o0 b10 = q0Var.b(i11);
            int k10 = k(w2VarArr, b10, iArr, b10.f58914c == 5);
            if (k10 == w2VarArr.length) {
                l10 = new int[b10.f58912a];
            } else {
                l10 = l(w2VarArr[k10], b10);
            }
            int i12 = iArr[k10];
            o0VarArr[k10][i12] = b10;
            iArr2[k10][i12] = l10;
            iArr[k10] = iArr[k10] + 1;
        }
        q0[] q0VarArr = new q0[w2VarArr.length];
        String[] strArr = new String[w2VarArr.length];
        int[] iArr3 = new int[w2VarArr.length];
        for (int i13 = 0; i13 < w2VarArr.length; i13++) {
            int i14 = iArr[i13];
            q0VarArr[i13] = new q0((o0[]) l0.A0(o0VarArr[i13], i14));
            iArr2[i13] = (int[][]) l0.A0(iArr2[i13], i14);
            strArr[i13] = w2VarArr[i13].getName();
            iArr3[i13] = w2VarArr[i13].f();
        }
        a aVar = new a(strArr, iArr3, q0VarArr, m10, iArr2, new q0((o0[]) l0.A0(o0VarArr[w2VarArr.length], iArr[w2VarArr.length])));
        Pair<x2[], s[]> n9 = n(aVar, iArr2, m10, bVar, i3Var);
        return new c0((x2[]) n9.first, (s[]) n9.second, a0.a(aVar, (v[]) n9.second), aVar);
    }

    protected abstract Pair<x2[], s[]> n(a aVar, int[][][] iArr, int[] iArr2, q.b bVar, i3 i3Var) throws ExoPlaybackException;
}
