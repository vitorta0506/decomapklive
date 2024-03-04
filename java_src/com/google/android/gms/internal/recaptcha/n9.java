package com.google.android.gms.internal.recaptcha;

import java.nio.charset.Charset;
/* loaded from: classes2.dex */
abstract class n9 implements w9 {
    @Override // com.google.android.gms.internal.recaptcha.w9
    public final v9 a(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.recaptcha.w9
    public v9 b(CharSequence charSequence, Charset charset) {
        throw null;
    }

    public v9 c(byte[] bArr, int i9, int i10) {
        z7.h(0, i10, bArr.length);
        x9 d10 = d(i10);
        d10.a(bArr, 0, i10);
        return d10.c();
    }

    public x9 d(int i9) {
        return l();
    }
}
