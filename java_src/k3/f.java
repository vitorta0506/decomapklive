package k3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.w;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f53546a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53547b;

    /* renamed from: c  reason: collision with root package name */
    public final int f53548c;

    /* renamed from: d  reason: collision with root package name */
    public final int f53549d;

    /* renamed from: e  reason: collision with root package name */
    public final float f53550e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f53551f;

    private f(List<byte[]> list, int i9, int i10, int i11, float f10, @Nullable String str) {
        this.f53546a = list;
        this.f53547b = i9;
        this.f53548c = i10;
        this.f53549d = i11;
        this.f53550e = f10;
        this.f53551f = str;
    }

    public static f a(b0 b0Var) throws ParserException {
        int i9;
        int i10;
        try {
            b0Var.Q(21);
            int D = b0Var.D() & 3;
            int D2 = b0Var.D();
            int e10 = b0Var.e();
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < D2; i13++) {
                b0Var.Q(1);
                int J = b0Var.J();
                for (int i14 = 0; i14 < J; i14++) {
                    int J2 = b0Var.J();
                    i12 += J2 + 4;
                    b0Var.Q(J2);
                }
            }
            b0Var.P(e10);
            byte[] bArr = new byte[i12];
            String str = null;
            int i15 = 0;
            int i16 = 0;
            int i17 = -1;
            int i18 = -1;
            float f10 = 1.0f;
            while (i15 < D2) {
                int D3 = b0Var.D() & 127;
                int J3 = b0Var.J();
                int i19 = 0;
                while (i19 < J3) {
                    int J4 = b0Var.J();
                    byte[] bArr2 = com.google.android.exoplayer2.util.w.f7041a;
                    int i20 = D2;
                    System.arraycopy(bArr2, i11, bArr, i16, bArr2.length);
                    int length = i16 + bArr2.length;
                    System.arraycopy(b0Var.d(), b0Var.e(), bArr, length, J4);
                    if (D3 == 33 && i19 == 0) {
                        w.a h10 = com.google.android.exoplayer2.util.w.h(bArr, length, length + J4);
                        int i21 = h10.f7052h;
                        i18 = h10.f7053i;
                        f10 = h10.f7054j;
                        i9 = D3;
                        i10 = J3;
                        i17 = i21;
                        str = com.google.android.exoplayer2.util.e.c(h10.f7045a, h10.f7046b, h10.f7047c, h10.f7048d, h10.f7049e, h10.f7050f);
                    } else {
                        i9 = D3;
                        i10 = J3;
                    }
                    i16 = length + J4;
                    b0Var.Q(J4);
                    i19++;
                    D2 = i20;
                    D3 = i9;
                    J3 = i10;
                    i11 = 0;
                }
                i15++;
                i11 = 0;
            }
            return new f(i12 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), D + 1, i17, i18, f10, str);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw ParserException.createForMalformedContainer("Error parsing HEVC config", e11);
        }
    }
}
