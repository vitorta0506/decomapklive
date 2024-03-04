package k3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final int f53529a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53530b;

    /* renamed from: c  reason: collision with root package name */
    public final String f53531c;

    private d(int i9, int i10, String str) {
        this.f53529a = i9;
        this.f53530b = i10;
        this.f53531c = str;
    }

    @Nullable
    public static d a(b0 b0Var) {
        String str;
        b0Var.Q(2);
        int D = b0Var.D();
        int i9 = D >> 1;
        int D2 = ((b0Var.D() >> 3) & 31) | ((D & 1) << 5);
        if (i9 == 4 || i9 == 5 || i9 == 7) {
            str = "dvhe";
        } else if (i9 == 8) {
            str = "hev1";
        } else if (i9 != 9) {
            return null;
        } else {
            str = "avc3";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(".0");
        sb2.append(i9);
        sb2.append(D2 >= 10 ? "." : ".0");
        sb2.append(D2);
        return new d(i9, D2, sb2.toString());
    }
}
