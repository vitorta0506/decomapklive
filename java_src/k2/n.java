package k2;

import com.google.android.exoplayer2.util.b0;
import java.io.IOException;
/* loaded from: classes.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f53473a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i9, boolean z10) {
        if ((i9 >>> 8) == 3368816) {
            return true;
        }
        if (i9 == 1751476579 && z10) {
            return true;
        }
        for (int i10 : f53473a) {
            if (i10 == i9) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(c2.m mVar) throws IOException {
        return c(mVar, true, false);
    }

    private static boolean c(c2.m mVar, boolean z10, boolean z11) throws IOException {
        boolean z12;
        long a10 = mVar.a();
        long j10 = 4096;
        long j11 = -1;
        int i9 = (a10 > (-1L) ? 1 : (a10 == (-1L) ? 0 : -1));
        if (i9 != 0 && a10 <= 4096) {
            j10 = a10;
        }
        int i10 = (int) j10;
        b0 b0Var = new b0(64);
        boolean z13 = false;
        int i11 = 0;
        boolean z14 = false;
        while (i11 < i10) {
            b0Var.L(8);
            if (!mVar.d(b0Var.d(), z13 ? 1 : 0, 8, true)) {
                break;
            }
            long F = b0Var.F();
            int n9 = b0Var.n();
            int i12 = 16;
            if (F == 1) {
                mVar.m(b0Var.d(), 8, 8);
                b0Var.O(16);
                F = b0Var.w();
            } else {
                if (F == 0) {
                    long a11 = mVar.a();
                    if (a11 != j11) {
                        F = (a11 - mVar.h()) + 8;
                    }
                }
                i12 = 8;
            }
            long j12 = i12;
            if (F < j12) {
                return z13;
            }
            i11 += i12;
            if (n9 == 1836019574) {
                i10 += (int) F;
                if (i9 != 0 && i10 > a10) {
                    i10 = (int) a10;
                }
                j11 = -1;
            } else if (n9 == 1836019558 || n9 == 1836475768) {
                z12 = true;
                break;
            } else {
                long j13 = a10;
                if ((i11 + F) - j12 >= i10) {
                    break;
                }
                int i13 = (int) (F - j12);
                i11 += i13;
                if (n9 == 1718909296) {
                    if (i13 < 8) {
                        return false;
                    }
                    b0Var.L(i13);
                    mVar.m(b0Var.d(), 0, i13);
                    int i14 = i13 / 4;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i14) {
                            break;
                        }
                        if (i15 == 1) {
                            b0Var.Q(4);
                        } else if (a(b0Var.n(), z11)) {
                            z14 = true;
                            break;
                        }
                        i15++;
                    }
                    if (!z14) {
                        return false;
                    }
                } else if (i13 != 0) {
                    mVar.i(i13);
                }
                a10 = j13;
                j11 = -1;
                z13 = false;
            }
        }
        z12 = false;
        return z14 && z10 == z12;
    }

    public static boolean d(c2.m mVar, boolean z10) throws IOException {
        return c(mVar, false, z10);
    }
}
