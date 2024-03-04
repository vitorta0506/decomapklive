package c2;

import androidx.annotation.Nullable;
import c2.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class t {

    /* loaded from: classes.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public v f1552a;

        public a(@Nullable v vVar) {
            this.f1552a = vVar;
        }
    }

    public static boolean a(m mVar) throws IOException {
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(4);
        mVar.m(b0Var.d(), 0, 4);
        return b0Var.F() == 1716281667;
    }

    public static int b(m mVar) throws IOException {
        mVar.f();
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(2);
        mVar.m(b0Var.d(), 0, 2);
        int J = b0Var.J();
        if ((J >> 2) == 16382) {
            mVar.f();
            return J;
        }
        mVar.f();
        throw ParserException.createForMalformedContainer("First frame does not start with sync code.", null);
    }

    @Nullable
    public static Metadata c(m mVar, boolean z10) throws IOException {
        Metadata a10 = new y().a(mVar, z10 ? null : s2.b.f57642b);
        if (a10 == null || a10.d() == 0) {
            return null;
        }
        return a10;
    }

    @Nullable
    public static Metadata d(m mVar, boolean z10) throws IOException {
        mVar.f();
        long h10 = mVar.h();
        Metadata c10 = c(mVar, z10);
        mVar.k((int) (mVar.h() - h10));
        return c10;
    }

    public static boolean e(m mVar, a aVar) throws IOException {
        mVar.f();
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(new byte[4]);
        mVar.m(a0Var.f6939a, 0, 4);
        boolean g10 = a0Var.g();
        int h10 = a0Var.h(7);
        int h11 = a0Var.h(24) + 4;
        if (h10 == 0) {
            aVar.f1552a = h(mVar);
        } else {
            v vVar = aVar.f1552a;
            if (vVar == null) {
                throw new IllegalArgumentException();
            }
            if (h10 == 3) {
                aVar.f1552a = vVar.b(f(mVar, h11));
            } else if (h10 == 4) {
                aVar.f1552a = vVar.c(j(mVar, h11));
            } else if (h10 == 6) {
                com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(h11);
                mVar.readFully(b0Var.d(), 0, h11);
                b0Var.Q(4);
                aVar.f1552a = vVar.a(ImmutableList.of(PictureFrame.a(b0Var)));
            } else {
                mVar.k(h11);
            }
        }
        return g10;
    }

    private static v.a f(m mVar, int i9) throws IOException {
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(i9);
        mVar.readFully(b0Var.d(), 0, i9);
        return g(b0Var);
    }

    public static v.a g(com.google.android.exoplayer2.util.b0 b0Var) {
        b0Var.Q(1);
        int G = b0Var.G();
        long e10 = b0Var.e() + G;
        int i9 = G / 18;
        long[] jArr = new long[i9];
        long[] jArr2 = new long[i9];
        int i10 = 0;
        while (true) {
            if (i10 >= i9) {
                break;
            }
            long w6 = b0Var.w();
            if (w6 == -1) {
                jArr = Arrays.copyOf(jArr, i10);
                jArr2 = Arrays.copyOf(jArr2, i10);
                break;
            }
            jArr[i10] = w6;
            jArr2[i10] = b0Var.w();
            b0Var.Q(2);
            i10++;
        }
        b0Var.Q((int) (e10 - b0Var.e()));
        return new v.a(jArr, jArr2);
    }

    private static v h(m mVar) throws IOException {
        byte[] bArr = new byte[38];
        mVar.readFully(bArr, 0, 38);
        return new v(bArr, 4);
    }

    public static void i(m mVar) throws IOException {
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(4);
        mVar.readFully(b0Var.d(), 0, 4);
        if (b0Var.F() != 1716281667) {
            throw ParserException.createForMalformedContainer("Failed to read FLAC stream marker.", null);
        }
    }

    private static List<String> j(m mVar, int i9) throws IOException {
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(i9);
        mVar.readFully(b0Var.d(), 0, i9);
        b0Var.Q(4);
        return Arrays.asList(h0.j(b0Var, false, false).f1514b);
    }
}
