package com.google.android.gms.internal.common;

import org.jspecify.nullness.NullMarked;
@NullMarked
/* loaded from: classes2.dex */
public final class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            if (objArr[i10] == null) {
                throw new NullPointerException("at index " + i10);
            }
        }
        return objArr;
    }
}
