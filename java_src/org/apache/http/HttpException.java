package org.apache.http;
/* loaded from: classes7.dex */
public class HttpException extends Exception {
    private static final int FIRST_VALID_CHAR = 32;
    private static final long serialVersionUID = -5437299376222011036L;

    public HttpException() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String clean(String str) {
        char[] charArray = str.toCharArray();
        int i9 = 0;
        while (i9 < charArray.length && charArray[i9] >= ' ') {
            i9++;
        }
        if (i9 == charArray.length) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(charArray.length * 2);
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (c10 < ' ') {
                sb2.append("[0x");
                String hexString = Integer.toHexString(i10);
                if (hexString.length() == 1) {
                    sb2.append("0");
                }
                sb2.append(hexString);
                sb2.append("]");
            } else {
                sb2.append(c10);
            }
        }
        return sb2.toString();
    }

    public HttpException(String str) {
        super(clean(str));
    }

    public HttpException(String str, Throwable th2) {
        super(clean(str));
        initCause(th2);
    }
}
