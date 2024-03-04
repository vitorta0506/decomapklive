package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static final i0 f7895a;

    static {
        if (h0.d() && h0.e()) {
            int i9 = m.f7897a;
        }
        f7895a = new j0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ int a(byte[] bArr, int i9, int i10) {
        byte b10 = bArr[i9 - 1];
        int i11 = i10 - i9;
        if (i11 != 0) {
            if (i11 == 1) {
                byte b11 = bArr[i9];
                if (b10 <= -12 && b11 <= -65) {
                    return b10 ^ (b11 << 8);
                }
            } else if (i11 == 2) {
                byte b12 = bArr[i9];
                byte b13 = bArr[i9 + 1];
                if (b10 <= -12 && b12 <= -65 && b13 <= -65) {
                    return ((b12 << 8) ^ b10) ^ (b13 << 16);
                }
            } else {
                throw new AssertionError();
            }
        } else if (b10 <= -12) {
            return b10;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(byte[] bArr, int i9, int i10) {
        return f7895a.b(bArr, i9, i10);
    }
}
