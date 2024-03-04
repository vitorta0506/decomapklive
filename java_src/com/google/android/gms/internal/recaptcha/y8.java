package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class y8 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Object obj, int i9) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("at index ");
        sb2.append(i9);
        throw new NullPointerException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] b(Object[] objArr, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            a(objArr[i10], i10);
        }
        return objArr;
    }
}
