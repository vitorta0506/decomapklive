package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class wa {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z10, String str, long j10, long j11) {
        if (z10) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 54);
        sb2.append("overflow: ");
        sb2.append(str);
        sb2.append("(");
        sb2.append(j10);
        sb2.append(", ");
        sb2.append(j11);
        sb2.append(")");
        throw new ArithmeticException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(boolean z10) {
        if (!z10) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
