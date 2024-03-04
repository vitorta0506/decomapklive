package org.bouncycastle.util.encoders;

import com.tencent.ugc.datereport.UGCDataReportDef;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final short[] f56274a = new short[128];

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f56275b;

    static {
        byte[] bArr = new byte[112];
        f56275b = bArr;
        byte[] bArr2 = new byte[128];
        a(bArr2, 0, 15, (byte) 1);
        a(bArr2, 16, 31, (byte) 2);
        a(bArr2, 32, 63, (byte) 3);
        a(bArr2, 64, 65, (byte) 0);
        a(bArr2, 66, 95, (byte) 4);
        a(bArr2, 96, 96, (byte) 5);
        a(bArr2, 97, 108, (byte) 6);
        a(bArr2, 109, 109, (byte) 7);
        a(bArr2, 110, 111, (byte) 6);
        a(bArr2, 112, 112, (byte) 8);
        a(bArr2, 113, 115, (byte) 9);
        a(bArr2, 116, 116, (byte) 10);
        a(bArr2, 117, 127, (byte) 0);
        a(bArr, 0, bArr.length - 1, (byte) -2);
        a(bArr, 8, 11, (byte) -1);
        a(bArr, 24, 27, (byte) 0);
        a(bArr, 40, 43, (byte) 16);
        a(bArr, 58, 59, (byte) 0);
        a(bArr, 72, 73, (byte) 0);
        a(bArr, 89, 91, (byte) 16);
        a(bArr, 104, 104, (byte) 16);
        byte[] bArr3 = {0, 0, 0, 0, 31, 15, 15, 15, 7, 7, 7};
        byte[] bArr4 = {-2, -2, -2, -2, 0, 48, 16, 64, 80, 32, 96};
        for (int i9 = 0; i9 < 128; i9++) {
            byte b10 = bArr2[i9];
            f56274a[i9] = (short) (bArr4[b10] | ((bArr3[b10] & i9) << 8));
        }
    }

    private static void a(byte[] bArr, int i9, int i10, byte b10) {
        while (i9 <= i10) {
            bArr[i9] = b10;
            i9++;
        }
    }

    public static int b(byte[] bArr, char[] cArr) {
        int i9 = 0;
        int i10 = 0;
        while (i9 < bArr.length) {
            int i11 = i9 + 1;
            byte b10 = bArr[i9];
            if (b10 < 0) {
                short s10 = f56274a[b10 & ByteCompanionObject.MAX_VALUE];
                int i12 = s10 >>> 8;
                byte b11 = (byte) s10;
                while (b11 >= 0) {
                    if (i11 >= bArr.length) {
                        return -1;
                    }
                    int i13 = i11 + 1;
                    byte b12 = bArr[i11];
                    i12 = (i12 << 6) | (b12 & Utf8.REPLACEMENT_BYTE);
                    b11 = f56275b[b11 + ((b12 & UByte.MAX_VALUE) >>> 4)];
                    i11 = i13;
                }
                if (b11 == -2) {
                    return -1;
                }
                if (i12 <= 65535) {
                    if (i10 >= cArr.length) {
                        return -1;
                    }
                    cArr[i10] = (char) i12;
                    i10++;
                } else if (i10 >= cArr.length - 1) {
                    return -1;
                } else {
                    int i14 = i10 + 1;
                    cArr[i10] = (char) ((i12 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                    i10 = i14 + 1;
                    cArr[i14] = (char) (56320 | (i12 & UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER));
                }
                i9 = i11;
            } else if (i10 >= cArr.length) {
                return -1;
            } else {
                cArr[i10] = (char) b10;
                i9 = i11;
                i10++;
            }
        }
        return i10;
    }
}
