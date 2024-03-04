package e2;

import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
/* loaded from: classes.dex */
final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f38341a;

    /* renamed from: b  reason: collision with root package name */
    public final int f38342b;

    /* renamed from: c  reason: collision with root package name */
    public final int f38343c;

    /* renamed from: d  reason: collision with root package name */
    public final int f38344d;

    /* renamed from: e  reason: collision with root package name */
    public final int f38345e;

    /* renamed from: f  reason: collision with root package name */
    public final int f38346f;

    private d(int i9, int i10, int i11, int i12, int i13, int i14) {
        this.f38341a = i9;
        this.f38342b = i10;
        this.f38343c = i11;
        this.f38344d = i12;
        this.f38345e = i13;
        this.f38346f = i14;
    }

    public static d c(b0 b0Var) {
        int q10 = b0Var.q();
        b0Var.Q(12);
        int q11 = b0Var.q();
        int q12 = b0Var.q();
        int q13 = b0Var.q();
        b0Var.Q(4);
        int q14 = b0Var.q();
        int q15 = b0Var.q();
        b0Var.Q(8);
        return new d(q10, q11, q12, q13, q14, q15);
    }

    public long a() {
        return l0.E0(this.f38345e, this.f38343c * 1000000, this.f38344d);
    }

    public int b() {
        int i9 = this.f38341a;
        if (i9 != 1935960438) {
            if (i9 != 1935963489) {
                if (i9 != 1937012852) {
                    r.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f38341a));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    @Override // e2.a
    public int getType() {
        return 1752331379;
    }
}
