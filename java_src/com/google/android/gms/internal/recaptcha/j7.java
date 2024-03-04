package com.google.android.gms.internal.recaptcha;

import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
final class j7 extends i7 {

    /* renamed from: a  reason: collision with root package name */
    private final char f8771a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j7(char c10) {
        this.f8771a = c10;
    }

    @Override // com.google.android.gms.internal.recaptcha.n7
    public final boolean a(char c10) {
        return c10 == this.f8771a;
    }

    public final String toString() {
        int i9 = this.f8771a;
        char[] cArr = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', 0, 0, 0, 0};
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(i9 & 15);
            i9 >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb2 = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb2.append("CharMatcher.is('");
        sb2.append(copyValueOf);
        sb2.append("')");
        return sb2.toString();
    }
}
