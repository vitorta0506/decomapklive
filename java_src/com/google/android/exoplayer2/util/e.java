package com.google.android.exoplayer2.util;

import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f6952a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f6953b = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    public static String a(int i9, int i10, int i11) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static List<byte[]> b(boolean z10) {
        return Collections.singletonList(z10 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i9, boolean z10, int i10, int i11, int[] iArr, int i12) {
        Object[] objArr = new Object[5];
        objArr[0] = f6953b[i9];
        objArr[1] = Integer.valueOf(i10);
        objArr[2] = Integer.valueOf(i11);
        objArr[3] = Character.valueOf(z10 ? 'H' : 'L');
        objArr[4] = Integer.valueOf(i12);
        StringBuilder sb2 = new StringBuilder(l0.z("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i13 = 0; i13 < length; i13++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i13])));
        }
        return sb2.toString();
    }

    public static byte[] d(byte[] bArr, int i9, int i10) {
        byte[] bArr2 = f6952a;
        byte[] bArr3 = new byte[bArr2.length + i10];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i9, bArr3, bArr2.length, i10);
        return bArr3;
    }

    public static Pair<Integer, Integer> e(byte[] bArr) {
        b0 b0Var = new b0(bArr);
        b0Var.P(9);
        int D = b0Var.D();
        b0Var.P(20);
        return Pair.create(Integer.valueOf(b0Var.H()), Integer.valueOf(D));
    }

    public static boolean f(List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }
}
