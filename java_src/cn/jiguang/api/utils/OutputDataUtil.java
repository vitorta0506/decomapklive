package cn.jiguang.api.utils;

import cn.jiguang.bf.d;
import java.math.BigInteger;
/* loaded from: classes.dex */
public class OutputDataUtil {
    private static final String TAG = "OutputDataUtil";
    private static final BigInteger TWO_64 = BigInteger.ONE.shiftLeft(64);
    private byte[] array;
    private int pos;
    private int saved_pos;

    public OutputDataUtil() {
        this(32);
    }

    public OutputDataUtil(int i9) {
        this.array = new byte[i9];
        this.pos = 0;
        this.saved_pos = -1;
    }

    private void check(long j10, int i9) {
        long j11 = 1 << i9;
        if (j10 < 0 || j10 > j11) {
            d.c(TAG, j10 + " out of range for " + i9 + " bit value max:" + j11);
        }
    }

    public static int encodeZigZag32(int i9) {
        return (i9 >> 31) ^ (i9 << 1);
    }

    public static long encodeZigZag64(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    private void need(int i9) {
        byte[] bArr = this.array;
        int length = bArr.length;
        int i10 = this.pos;
        if (length - i10 >= i9) {
            return;
        }
        int length2 = bArr.length * 2;
        if (length2 < i10 + i9) {
            length2 = i10 + i9;
        }
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        this.array = bArr2;
    }

    public int current() {
        return this.pos;
    }

    public void jump(int i9) {
        if (i9 > this.pos) {
            throw new IllegalArgumentException("cannot jump past end of data");
        }
        this.pos = i9;
    }

    public void restore() {
        int i9 = this.saved_pos;
        if (i9 < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.pos = i9;
        this.saved_pos = -1;
    }

    public void save() {
        this.saved_pos = this.pos;
    }

    public byte[] toByteArray() {
        int i9 = this.pos;
        byte[] bArr = new byte[i9];
        System.arraycopy(this.array, 0, bArr, 0, i9);
        return bArr;
    }

    public void writeByteArray(byte[] bArr) {
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeByteArray(byte[] bArr, int i9, int i10) {
        need(i10);
        System.arraycopy(bArr, i9, this.array, this.pos, i10);
        this.pos += i10;
    }

    public void writeByteArrayincludeLength(byte[] bArr) {
        writeU16(bArr.length);
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeCountedString(byte[] bArr) {
        if (bArr.length > 255) {
            throw new IllegalArgumentException("Invalid counted string");
        }
        need(bArr.length + 1);
        byte[] bArr2 = this.array;
        int i9 = this.pos;
        this.pos = i9 + 1;
        bArr2[i9] = (byte) (255 & bArr.length);
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeRawLittleEndian16(int i9) {
        byte[] bArr = this.array;
        int i10 = this.pos;
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) (i9 & 255);
        this.pos = i11 + 1;
        bArr[i11] = (byte) ((i9 >> 8) & 255);
    }

    public void writeRawLittleEndian32(int i9) {
        byte[] bArr = this.array;
        int i10 = this.pos;
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) (i9 & 255);
        int i12 = i11 + 1;
        this.pos = i12;
        bArr[i11] = (byte) ((i9 >> 8) & 255);
        int i13 = i12 + 1;
        this.pos = i13;
        bArr[i12] = (byte) ((i9 >> 16) & 255);
        this.pos = i13 + 1;
        bArr[i13] = (byte) ((i9 >> 24) & 255);
    }

    public void writeRawLittleEndian64(long j10) {
        byte[] bArr = this.array;
        int i9 = this.pos;
        int i10 = i9 + 1;
        this.pos = i10;
        bArr[i9] = (byte) (((int) j10) & 255);
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) (((int) (j10 >> 8)) & 255);
        int i12 = i11 + 1;
        this.pos = i12;
        bArr[i11] = (byte) (((int) (j10 >> 16)) & 255);
        int i13 = i12 + 1;
        this.pos = i13;
        bArr[i12] = (byte) (((int) (j10 >> 24)) & 255);
        int i14 = i13 + 1;
        this.pos = i14;
        bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
        int i15 = i14 + 1;
        this.pos = i15;
        bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
        int i16 = i15 + 1;
        this.pos = i16;
        bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
        this.pos = i16 + 1;
        bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
    }

    public void writeU16(int i9) {
        check(i9, 16);
        need(2);
        byte[] bArr = this.array;
        int i10 = this.pos;
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        this.pos = i11 + 1;
        bArr[i11] = (byte) (i9 & 255);
    }

    public void writeU16At(int i9, int i10) {
        check(i9, 16);
        if (i10 > this.pos - 2) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        bArr[i10 + 1] = (byte) (i9 & 255);
    }

    public void writeU32(long j10) {
        check(j10, 32);
        need(4);
        byte[] bArr = this.array;
        int i9 = this.pos;
        int i10 = i9 + 1;
        this.pos = i10;
        bArr[i9] = (byte) ((j10 >>> 24) & 255);
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) ((j10 >>> 16) & 255);
        int i12 = i11 + 1;
        this.pos = i12;
        bArr[i11] = (byte) ((j10 >>> 8) & 255);
        this.pos = i12 + 1;
        bArr[i12] = (byte) (j10 & 255);
    }

    public void writeU32At(long j10, int i9) {
        check(j10, 32);
        if (i9 > this.pos - 4) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        int i10 = i9 + 1;
        bArr[i9] = (byte) ((j10 >>> 24) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 16) & 255);
        bArr[i11] = (byte) ((j10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (j10 & 255);
    }

    public void writeU64(long j10) {
        need(8);
        byte[] bArr = this.array;
        int i9 = this.pos;
        int i10 = i9 + 1;
        this.pos = i10;
        bArr[i9] = (byte) ((j10 >>> 56) & 255);
        int i11 = i10 + 1;
        this.pos = i11;
        bArr[i10] = (byte) ((j10 >>> 48) & 255);
        int i12 = i11 + 1;
        this.pos = i12;
        bArr[i11] = (byte) ((j10 >>> 40) & 255);
        int i13 = i12 + 1;
        this.pos = i13;
        bArr[i12] = (byte) ((j10 >>> 32) & 255);
        int i14 = i13 + 1;
        this.pos = i14;
        bArr[i13] = (byte) ((j10 >>> 24) & 255);
        int i15 = i14 + 1;
        this.pos = i15;
        bArr[i14] = (byte) ((j10 >>> 16) & 255);
        int i16 = i15 + 1;
        this.pos = i16;
        bArr[i15] = (byte) ((j10 >>> 8) & 255);
        this.pos = i16 + 1;
        bArr[i16] = (byte) (j10 & 255);
    }

    public void writeU64At(long j10, int i9) {
        byte[] bArr = this.array;
        int i10 = i9 + 1;
        bArr[i9] = (byte) ((j10 >>> 56) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 48) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 40) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 32) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 24) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 16) & 255);
        bArr[i15] = (byte) ((j10 >>> 8) & 255);
        bArr[i15 + 1] = (byte) (j10 & 255);
    }

    public void writeU8(int i9) {
        check(i9, 8);
        need(1);
        byte[] bArr = this.array;
        int i10 = this.pos;
        this.pos = i10 + 1;
        bArr[i10] = (byte) (i9 & 255);
    }

    public void writeU8At(int i9, int i10) {
        check(i9, 8);
        if (i10 > this.pos - 1) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        this.array[i10] = (byte) (i9 & 255);
    }
}
