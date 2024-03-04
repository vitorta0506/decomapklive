package c2;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class s {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public long f1551a;
    }

    private static boolean a(com.google.android.exoplayer2.util.b0 b0Var, v vVar, int i9) {
        int j10 = j(b0Var, i9);
        return j10 != -1 && j10 <= vVar.f1556b;
    }

    private static boolean b(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        return b0Var.D() == l0.s(b0Var.d(), i9, b0Var.e() - 1, 0);
    }

    private static boolean c(com.google.android.exoplayer2.util.b0 b0Var, v vVar, boolean z10, a aVar) {
        try {
            long K = b0Var.K();
            if (!z10) {
                K *= vVar.f1556b;
            }
            aVar.f1551a = K;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean d(com.google.android.exoplayer2.util.b0 b0Var, v vVar, int i9, a aVar) {
        int e10 = b0Var.e();
        long F = b0Var.F();
        long j10 = F >>> 16;
        if (j10 != i9) {
            return false;
        }
        return g((int) (15 & (F >> 4)), vVar) && f((int) ((F >> 1) & 7), vVar) && !(((F & 1) > 1L ? 1 : ((F & 1) == 1L ? 0 : -1)) == 0) && c(b0Var, vVar, ((j10 & 1) > 1L ? 1 : ((j10 & 1) == 1L ? 0 : -1)) == 0, aVar) && a(b0Var, vVar, (int) ((F >> 12) & 15)) && e(b0Var, vVar, (int) ((F >> 8) & 15)) && b(b0Var, e10);
    }

    private static boolean e(com.google.android.exoplayer2.util.b0 b0Var, v vVar, int i9) {
        int i10 = vVar.f1559e;
        if (i9 == 0) {
            return true;
        }
        if (i9 <= 11) {
            return i9 == vVar.f1560f;
        } else if (i9 == 12) {
            return b0Var.D() * 1000 == i10;
        } else if (i9 <= 14) {
            int J = b0Var.J();
            if (i9 == 14) {
                J *= 10;
            }
            return J == i10;
        } else {
            return false;
        }
    }

    private static boolean f(int i9, v vVar) {
        return i9 == 0 || i9 == vVar.f1563i;
    }

    private static boolean g(int i9, v vVar) {
        return i9 <= 7 ? i9 == vVar.f1561g - 1 : i9 <= 10 && vVar.f1561g == 2;
    }

    public static boolean h(m mVar, v vVar, int i9, a aVar) throws IOException {
        long h10 = mVar.h();
        byte[] bArr = new byte[2];
        mVar.m(bArr, 0, 2);
        if ((((bArr[0] & UByte.MAX_VALUE) << 8) | (bArr[1] & UByte.MAX_VALUE)) != i9) {
            mVar.f();
            mVar.i((int) (h10 - mVar.getPosition()));
            return false;
        }
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(16);
        System.arraycopy(bArr, 0, b0Var.d(), 0, 2);
        b0Var.O(o.c(mVar, b0Var.d(), 2, 14));
        mVar.f();
        mVar.i((int) (h10 - mVar.getPosition()));
        return d(b0Var, vVar, i9, aVar);
    }

    public static long i(m mVar, v vVar) throws IOException {
        mVar.f();
        mVar.i(1);
        byte[] bArr = new byte[1];
        mVar.m(bArr, 0, 1);
        boolean z10 = (bArr[0] & 1) == 1;
        mVar.i(2);
        int i9 = z10 ? 7 : 6;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(i9);
        b0Var.O(o.c(mVar, b0Var.d(), 0, i9));
        mVar.f();
        a aVar = new a();
        if (c(b0Var, vVar, z10, aVar)) {
            return aVar.f1551a;
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static int j(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        switch (i9) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i9 - 2);
            case 6:
                return b0Var.D() + 1;
            case 7:
                return b0Var.J() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i9 - 8);
            default:
                return -1;
        }
    }
}
