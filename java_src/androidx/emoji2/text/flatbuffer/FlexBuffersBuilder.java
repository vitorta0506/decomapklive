package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.FlexBuffers;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
/* loaded from: classes.dex */
public class FlexBuffersBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BUILDER_FLAG_NONE = 0;
    public static final int BUILDER_FLAG_SHARE_ALL = 7;
    public static final int BUILDER_FLAG_SHARE_KEYS = 1;
    public static final int BUILDER_FLAG_SHARE_KEYS_AND_STRINGS = 3;
    public static final int BUILDER_FLAG_SHARE_KEY_VECTORS = 4;
    public static final int BUILDER_FLAG_SHARE_STRINGS = 2;
    private static final int WIDTH_16 = 1;
    private static final int WIDTH_32 = 2;
    private static final int WIDTH_64 = 3;
    private static final int WIDTH_8 = 0;

    /* renamed from: bb  reason: collision with root package name */
    private final ReadWriteBuf f918bb;
    private boolean finished;
    private final int flags;
    private Comparator<Value> keyComparator;
    private final HashMap<String, Integer> keyPool;
    private final ArrayList<Value> stack;
    private final HashMap<String, Integer> stringPool;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Value {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final double dValue;
        long iValue;
        int key;
        final int minBitWidth;
        final int type;

        Value(int i9, int i10, int i11, long j10) {
            this.key = i9;
            this.type = i10;
            this.minBitWidth = i11;
            this.iValue = j10;
            this.dValue = Double.MIN_VALUE;
        }

        static Value blob(int i9, int i10, int i11, int i12) {
            return new Value(i9, i11, i12, i10);
        }

        static Value bool(int i9, boolean z10) {
            return new Value(i9, 26, 0, z10 ? 1L : 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int elemWidth(int i9, int i10) {
            return elemWidth(this.type, this.minBitWidth, this.iValue, i9, i10);
        }

        static Value float32(int i9, float f10) {
            return new Value(i9, 3, 2, f10);
        }

        static Value float64(int i9, double d10) {
            return new Value(i9, 3, 3, d10);
        }

        static Value int16(int i9, int i10) {
            return new Value(i9, 1, 1, i10);
        }

        static Value int32(int i9, int i10) {
            return new Value(i9, 1, 2, i10);
        }

        static Value int64(int i9, long j10) {
            return new Value(i9, 1, 3, j10);
        }

        static Value int8(int i9, int i10) {
            return new Value(i9, 1, 0, i10);
        }

        private static byte packedType(int i9, int i10) {
            return (byte) (i9 | (i10 << 2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int paddingBytes(int i9, int i10) {
            return ((~i9) + 1) & (i10 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType() {
            return storedPackedType(0);
        }

        private int storedWidth(int i9) {
            if (FlexBuffers.isTypeInline(this.type)) {
                return Math.max(this.minBitWidth, i9);
            }
            return this.minBitWidth;
        }

        static Value uInt16(int i9, int i10) {
            return new Value(i9, 2, 1, i10);
        }

        static Value uInt32(int i9, int i10) {
            return new Value(i9, 2, 2, i10);
        }

        static Value uInt64(int i9, long j10) {
            return new Value(i9, 2, 3, j10);
        }

        static Value uInt8(int i9, int i10) {
            return new Value(i9, 2, 0, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int elemWidth(int i9, int i10, long j10, int i11, int i12) {
            if (FlexBuffers.isTypeInline(i9)) {
                return i10;
            }
            for (int i13 = 1; i13 <= 32; i13 *= 2) {
                int widthUInBits = FlexBuffersBuilder.widthUInBits((int) (((paddingBytes(i11, i13) + i11) + (i12 * i13)) - j10));
                if ((1 << widthUInBits) == i13) {
                    return widthUInBits;
                }
            }
            return 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte storedPackedType(int i9) {
            return packedType(storedWidth(i9), this.type);
        }

        Value(int i9, int i10, int i11, double d10) {
            this.key = i9;
            this.type = i10;
            this.minBitWidth = i11;
            this.dValue = d10;
            this.iValue = Long.MIN_VALUE;
        }
    }

    public FlexBuffersBuilder(int i9) {
        this(new ArrayReadWriteBuf(i9), 1);
    }

    private int align(int i9) {
        int i10 = 1 << i9;
        int paddingBytes = Value.paddingBytes(this.f918bb.writePosition(), i10);
        while (true) {
            int i11 = paddingBytes - 1;
            if (paddingBytes == 0) {
                return i10;
            }
            this.f918bb.put((byte) 0);
            paddingBytes = i11;
        }
    }

    private Value createKeyVector(int i9, int i10) {
        long j10 = i10;
        int max = Math.max(0, widthUInBits(j10));
        int i11 = i9;
        while (i11 < this.stack.size()) {
            i11++;
            max = Math.max(max, Value.elemWidth(4, 0, this.stack.get(i11).key, this.f918bb.writePosition(), i11));
        }
        int align = align(max);
        writeInt(j10, align);
        int writePosition = this.f918bb.writePosition();
        while (i9 < this.stack.size()) {
            int i12 = this.stack.get(i9).key;
            writeOffset(this.stack.get(i9).key, align);
            i9++;
        }
        return new Value(-1, FlexBuffers.toTypedVector(4, 0), max, writePosition);
    }

    private Value createVector(int i9, int i10, int i11, boolean z10, boolean z11, Value value) {
        int i12;
        int i13;
        int i14 = i11;
        long j10 = i14;
        int max = Math.max(0, widthUInBits(j10));
        if (value != null) {
            max = Math.max(max, value.elemWidth(this.f918bb.writePosition(), 0));
            i12 = 3;
        } else {
            i12 = 1;
        }
        int i15 = 4;
        int i16 = max;
        for (int i17 = i10; i17 < this.stack.size(); i17++) {
            i16 = Math.max(i16, this.stack.get(i17).elemWidth(this.f918bb.writePosition(), i17 + i12));
            if (z10 && i17 == i10) {
                i15 = this.stack.get(i17).type;
                if (!FlexBuffers.isTypedVectorElementType(i15)) {
                    throw new FlexBuffers.FlexBufferException("TypedVector does not support this element type");
                }
            }
        }
        int i18 = i10;
        int align = align(i16);
        if (value != null) {
            writeOffset(value.iValue, align);
            writeInt(1 << value.minBitWidth, align);
        }
        if (!z11) {
            writeInt(j10, align);
        }
        int writePosition = this.f918bb.writePosition();
        for (int i19 = i18; i19 < this.stack.size(); i19++) {
            writeAny(this.stack.get(i19), align);
        }
        if (!z10) {
            while (i18 < this.stack.size()) {
                this.f918bb.put(this.stack.get(i18).storedPackedType(i16));
                i18++;
            }
        }
        if (value != null) {
            i13 = 9;
        } else if (z10) {
            if (!z11) {
                i14 = 0;
            }
            i13 = FlexBuffers.toTypedVector(i15, i14);
        } else {
            i13 = 10;
        }
        return new Value(i9, i13, i16, writePosition);
    }

    private int putKey(String str) {
        if (str == null) {
            return -1;
        }
        int writePosition = this.f918bb.writePosition();
        if ((this.flags & 1) != 0) {
            Integer num = this.keyPool.get(str);
            if (num == null) {
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                this.f918bb.put(bytes, 0, bytes.length);
                this.f918bb.put((byte) 0);
                this.keyPool.put(str, Integer.valueOf(writePosition));
                return writePosition;
            }
            return num.intValue();
        }
        byte[] bytes2 = str.getBytes(StandardCharsets.UTF_8);
        this.f918bb.put(bytes2, 0, bytes2.length);
        this.f918bb.put((byte) 0);
        this.keyPool.put(str, Integer.valueOf(writePosition));
        return writePosition;
    }

    static int widthUInBits(long j10) {
        if (j10 <= FlexBuffers.Unsigned.byteToUnsignedInt((byte) -1)) {
            return 0;
        }
        if (j10 <= FlexBuffers.Unsigned.shortToUnsignedInt((short) -1)) {
            return 1;
        }
        return j10 <= FlexBuffers.Unsigned.intToUnsignedLong(-1) ? 2 : 3;
    }

    private void writeAny(Value value, int i9) {
        int i10 = value.type;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                writeDouble(value.dValue, i9);
                return;
            } else if (i10 != 26) {
                writeOffset(value.iValue, i9);
                return;
            }
        }
        writeInt(value.iValue, i9);
    }

    private Value writeBlob(int i9, byte[] bArr, int i10, boolean z10) {
        int widthUInBits = widthUInBits(bArr.length);
        writeInt(bArr.length, align(widthUInBits));
        int writePosition = this.f918bb.writePosition();
        this.f918bb.put(bArr, 0, bArr.length);
        if (z10) {
            this.f918bb.put((byte) 0);
        }
        return Value.blob(i9, writePosition, i10, widthUInBits);
    }

    private void writeDouble(double d10, int i9) {
        if (i9 == 4) {
            this.f918bb.putFloat((float) d10);
        } else if (i9 == 8) {
            this.f918bb.putDouble(d10);
        }
    }

    private void writeInt(long j10, int i9) {
        if (i9 == 1) {
            this.f918bb.put((byte) j10);
        } else if (i9 == 2) {
            this.f918bb.putShort((short) j10);
        } else if (i9 == 4) {
            this.f918bb.putInt((int) j10);
        } else if (i9 != 8) {
        } else {
            this.f918bb.putLong(j10);
        }
    }

    private void writeOffset(long j10, int i9) {
        writeInt((int) (this.f918bb.writePosition() - j10), i9);
    }

    private Value writeString(int i9, String str) {
        return writeBlob(i9, str.getBytes(StandardCharsets.UTF_8), 5, true);
    }

    public int endMap(String str, int i9) {
        int putKey = putKey(str);
        ArrayList<Value> arrayList = this.stack;
        Collections.sort(arrayList.subList(i9, arrayList.size()), this.keyComparator);
        Value createVector = createVector(putKey, i9, this.stack.size() - i9, false, false, createKeyVector(i9, this.stack.size() - i9));
        while (this.stack.size() > i9) {
            ArrayList<Value> arrayList2 = this.stack;
            arrayList2.remove(arrayList2.size() - 1);
        }
        this.stack.add(createVector);
        return (int) createVector.iValue;
    }

    public int endVector(String str, int i9, boolean z10, boolean z11) {
        Value createVector = createVector(putKey(str), i9, this.stack.size() - i9, z10, z11, null);
        while (this.stack.size() > i9) {
            ArrayList<Value> arrayList = this.stack;
            arrayList.remove(arrayList.size() - 1);
        }
        this.stack.add(createVector);
        return (int) createVector.iValue;
    }

    public ByteBuffer finish() {
        int align = align(this.stack.get(0).elemWidth(this.f918bb.writePosition(), 0));
        writeAny(this.stack.get(0), align);
        this.f918bb.put(this.stack.get(0).storedPackedType());
        this.f918bb.put((byte) align);
        this.finished = true;
        return ByteBuffer.wrap(this.f918bb.data(), 0, this.f918bb.writePosition());
    }

    public ReadWriteBuf getBuffer() {
        return this.f918bb;
    }

    public int putBlob(byte[] bArr) {
        return putBlob(null, bArr);
    }

    public void putBoolean(boolean z10) {
        putBoolean(null, z10);
    }

    public void putFloat(float f10) {
        putFloat((String) null, f10);
    }

    public void putInt(int i9) {
        putInt((String) null, i9);
    }

    public int putString(String str) {
        return putString(null, str);
    }

    public void putUInt(int i9) {
        putUInt(null, i9);
    }

    public void putUInt64(BigInteger bigInteger) {
        putUInt64(null, bigInteger.longValue());
    }

    public int startMap() {
        return this.stack.size();
    }

    public int startVector() {
        return this.stack.size();
    }

    public FlexBuffersBuilder() {
        this(256);
    }

    private void putUInt64(String str, long j10) {
        this.stack.add(Value.uInt64(putKey(str), j10));
    }

    public int putBlob(String str, byte[] bArr) {
        Value writeBlob = writeBlob(putKey(str), bArr, 25, false);
        this.stack.add(writeBlob);
        return (int) writeBlob.iValue;
    }

    public void putBoolean(String str, boolean z10) {
        this.stack.add(Value.bool(putKey(str), z10));
    }

    public void putFloat(String str, float f10) {
        this.stack.add(Value.float32(putKey(str), f10));
    }

    public void putInt(String str, int i9) {
        putInt(str, i9);
    }

    public int putString(String str, String str2) {
        long j10;
        int putKey = putKey(str);
        if ((this.flags & 2) != 0) {
            Integer num = this.stringPool.get(str2);
            if (num == null) {
                Value writeString = writeString(putKey, str2);
                this.stringPool.put(str2, Integer.valueOf((int) writeString.iValue));
                this.stack.add(writeString);
                j10 = writeString.iValue;
            } else {
                this.stack.add(Value.blob(putKey, num.intValue(), 5, widthUInBits(str2.length())));
                return num.intValue();
            }
        } else {
            Value writeString2 = writeString(putKey, str2);
            this.stack.add(writeString2);
            j10 = writeString2.iValue;
        }
        return (int) j10;
    }

    public void putUInt(long j10) {
        putUInt(null, j10);
    }

    @Deprecated
    public FlexBuffersBuilder(ByteBuffer byteBuffer, int i9) {
        this(new ArrayReadWriteBuf(byteBuffer.array()), i9);
    }

    private void putUInt(String str, long j10) {
        Value uInt64;
        int putKey = putKey(str);
        int widthUInBits = widthUInBits(j10);
        if (widthUInBits == 0) {
            uInt64 = Value.uInt8(putKey, (int) j10);
        } else if (widthUInBits == 1) {
            uInt64 = Value.uInt16(putKey, (int) j10);
        } else if (widthUInBits == 2) {
            uInt64 = Value.uInt32(putKey, (int) j10);
        } else {
            uInt64 = Value.uInt64(putKey, j10);
        }
        this.stack.add(uInt64);
    }

    public void putFloat(double d10) {
        putFloat((String) null, d10);
    }

    public void putInt(String str, long j10) {
        int putKey = putKey(str);
        if (-128 <= j10 && j10 <= 127) {
            this.stack.add(Value.int8(putKey, (int) j10));
        } else if (-32768 <= j10 && j10 <= 32767) {
            this.stack.add(Value.int16(putKey, (int) j10));
        } else if (-2147483648L <= j10 && j10 <= 2147483647L) {
            this.stack.add(Value.int32(putKey, (int) j10));
        } else {
            this.stack.add(Value.int64(putKey, j10));
        }
    }

    public FlexBuffersBuilder(ReadWriteBuf readWriteBuf, int i9) {
        this.stack = new ArrayList<>();
        this.keyPool = new HashMap<>();
        this.stringPool = new HashMap<>();
        this.finished = false;
        this.keyComparator = new Comparator<Value>() { // from class: androidx.emoji2.text.flatbuffer.FlexBuffersBuilder.1
            @Override // java.util.Comparator
            public int compare(Value value, Value value2) {
                byte b10;
                byte b11;
                int i10 = value.key;
                int i11 = value2.key;
                do {
                    b10 = FlexBuffersBuilder.this.f918bb.get(i10);
                    b11 = FlexBuffersBuilder.this.f918bb.get(i11);
                    if (b10 == 0) {
                        return b10 - b11;
                    }
                    i10++;
                    i11++;
                } while (b10 == b11);
                return b10 - b11;
            }
        };
        this.f918bb = readWriteBuf;
        this.flags = i9;
    }

    public void putFloat(String str, double d10) {
        this.stack.add(Value.float64(putKey(str), d10));
    }

    public void putInt(long j10) {
        putInt((String) null, j10);
    }

    public FlexBuffersBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, 1);
    }
}
