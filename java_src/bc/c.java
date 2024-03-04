package bc;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import kotlin.UByte;
/* loaded from: classes4.dex */
public final class c {
    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & UByte.MAX_VALUE);
            if (hexString.length() == 1) {
                sb2.append('0');
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static byte[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            String upperCase = str.toUpperCase(Locale.ENGLISH);
            int length = upperCase.length() / 2;
            byte[] bArr = new byte[length];
            try {
                byte[] bytes = upperCase.getBytes("UTF-8");
                for (int i9 = 0; i9 < length; i9++) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("0x");
                    int i10 = i9 * 2;
                    sb2.append(new String(new byte[]{bytes[i10]}, "UTF-8"));
                    bArr[i9] = (byte) (((byte) (Byte.decode(sb2.toString()).byteValue() << 4)) ^ Byte.decode("0x" + new String(new byte[]{bytes[i10 + 1]}, "UTF-8")).byteValue());
                }
                return bArr;
            } catch (UnsupportedEncodingException | NumberFormatException e10) {
                f.c("HexUtil", "hex string 2 byte array exception : " + e10.getMessage());
                return new byte[0];
            }
        } catch (Throwable th2) {
            f.c("HexUtil", "hex string toUpperCase exception : " + th2.getMessage());
            return new byte[0];
        }
    }
}
