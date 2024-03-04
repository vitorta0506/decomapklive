package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class oa extends pa {
    private oa(ma maVar, Character ch2) {
        super(maVar, ch2);
        char[] cArr;
        cArr = maVar.f8868b;
        z7.e(cArr.length == 64);
    }

    @Override // com.google.android.gms.internal.recaptcha.pa, com.google.android.gms.internal.recaptcha.qa
    final void a(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        z7.h(0, i10, bArr.length);
        int i12 = i10;
        while (i12 >= 3) {
            int i13 = i11 + 1;
            int i14 = i13 + 1;
            int i15 = ((bArr[i11] & UByte.MAX_VALUE) << 16) | ((bArr[i13] & UByte.MAX_VALUE) << 8) | (bArr[i14] & UByte.MAX_VALUE);
            appendable.append(this.f8969f.a(i15 >>> 18));
            appendable.append(this.f8969f.a((i15 >>> 12) & 63));
            appendable.append(this.f8969f.a((i15 >>> 6) & 63));
            appendable.append(this.f8969f.a(i15 & 63));
            i12 -= 3;
            i11 = i14 + 1;
        }
        if (i11 < i10) {
            g(appendable, bArr, i11, i10 - i11);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.pa
    final qa f(ma maVar, Character ch2) {
        return new oa(maVar, ch2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(String str, String str2, Character ch2) {
        this(new ma(str, str2.toCharArray()), ch2);
    }
}
