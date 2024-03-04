package c2;
/* loaded from: classes.dex */
public final class c {
    public static void a(long j10, com.google.android.exoplayer2.util.b0 b0Var, e0[] e0VarArr) {
        while (true) {
            if (b0Var.a() <= 1) {
                return;
            }
            int c10 = c(b0Var);
            int c11 = c(b0Var);
            int e10 = b0Var.e() + c11;
            if (c11 == -1 || c11 > b0Var.a()) {
                com.google.android.exoplayer2.util.r.i("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                e10 = b0Var.f();
            } else if (c10 == 4 && c11 >= 8) {
                int D = b0Var.D();
                int J = b0Var.J();
                int n9 = J == 49 ? b0Var.n() : 0;
                int D2 = b0Var.D();
                if (J == 47) {
                    b0Var.Q(1);
                }
                boolean z10 = D == 181 && (J == 49 || J == 47) && D2 == 3;
                if (J == 49) {
                    z10 &= n9 == 1195456820;
                }
                if (z10) {
                    b(j10, b0Var, e0VarArr);
                }
            }
            b0Var.P(e10);
        }
    }

    public static void b(long j10, com.google.android.exoplayer2.util.b0 b0Var, e0[] e0VarArr) {
        int D = b0Var.D();
        if ((D & 64) != 0) {
            b0Var.Q(1);
            int i9 = (D & 31) * 3;
            int e10 = b0Var.e();
            for (e0 e0Var : e0VarArr) {
                b0Var.P(e10);
                e0Var.a(b0Var, i9);
                if (j10 != -9223372036854775807L) {
                    e0Var.c(j10, 1, i9, 0, null);
                }
            }
        }
    }

    private static int c(com.google.android.exoplayer2.util.b0 b0Var) {
        int i9 = 0;
        while (b0Var.a() != 0) {
            int D = b0Var.D();
            i9 += D;
            if (D != 255) {
                return i9;
            }
        }
        return -1;
    }
}
