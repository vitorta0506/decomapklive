package io.grpc.internal;

import com.google.common.io.BaseEncoding;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class n2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f42917a = Logger.getLogger(n2.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f42918b = "-bin".getBytes(com.google.common.base.e.f12354a);

    private n2() {
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i9 = length; i9 < bArr.length; i9++) {
            if (bArr[i9] != bArr2[i9 - length]) {
                return false;
            }
        }
        return true;
    }

    private static boolean b(byte[] bArr) {
        for (byte b10 : bArr) {
            if (b10 < 32 || b10 > 126) {
                return false;
            }
        }
        return true;
    }

    private static byte[][] c(byte[][] bArr, int i9) {
        ArrayList arrayList = new ArrayList(bArr.length + 10);
        for (int i10 = 0; i10 < i9; i10++) {
            arrayList.add(bArr[i10]);
        }
        while (i9 < bArr.length) {
            byte[] bArr2 = bArr[i9];
            byte[] bArr3 = bArr[i9 + 1];
            if (!a(bArr2, f42918b)) {
                arrayList.add(bArr2);
                arrayList.add(bArr3);
            } else {
                int i11 = 0;
                for (int i12 = 0; i12 <= bArr3.length; i12++) {
                    if (i12 == bArr3.length || bArr3[i12] == 44) {
                        byte[] d10 = BaseEncoding.b().d(new String(bArr3, i11, i12 - i11, com.google.common.base.e.f12354a));
                        arrayList.add(bArr2);
                        arrayList.add(d10);
                        i11 = i12 + 1;
                    }
                }
            }
            i9 += 2;
        }
        return (byte[][]) arrayList.toArray(new byte[0]);
    }

    public static byte[][] d(io.grpc.s0 s0Var) {
        byte[][] e10 = io.grpc.h0.e(s0Var);
        if (e10 == null) {
            return new byte[0];
        }
        int i9 = 0;
        for (int i10 = 0; i10 < e10.length; i10 += 2) {
            byte[] bArr = e10[i10];
            byte[] bArr2 = e10[i10 + 1];
            if (a(bArr, f42918b)) {
                e10[i9] = bArr;
                e10[i9 + 1] = io.grpc.h0.f42331b.g(bArr2).getBytes(com.google.common.base.e.f12354a);
            } else if (b(bArr2)) {
                e10[i9] = bArr;
                e10[i9 + 1] = bArr2;
            } else {
                String str = new String(bArr, com.google.common.base.e.f12354a);
                Logger logger = f42917a;
                logger.warning("Metadata key=" + str + ", value=" + Arrays.toString(bArr2) + " contains invalid ASCII characters");
            }
            i9 += 2;
        }
        return i9 == e10.length ? e10 : (byte[][]) Arrays.copyOfRange(e10, 0, i9);
    }

    public static byte[][] e(byte[][] bArr) {
        for (int i9 = 0; i9 < bArr.length; i9 += 2) {
            byte[] bArr2 = bArr[i9];
            int i10 = i9 + 1;
            byte[] bArr3 = bArr[i10];
            if (a(bArr2, f42918b)) {
                for (byte b10 : bArr3) {
                    if (b10 == 44) {
                        return c(bArr, i9);
                    }
                }
                bArr[i10] = BaseEncoding.b().d(new String(bArr3, com.google.common.base.e.f12354a));
            }
        }
        return bArr;
    }
}
