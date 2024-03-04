package org.apache.commons.io;

import java.io.Serializable;
/* loaded from: classes7.dex */
public class ByteOrderMark implements Serializable {
    public static final char UTF_BOM = 65279;
    private static final long serialVersionUID = 1;
    private final int[] bytes;
    private final String charsetName;
    public static final ByteOrderMark UTF_8 = new ByteOrderMark("UTF-8", 239, 187, 191);
    public static final ByteOrderMark UTF_16BE = new ByteOrderMark("UTF-16BE", 254, 255);
    public static final ByteOrderMark UTF_16LE = new ByteOrderMark("UTF-16LE", 255, 254);
    public static final ByteOrderMark UTF_32BE = new ByteOrderMark("UTF-32BE", 0, 0, 254, 255);
    public static final ByteOrderMark UTF_32LE = new ByteOrderMark("UTF-32LE", 255, 254, 0, 0);

    public ByteOrderMark(String str, int... iArr) {
        if (str != null && !str.isEmpty()) {
            if (iArr != null && iArr.length != 0) {
                this.charsetName = str;
                int[] iArr2 = new int[iArr.length];
                this.bytes = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                return;
            }
            throw new IllegalArgumentException("No bytes specified");
        }
        throw new IllegalArgumentException("No charsetName specified");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ByteOrderMark)) {
            return false;
        }
        ByteOrderMark byteOrderMark = (ByteOrderMark) obj;
        if (this.bytes.length != byteOrderMark.length()) {
            return false;
        }
        int i9 = 0;
        while (true) {
            int[] iArr = this.bytes;
            if (i9 >= iArr.length) {
                return true;
            }
            if (iArr[i9] != byteOrderMark.get(i9)) {
                return false;
            }
            i9++;
        }
    }

    public int get(int i9) {
        return this.bytes[i9];
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[this.bytes.length];
        int i9 = 0;
        while (true) {
            int[] iArr = this.bytes;
            if (i9 >= iArr.length) {
                return bArr;
            }
            bArr[i9] = (byte) iArr[i9];
            i9++;
        }
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public int hashCode() {
        int hashCode = getClass().hashCode();
        for (int i9 : this.bytes) {
            hashCode += i9;
        }
        return hashCode;
    }

    public int length() {
        return this.bytes.length;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append(this.charsetName);
        sb2.append(": ");
        for (int i9 = 0; i9 < this.bytes.length; i9++) {
            if (i9 > 0) {
                sb2.append(",");
            }
            sb2.append("0x");
            sb2.append(Integer.toHexString(this.bytes[i9] & 255).toUpperCase());
        }
        sb2.append(']');
        return sb2.toString();
    }
}
