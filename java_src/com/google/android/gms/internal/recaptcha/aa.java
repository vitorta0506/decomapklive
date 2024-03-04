package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
enum aa implements ba {
    INSTANCE;

    @Override // com.google.android.gms.internal.recaptcha.ba
    public final /* synthetic */ long a(byte[] bArr, int i9) {
        if (ordinal() == 0) {
            return (bArr[i9] & 255) | ((bArr[i9 + 7] & 255) << 56) | ((bArr[i9 + 6] & 255) << 48) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 1] & 255) << 8);
        }
        throw null;
    }
}
