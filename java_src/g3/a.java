package g3;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Collections;
import x2.b;
/* loaded from: classes2.dex */
public final class a extends x2.g {

    /* renamed from: o  reason: collision with root package name */
    private final b0 f39893o;

    public a() {
        super("Mp4WebvttDecoder");
        this.f39893o = new b0();
    }

    private static x2.b A(b0 b0Var, int i9) throws SubtitleDecoderException {
        CharSequence charSequence = null;
        b.C0686b c0686b = null;
        while (i9 > 0) {
            if (i9 >= 8) {
                int n9 = b0Var.n();
                int n10 = b0Var.n();
                int i10 = n9 - 8;
                String B = l0.B(b0Var.d(), b0Var.e(), i10);
                b0Var.Q(i10);
                i9 = (i9 - 8) - i10;
                if (n10 == 1937011815) {
                    c0686b = f.o(B);
                } else if (n10 == 1885436268) {
                    charSequence = f.q(null, B.trim(), Collections.emptyList());
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        if (c0686b != null) {
            return c0686b.o(charSequence).a();
        }
        return f.l(charSequence);
    }

    @Override // x2.g
    protected x2.h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException {
        this.f39893o.N(bArr, i9);
        ArrayList arrayList = new ArrayList();
        while (this.f39893o.a() > 0) {
            if (this.f39893o.a() >= 8) {
                int n9 = this.f39893o.n();
                if (this.f39893o.n() == 1987343459) {
                    arrayList.add(A(this.f39893o, n9 - 8));
                } else {
                    this.f39893o.Q(n9 - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new b(arrayList);
    }
}
