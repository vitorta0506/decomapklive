package g3;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.b0;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class h extends x2.g {

    /* renamed from: o  reason: collision with root package name */
    private final b0 f39944o;

    /* renamed from: p  reason: collision with root package name */
    private final c f39945p;

    public h() {
        super("WebvttDecoder");
        this.f39944o = new b0();
        this.f39945p = new c();
    }

    private static int A(b0 b0Var) {
        int i9 = -1;
        int i10 = 0;
        while (i9 == -1) {
            i10 = b0Var.e();
            String p10 = b0Var.p();
            if (p10 == null) {
                i9 = 0;
            } else if ("STYLE".equals(p10)) {
                i9 = 2;
            } else {
                i9 = p10.startsWith("NOTE") ? 1 : 3;
            }
        }
        b0Var.P(i10);
        return i9;
    }

    private static void B(b0 b0Var) {
        do {
        } while (!TextUtils.isEmpty(b0Var.p()));
    }

    @Override // x2.g
    protected x2.h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException {
        e m10;
        this.f39944o.N(bArr, i9);
        ArrayList arrayList = new ArrayList();
        try {
            i.d(this.f39944o);
            do {
            } while (!TextUtils.isEmpty(this.f39944o.p()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int A = A(this.f39944o);
                if (A == 0) {
                    return new k(arrayList2);
                }
                if (A == 1) {
                    B(this.f39944o);
                } else if (A == 2) {
                    if (arrayList2.isEmpty()) {
                        this.f39944o.p();
                        arrayList.addAll(this.f39945p.d(this.f39944o));
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (A == 3 && (m10 = f.m(this.f39944o, arrayList)) != null) {
                    arrayList2.add(m10);
                }
            }
        } catch (ParserException e10) {
            throw new SubtitleDecoderException(e10);
        }
    }
}
