package k3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.w;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f53516a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53517b;

    /* renamed from: c  reason: collision with root package name */
    public final int f53518c;

    /* renamed from: d  reason: collision with root package name */
    public final int f53519d;

    /* renamed from: e  reason: collision with root package name */
    public final float f53520e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f53521f;

    private a(List<byte[]> list, int i9, int i10, int i11, float f10, @Nullable String str) {
        this.f53516a = list;
        this.f53517b = i9;
        this.f53518c = i10;
        this.f53519d = i11;
        this.f53520e = f10;
        this.f53521f = str;
    }

    private static byte[] a(b0 b0Var) {
        int J = b0Var.J();
        int e10 = b0Var.e();
        b0Var.Q(J);
        return com.google.android.exoplayer2.util.e.d(b0Var.d(), e10, J);
    }

    public static a b(b0 b0Var) throws ParserException {
        String str;
        int i9;
        float f10;
        try {
            b0Var.Q(4);
            int D = (b0Var.D() & 3) + 1;
            if (D != 3) {
                ArrayList arrayList = new ArrayList();
                int D2 = b0Var.D() & 31;
                for (int i10 = 0; i10 < D2; i10++) {
                    arrayList.add(a(b0Var));
                }
                int D3 = b0Var.D();
                for (int i11 = 0; i11 < D3; i11++) {
                    arrayList.add(a(b0Var));
                }
                int i12 = -1;
                if (D2 > 0) {
                    w.c l10 = com.google.android.exoplayer2.util.w.l((byte[]) arrayList.get(0), D, ((byte[]) arrayList.get(0)).length);
                    int i13 = l10.f7063f;
                    int i14 = l10.f7064g;
                    float f11 = l10.f7065h;
                    str = com.google.android.exoplayer2.util.e.a(l10.f7058a, l10.f7059b, l10.f7060c);
                    i12 = i13;
                    i9 = i14;
                    f10 = f11;
                } else {
                    str = null;
                    i9 = -1;
                    f10 = 1.0f;
                }
                return new a(arrayList, D, i12, i9, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw ParserException.createForMalformedContainer("Error parsing AVC config", e10);
        }
    }
}
