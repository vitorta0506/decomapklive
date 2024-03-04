package com.google.android.exoplayer2.extractor.flv;

import c2.e0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import java.util.Collections;
/* loaded from: classes.dex */
final class a extends TagPayloadReader {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f5881e = {5512, 11025, 22050, 44100};

    /* renamed from: b  reason: collision with root package name */
    private boolean f5882b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5883c;

    /* renamed from: d  reason: collision with root package name */
    private int f5884d;

    public a(e0 e0Var) {
        super(e0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f5882b) {
            int D = b0Var.D();
            int i9 = (D >> 4) & 15;
            this.f5884d = i9;
            if (i9 == 2) {
                this.f5880a.d(new k1.b().e0("audio/mpeg").H(1).f0(f5881e[(D >> 2) & 3]).E());
                this.f5883c = true;
            } else if (i9 == 7 || i9 == 8) {
                this.f5880a.d(new k1.b().e0(i9 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").H(1).f0(8000).E());
                this.f5883c = true;
            } else if (i9 != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f5884d);
            }
            this.f5882b = true;
        } else {
            b0Var.Q(1);
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) throws ParserException {
        if (this.f5884d == 2) {
            int a10 = b0Var.a();
            this.f5880a.a(b0Var, a10);
            this.f5880a.c(j10, 1, a10, 0, null);
            return true;
        }
        int D = b0Var.D();
        if (D == 0 && !this.f5883c) {
            int a11 = b0Var.a();
            byte[] bArr = new byte[a11];
            b0Var.j(bArr, 0, a11);
            a.b e10 = com.google.android.exoplayer2.audio.a.e(bArr);
            this.f5880a.d(new k1.b().e0("audio/mp4a-latm").I(e10.f5441c).H(e10.f5440b).f0(e10.f5439a).T(Collections.singletonList(bArr)).E());
            this.f5883c = true;
            return false;
        } else if (this.f5884d != 10 || D == 1) {
            int a12 = b0Var.a();
            this.f5880a.a(b0Var, a12);
            this.f5880a.c(j10, 1, a12, 0, null);
            return true;
        } else {
            return false;
        }
    }
}
