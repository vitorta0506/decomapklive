package com.google.android.gms.internal.recaptcha;

import java.nio.charset.Charset;
/* loaded from: classes2.dex */
abstract class r9 extends n9 {
    @Override // com.google.android.gms.internal.recaptcha.n9, com.google.android.gms.internal.recaptcha.w9
    public final v9 b(CharSequence charSequence, Charset charset) {
        byte[] bytes = charSequence.toString().getBytes(charset);
        return c(bytes, 0, bytes.length);
    }

    @Override // com.google.android.gms.internal.recaptcha.n9
    public final x9 d(int i9) {
        return new p9(this, i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.w9
    public final x9 l() {
        return new p9(this, 32);
    }
}
