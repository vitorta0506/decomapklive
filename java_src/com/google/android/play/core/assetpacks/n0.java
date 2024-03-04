package com.google.android.play.core.assetpacks;

import kotlin.UByte;
/* loaded from: classes2.dex */
final class n0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i9) {
        return ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | (bArr[i9] & UByte.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i9) {
        return ((a(bArr, i9 + 2) << 16) | a(bArr, i9)) & 4294967295L;
    }
}
