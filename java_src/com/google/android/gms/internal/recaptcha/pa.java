package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class pa extends qa {

    /* renamed from: f  reason: collision with root package name */
    final ma f8969f;

    /* renamed from: g  reason: collision with root package name */
    final Character f8970g;

    /* renamed from: h  reason: collision with root package name */
    private transient qa f8971h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pa(ma maVar, Character ch2) {
        this.f8969f = maVar;
        boolean z10 = true;
        if (ch2 != null && maVar.c(ch2.charValue())) {
            z10 = false;
        }
        z7.g(z10, "Padding character %s was already in alphabet", ch2);
        this.f8970g = ch2;
    }

    @Override // com.google.android.gms.internal.recaptcha.qa
    void a(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        z7.h(0, i10, bArr.length);
        while (i11 < i10) {
            g(appendable, bArr, i11, Math.min(this.f8969f.f8872f, i10 - i11));
            i11 += this.f8969f.f8872f;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.qa
    final int b(int i9) {
        ma maVar = this.f8969f;
        return maVar.f8871e * ua.a(i9, maVar.f8872f, RoundingMode.CEILING);
    }

    @Override // com.google.android.gms.internal.recaptcha.qa
    public final qa c() {
        qa qaVar = this.f8971h;
        if (qaVar == null) {
            ma b10 = this.f8969f.b();
            qaVar = b10 == this.f8969f ? this : f(b10, this.f8970g);
            this.f8971h = qaVar;
        }
        return qaVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof pa) {
            pa paVar = (pa) obj;
            if (this.f8969f.equals(paVar.f8969f) && v7.a(this.f8970g, paVar.f8970g)) {
                return true;
            }
        }
        return false;
    }

    qa f(ma maVar, Character ch2) {
        return new pa(maVar, ch2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
        z7.h(i9, i9 + i10, bArr.length);
        int i11 = 0;
        z7.e(i10 <= this.f8969f.f8872f);
        long j10 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            j10 = (j10 | (bArr[i9 + i12] & UByte.MAX_VALUE)) << 8;
        }
        int i13 = ((i10 + 1) * 8) - this.f8969f.f8870d;
        while (i11 < i10 * 8) {
            ma maVar = this.f8969f;
            appendable.append(maVar.a(((int) (j10 >>> (i13 - i11))) & maVar.f8869c));
            i11 += this.f8969f.f8870d;
        }
        if (this.f8970g != null) {
            while (i11 < this.f8969f.f8872f * 8) {
                appendable.append(this.f8970g.charValue());
                i11 += this.f8969f.f8870d;
            }
        }
    }

    public final int hashCode() {
        return this.f8969f.hashCode() ^ Arrays.hashCode(new Object[]{this.f8970g});
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("BaseEncoding.");
        sb2.append(this.f8969f.toString());
        if (8 % this.f8969f.f8870d != 0) {
            if (this.f8970g == null) {
                sb2.append(".omitPadding()");
            } else {
                sb2.append(".withPadChar('");
                sb2.append(this.f8970g);
                sb2.append("')");
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public pa(String str, String str2, Character ch2) {
        this(new ma(str, str2.toCharArray()), ch2);
    }
}
