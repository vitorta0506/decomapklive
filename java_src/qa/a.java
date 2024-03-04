package qa;

import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static char f57138a = '=';

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f57139b = new byte[128];

    /* renamed from: c  reason: collision with root package name */
    private static char[] f57140c = new char[64];

    static {
        int i9;
        int i10;
        int i11 = 0;
        for (int i12 = 0; i12 < 128; i12++) {
            f57139b[i12] = -1;
        }
        for (int i13 = 90; i13 >= 65; i13--) {
            f57139b[i13] = (byte) (i13 - 65);
        }
        int i14 = 122;
        while (true) {
            i9 = 26;
            if (i14 < 97) {
                break;
            }
            f57139b[i14] = (byte) ((i14 - 97) + 26);
            i14--;
        }
        int i15 = 57;
        while (true) {
            i10 = 52;
            if (i15 < 48) {
                break;
            }
            f57139b[i15] = (byte) ((i15 - 48) + 52);
            i15--;
        }
        byte[] bArr = f57139b;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i16 = 0; i16 <= 25; i16++) {
            f57140c[i16] = (char) (i16 + 65);
        }
        int i17 = 0;
        while (i9 <= 51) {
            f57140c[i9] = (char) (i17 + 97);
            i9++;
            i17++;
        }
        while (i10 <= 61) {
            f57140c[i10] = (char) (i11 + 48);
            i10++;
            i11++;
        }
        char[] cArr = f57140c;
        cArr[62] = '+';
        cArr[63] = IOUtils.DIR_SEPARATOR_UNIX;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        int i9 = length % 24;
        int i10 = length / 24;
        char[] cArr = new char[(i9 != 0 ? i10 + 1 : i10) * 4];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            int i14 = i12 + 1;
            byte b10 = bArr[i12];
            int i15 = i14 + 1;
            byte b11 = bArr[i14];
            int i16 = i15 + 1;
            byte b12 = bArr[i15];
            byte b13 = (byte) (b11 & 15);
            byte b14 = (byte) (b10 & 3);
            byte b15 = (byte) ((b10 & ByteCompanionObject.MIN_VALUE) == 0 ? b10 >> 2 : (b10 >> 2) ^ 192);
            byte b16 = (byte) ((b11 & ByteCompanionObject.MIN_VALUE) == 0 ? b11 >> 4 : (b11 >> 4) ^ 240);
            int i17 = (b12 & ByteCompanionObject.MIN_VALUE) == 0 ? b12 >> 6 : (b12 >> 6) ^ 252;
            int i18 = i13 + 1;
            char[] cArr2 = f57140c;
            cArr[i13] = cArr2[b15];
            int i19 = i18 + 1;
            cArr[i18] = cArr2[(b14 << 4) | b16];
            int i20 = i19 + 1;
            cArr[i19] = cArr2[(b13 << 2) | ((byte) i17)];
            cArr[i20] = cArr2[b12 & Utf8.REPLACEMENT_BYTE];
            i11++;
            i13 = i20 + 1;
            i12 = i16;
        }
        if (i9 == 8) {
            byte b17 = bArr[i12];
            byte b18 = (byte) (b17 & 3);
            int i21 = (b17 & ByteCompanionObject.MIN_VALUE) == 0 ? b17 >> 2 : (b17 >> 2) ^ 192;
            int i22 = i13 + 1;
            char[] cArr3 = f57140c;
            cArr[i13] = cArr3[(byte) i21];
            int i23 = i22 + 1;
            cArr[i22] = cArr3[b18 << 4];
            char c10 = f57138a;
            cArr[i23] = c10;
            cArr[i23 + 1] = c10;
        } else if (i9 == 16) {
            byte b19 = bArr[i12];
            byte b20 = bArr[i12 + 1];
            byte b21 = (byte) (b20 & 15);
            byte b22 = (byte) (b19 & 3);
            byte b23 = (byte) ((b19 & ByteCompanionObject.MIN_VALUE) == 0 ? b19 >> 2 : (b19 >> 2) ^ 192);
            int i24 = (b20 & ByteCompanionObject.MIN_VALUE) == 0 ? b20 >> 4 : (b20 >> 4) ^ 240;
            int i25 = i13 + 1;
            char[] cArr4 = f57140c;
            cArr[i13] = cArr4[b23];
            int i26 = i25 + 1;
            cArr[i25] = cArr4[((byte) i24) | (b22 << 4)];
            cArr[i26] = cArr4[b21 << 2];
            cArr[i26 + 1] = f57138a;
        }
        return new String(cArr);
    }
}
