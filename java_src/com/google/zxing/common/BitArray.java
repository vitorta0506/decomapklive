package com.google.zxing.common;

import io.jsonwebtoken.JwtParser;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes3.dex */
public final class BitArray implements Cloneable {
    private int[] bits;
    private int size;

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    private void ensureCapacity(int i9) {
        if (i9 > (this.bits.length << 5)) {
            int[] makeArray = makeArray(i9);
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeArray, 0, iArr.length);
            this.bits = makeArray;
        }
    }

    private static int[] makeArray(int i9) {
        return new int[(i9 + 31) / 32];
    }

    public void appendBit(boolean z10) {
        ensureCapacity(this.size + 1);
        if (z10) {
            int[] iArr = this.bits;
            int i9 = this.size;
            int i10 = i9 / 32;
            iArr[i10] = (1 << (i9 & 31)) | iArr[i10];
        }
        this.size++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i9 = bitArray.size;
        ensureCapacity(this.size + i9);
        for (int i10 = 0; i10 < i9; i10++) {
            appendBit(bitArray.get(i10));
        }
    }

    public void appendBits(int i9, int i10) {
        if (i10 >= 0 && i10 <= 32) {
            ensureCapacity(this.size + i10);
            while (i10 > 0) {
                boolean z10 = true;
                if (((i9 >> (i10 - 1)) & 1) != 1) {
                    z10 = false;
                }
                appendBit(z10);
                i10--;
            }
            return;
        }
        throw new IllegalArgumentException("Num bits must be between 0 and 32");
    }

    public void clear() {
        int length = this.bits.length;
        for (int i9 = 0; i9 < length; i9++) {
            this.bits[i9] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof BitArray) {
            BitArray bitArray = (BitArray) obj;
            return this.size == bitArray.size && Arrays.equals(this.bits, bitArray.bits);
        }
        return false;
    }

    public void flip(int i9) {
        int[] iArr = this.bits;
        int i10 = i9 / 32;
        iArr[i10] = (1 << (i9 & 31)) ^ iArr[i10];
    }

    public boolean get(int i9) {
        return ((1 << (i9 & 31)) & this.bits[i9 / 32]) != 0;
    }

    public int[] getBitArray() {
        return this.bits;
    }

    public int getNextSet(int i9) {
        int i10 = this.size;
        if (i9 >= i10) {
            return i10;
        }
        int i11 = i9 / 32;
        int i12 = (~((1 << (i9 & 31)) - 1)) & this.bits[i11];
        while (i12 == 0) {
            i11++;
            int[] iArr = this.bits;
            if (i11 == iArr.length) {
                return this.size;
            }
            i12 = iArr[i11];
        }
        int numberOfTrailingZeros = (i11 << 5) + Integer.numberOfTrailingZeros(i12);
        int i13 = this.size;
        return numberOfTrailingZeros > i13 ? i13 : numberOfTrailingZeros;
    }

    public int getNextUnset(int i9) {
        int i10 = this.size;
        if (i9 >= i10) {
            return i10;
        }
        int i11 = i9 / 32;
        int i12 = (~((1 << (i9 & 31)) - 1)) & (~this.bits[i11]);
        while (i12 == 0) {
            i11++;
            int[] iArr = this.bits;
            if (i11 == iArr.length) {
                return this.size;
            }
            i12 = ~iArr[i11];
        }
        int numberOfTrailingZeros = (i11 << 5) + Integer.numberOfTrailingZeros(i12);
        int i13 = this.size;
        return numberOfTrailingZeros > i13 ? i13 : numberOfTrailingZeros;
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeInBytes() {
        return (this.size + 7) / 8;
    }

    public int hashCode() {
        return (this.size * 31) + Arrays.hashCode(this.bits);
    }

    public boolean isRange(int i9, int i10, boolean z10) {
        if (i10 < i9 || i9 < 0 || i10 > this.size) {
            throw new IllegalArgumentException();
        }
        if (i10 == i9) {
            return true;
        }
        int i11 = i10 - 1;
        int i12 = i9 / 32;
        int i13 = i11 / 32;
        int i14 = i12;
        while (i14 <= i13) {
            int i15 = (2 << (i14 >= i13 ? 31 & i11 : 31)) - (1 << (i14 > i12 ? 0 : i9 & 31));
            int i16 = this.bits[i14] & i15;
            if (!z10) {
                i15 = 0;
            }
            if (i16 != i15) {
                return false;
            }
            i14++;
        }
        return true;
    }

    public void reverse() {
        int[] iArr = new int[this.bits.length];
        int i9 = (this.size - 1) / 32;
        int i10 = i9 + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            long j10 = this.bits[i11];
            long j11 = ((j10 & 1431655765) << 1) | ((j10 >> 1) & 1431655765);
            long j12 = ((j11 & 858993459) << 2) | ((j11 >> 2) & 858993459);
            long j13 = ((j12 & 252645135) << 4) | ((j12 >> 4) & 252645135);
            long j14 = ((j13 & 16711935) << 8) | ((j13 >> 8) & 16711935);
            iArr[i9 - i11] = (int) (((j14 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j14 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i12 = this.size;
        int i13 = i10 << 5;
        if (i12 != i13) {
            int i14 = i13 - i12;
            int i15 = iArr[0] >>> i14;
            for (int i16 = 1; i16 < i10; i16++) {
                int i17 = iArr[i16];
                iArr[i16 - 1] = i15 | (i17 << (32 - i14));
                i15 = i17 >>> i14;
            }
            iArr[i10 - 1] = i15;
        }
        this.bits = iArr;
    }

    public void set(int i9) {
        int[] iArr = this.bits;
        int i10 = i9 / 32;
        iArr[i10] = (1 << (i9 & 31)) | iArr[i10];
    }

    public void setBulk(int i9, int i10) {
        this.bits[i9 / 32] = i10;
    }

    public void setRange(int i9, int i10) {
        if (i10 < i9 || i9 < 0 || i10 > this.size) {
            throw new IllegalArgumentException();
        }
        if (i10 == i9) {
            return;
        }
        int i11 = i10 - 1;
        int i12 = i9 / 32;
        int i13 = i11 / 32;
        int i14 = i12;
        while (i14 <= i13) {
            int i15 = 31;
            int i16 = i14 > i12 ? 0 : i9 & 31;
            if (i14 >= i13) {
                i15 = 31 & i11;
            }
            int i17 = (2 << i15) - (1 << i16);
            int[] iArr = this.bits;
            iArr[i14] = i17 | iArr[i14];
            i14++;
        }
    }

    public void toBytes(int i9, byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = 0;
            for (int i14 = 0; i14 < 8; i14++) {
                if (get(i9)) {
                    i13 |= 1 << (7 - i14);
                }
                i9++;
            }
            bArr[i10 + i12] = (byte) i13;
        }
    }

    public String toString() {
        int i9 = this.size;
        StringBuilder sb2 = new StringBuilder(i9 + (i9 / 8) + 1);
        for (int i10 = 0; i10 < this.size; i10++) {
            if ((i10 & 7) == 0) {
                sb2.append(' ');
            }
            sb2.append(get(i10) ? 'X' : JwtParser.SEPARATOR_CHAR);
        }
        return sb2.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.size != bitArray.size) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i9 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i9 >= iArr.length) {
                return;
            }
            iArr[i9] = iArr[i9] ^ bitArray.bits[i9];
            i9++;
        }
    }

    /* renamed from: clone */
    public BitArray m226clone() {
        return new BitArray((int[]) this.bits.clone(), this.size);
    }

    public BitArray(int i9) {
        this.size = i9;
        this.bits = makeArray(i9);
    }

    BitArray(int[] iArr, int i9) {
        this.bits = iArr;
        this.size = i9;
    }
}
