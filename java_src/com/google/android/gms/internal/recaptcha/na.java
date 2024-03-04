package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes2.dex */
final class na extends pa {

    /* renamed from: i  reason: collision with root package name */
    final char[] f8914i;

    private na(ma maVar) {
        super(maVar, null);
        char[] cArr;
        this.f8914i = new char[512];
        cArr = maVar.f8868b;
        z7.e(cArr.length == 16);
        for (int i9 = 0; i9 < 256; i9++) {
            this.f8914i[i9] = maVar.a(i9 >>> 4);
            this.f8914i[i9 | 256] = maVar.a(i9 & 15);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.pa, com.google.android.gms.internal.recaptcha.qa
    final void a(Appendable appendable, byte[] bArr, int i9, int i10) throws IOException {
        z7.h(0, i10, bArr.length);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = bArr[i11] & UByte.MAX_VALUE;
            appendable.append(this.f8914i[i12]);
            appendable.append(this.f8914i[i12 | 256]);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.pa
    final qa f(ma maVar, Character ch2) {
        return new na(maVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public na(String str, String str2) {
        this(new ma("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
