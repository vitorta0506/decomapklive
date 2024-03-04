package cn.jiguang.bf;
/* loaded from: classes.dex */
public class f {
    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b10 : bArr) {
            a(stringBuffer, b10);
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }

    private static void a(StringBuffer stringBuffer, byte b10) {
        stringBuffer.append("0123456789ABCDEF".charAt((b10 >> 4) & 15));
        stringBuffer.append("0123456789ABCDEF".charAt(b10 & 15));
    }
}
