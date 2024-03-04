package com.google.android.exoplayer2.extractor.flv;

import c2.e0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.w;
import com.tencent.thumbplayer.core.common.TPDecoderType;
/* loaded from: classes.dex */
final class d extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private final b0 f5905b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f5906c;

    /* renamed from: d  reason: collision with root package name */
    private int f5907d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f5908e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5909f;

    /* renamed from: g  reason: collision with root package name */
    private int f5910g;

    public d(e0 e0Var) {
        super(e0Var);
        this.f5905b = new b0(w.f7041a);
        this.f5906c = new b0(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) throws TagPayloadReader.UnsupportedFormatException {
        int D = b0Var.D();
        int i9 = (D >> 4) & 15;
        int i10 = D & 15;
        if (i10 == 7) {
            this.f5910g = i9;
            return i9 != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i10);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) throws ParserException {
        int D = b0Var.D();
        long o10 = j10 + (b0Var.o() * 1000);
        if (D == 0 && !this.f5908e) {
            b0 b0Var2 = new b0(new byte[b0Var.a()]);
            b0Var.j(b0Var2.d(), 0, b0Var.a());
            k3.a b10 = k3.a.b(b0Var2);
            this.f5907d = b10.f53517b;
            this.f5880a.d(new k1.b().e0(TPDecoderType.TP_CODEC_MIMETYPE_AVC).I(b10.f53521f).j0(b10.f53518c).Q(b10.f53519d).a0(b10.f53520e).T(b10.f53516a).E());
            this.f5908e = true;
            return false;
        } else if (D == 1 && this.f5908e) {
            int i9 = this.f5910g == 1 ? 1 : 0;
            if (this.f5909f || i9 != 0) {
                byte[] d10 = this.f5906c.d();
                d10[0] = 0;
                d10[1] = 0;
                d10[2] = 0;
                int i10 = 4 - this.f5907d;
                int i11 = 0;
                while (b0Var.a() > 0) {
                    b0Var.j(this.f5906c.d(), i10, this.f5907d);
                    this.f5906c.P(0);
                    int H = this.f5906c.H();
                    this.f5905b.P(0);
                    this.f5880a.a(this.f5905b, 4);
                    this.f5880a.a(b0Var, H);
                    i11 = i11 + 4 + H;
                }
                this.f5880a.c(o10, i9, i11, 0, null);
                this.f5909f = true;
                return true;
            }
            return false;
        } else {
            return false;
        }
    }
}
