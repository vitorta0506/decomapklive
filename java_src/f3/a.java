package f3;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.google.common.base.e;
import java.util.List;
import kotlin.UByte;
import x2.b;
import x2.g;
import x2.h;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final b0 f39605o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f39606p;

    /* renamed from: q  reason: collision with root package name */
    private final int f39607q;

    /* renamed from: r  reason: collision with root package name */
    private final int f39608r;

    /* renamed from: s  reason: collision with root package name */
    private final String f39609s;

    /* renamed from: t  reason: collision with root package name */
    private final float f39610t;

    /* renamed from: u  reason: collision with root package name */
    private final int f39611u;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        this.f39605o = new b0();
        if (list.size() == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.f39607q = bArr[24];
            this.f39608r = ((bArr[26] & UByte.MAX_VALUE) << 24) | ((bArr[27] & UByte.MAX_VALUE) << 16) | ((bArr[28] & UByte.MAX_VALUE) << 8) | (bArr[29] & UByte.MAX_VALUE);
            this.f39609s = "Serif".equals(l0.B(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
            int i9 = bArr[25] * 20;
            this.f39611u = i9;
            boolean z10 = (bArr[0] & 32) != 0;
            this.f39606p = z10;
            if (z10) {
                this.f39610t = l0.o(((bArr[11] & UByte.MAX_VALUE) | ((bArr[10] & UByte.MAX_VALUE) << 8)) / i9, 0.0f, 0.95f);
                return;
            } else {
                this.f39610t = 0.85f;
                return;
            }
        }
        this.f39607q = 0;
        this.f39608r = -1;
        this.f39609s = "sans-serif";
        this.f39606p = false;
        this.f39610t = 0.85f;
        this.f39611u = -1;
    }

    private void A(b0 b0Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        int i9;
        B(b0Var.a() >= 12);
        int J = b0Var.J();
        int J2 = b0Var.J();
        b0Var.Q(2);
        int D = b0Var.D();
        b0Var.Q(1);
        int n9 = b0Var.n();
        if (J2 > spannableStringBuilder.length()) {
            r.i("Tx3gDecoder", "Truncating styl end (" + J2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            i9 = spannableStringBuilder.length();
        } else {
            i9 = J2;
        }
        if (J >= i9) {
            r.i("Tx3gDecoder", "Ignoring styl with start (" + J + ") >= end (" + i9 + ").");
            return;
        }
        int i10 = i9;
        D(spannableStringBuilder, D, this.f39607q, J, i10, 0);
        C(spannableStringBuilder, n9, this.f39608r, J, i10, 0);
    }

    private static void B(boolean z10) throws SubtitleDecoderException {
        if (!z10) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void C(SpannableStringBuilder spannableStringBuilder, int i9, int i10, int i11, int i12, int i13) {
        if (i9 != i10) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i9 >>> 8) | ((i9 & 255) << 24)), i11, i12, i13 | 33);
        }
    }

    private static void D(SpannableStringBuilder spannableStringBuilder, int i9, int i10, int i11, int i12, int i13) {
        if (i9 != i10) {
            int i14 = i13 | 33;
            boolean z10 = (i9 & 1) != 0;
            boolean z11 = (i9 & 2) != 0;
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i11, i12, i14);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i11, i12, i14);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, i12, i14);
            }
            boolean z12 = (i9 & 4) != 0;
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i11, i12, i14);
            }
            if (z12 || z10 || z11) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i11, i12, i14);
        }
    }

    private static void E(SpannableStringBuilder spannableStringBuilder, String str, int i9, int i10) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i9, i10, 16711713);
        }
    }

    private static String F(b0 b0Var) throws SubtitleDecoderException {
        char g10;
        B(b0Var.a() >= 2);
        int J = b0Var.J();
        if (J == 0) {
            return "";
        }
        if (b0Var.a() >= 2 && ((g10 = b0Var.g()) == 65279 || g10 == 65534)) {
            return b0Var.B(J, e.f12359f);
        }
        return b0Var.B(J, e.f12356c);
    }

    @Override // x2.g
    protected h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException {
        this.f39605o.N(bArr, i9);
        String F = F(this.f39605o);
        if (F.isEmpty()) {
            return b.f39612b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(F);
        D(spannableStringBuilder, this.f39607q, 0, 0, spannableStringBuilder.length(), 16711680);
        C(spannableStringBuilder, this.f39608r, -1, 0, spannableStringBuilder.length(), 16711680);
        E(spannableStringBuilder, this.f39609s, 0, spannableStringBuilder.length());
        float f10 = this.f39610t;
        while (this.f39605o.a() >= 8) {
            int e10 = this.f39605o.e();
            int n9 = this.f39605o.n();
            int n10 = this.f39605o.n();
            if (n10 == 1937013100) {
                B(this.f39605o.a() >= 2);
                int J = this.f39605o.J();
                for (int i10 = 0; i10 < J; i10++) {
                    A(this.f39605o, spannableStringBuilder);
                }
            } else if (n10 == 1952608120 && this.f39606p) {
                B(this.f39605o.a() >= 2);
                f10 = l0.o(this.f39605o.J() / this.f39611u, 0.0f, 0.95f);
            }
            this.f39605o.P(e10 + n9);
        }
        return new b(new b.C0686b().o(spannableStringBuilder).h(f10, 0).i(0).a());
    }
}
