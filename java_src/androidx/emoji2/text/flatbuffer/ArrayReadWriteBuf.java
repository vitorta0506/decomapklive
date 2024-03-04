package androidx.emoji2.text.flatbuffer;

import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {
    private byte[] buffer;
    private int writePos;

    public ArrayReadWriteBuf() {
        this(10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i9) {
        return this.buffer[i9];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i9) {
        return this.buffer[i9] != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i9) {
        return Double.longBitsToDouble(getLong(i9));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i9) {
        return Float.intBitsToFloat(getInt(i9));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i9) {
        byte[] bArr = this.buffer;
        return (bArr[i9] & UByte.MAX_VALUE) | (bArr[i9 + 3] << 24) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i9) {
        byte[] bArr = this.buffer;
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        int i15 = i14 + 1;
        return (bArr[i9] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((255 & bArr[i15]) << 48) | (bArr[i15 + 1] << 56);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i9) {
        byte[] bArr = this.buffer;
        return (short) ((bArr[i9] & UByte.MAX_VALUE) | (bArr[i9 + 1] << 8));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i9, int i10) {
        return Utf8Safe.decodeUtf8Array(this.buffer, i9, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.writePos;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i9, int i10) {
        set(this.writePos, bArr, i9, i10);
        this.writePos += i10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z10) {
        setBoolean(this.writePos, z10);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d10) {
        setDouble(this.writePos, d10);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f10) {
        setFloat(this.writePos, f10);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i9) {
        setInt(this.writePos, i9);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j10) {
        setLong(this.writePos, j10);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s10) {
        setShort(this.writePos, s10);
        this.writePos += 2;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i9) {
        byte[] bArr = this.buffer;
        if (bArr.length > i9) {
            return true;
        }
        int length = bArr.length;
        this.buffer = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i9, byte b10) {
        requestCapacity(i9 + 1);
        this.buffer[i9] = b10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i9, boolean z10) {
        set(i9, z10 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i9, double d10) {
        requestCapacity(i9 + 8);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        int i10 = (int) doubleToRawLongBits;
        byte[] bArr = this.buffer;
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >> 24) & 255);
        int i15 = (int) (doubleToRawLongBits >> 32);
        int i16 = i14 + 1;
        bArr[i14] = (byte) (i15 & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((i15 >> 8) & 255);
        bArr[i17] = (byte) ((i15 >> 16) & 255);
        bArr[i17 + 1] = (byte) ((i15 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i9, float f10) {
        requestCapacity(i9 + 4);
        int floatToRawIntBits = Float.floatToRawIntBits(f10);
        byte[] bArr = this.buffer;
        int i10 = i9 + 1;
        bArr[i9] = (byte) (floatToRawIntBits & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((floatToRawIntBits >> 8) & 255);
        bArr[i11] = (byte) ((floatToRawIntBits >> 16) & 255);
        bArr[i11 + 1] = (byte) ((floatToRawIntBits >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i9, int i10) {
        requestCapacity(i9 + 4);
        byte[] bArr = this.buffer;
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        bArr[i12 + 1] = (byte) ((i10 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i9, long j10) {
        requestCapacity(i9 + 8);
        int i10 = (int) j10;
        byte[] bArr = this.buffer;
        int i11 = i9 + 1;
        bArr[i9] = (byte) (i10 & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >> 8) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >> 24) & 255);
        int i15 = (int) (j10 >> 32);
        int i16 = i14 + 1;
        bArr[i14] = (byte) (i15 & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((i15 >> 8) & 255);
        bArr[i17] = (byte) ((i15 >> 16) & 255);
        bArr[i17 + 1] = (byte) ((i15 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i9, short s10) {
        requestCapacity(i9 + 2);
        byte[] bArr = this.buffer;
        bArr[i9] = (byte) (s10 & 255);
        bArr[i9 + 1] = (byte) ((s10 >> 8) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.writePos;
    }

    public ArrayReadWriteBuf(int i9) {
        this(new byte[i9]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.buffer = bArr;
        this.writePos = 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b10) {
        set(this.writePos, b10);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i9, byte[] bArr, int i10, int i11) {
        requestCapacity((i11 - i10) + i9);
        System.arraycopy(bArr, i10, this.buffer, i9, i11);
    }

    public ArrayReadWriteBuf(byte[] bArr, int i9) {
        this.buffer = bArr;
        this.writePos = i9;
    }
}
