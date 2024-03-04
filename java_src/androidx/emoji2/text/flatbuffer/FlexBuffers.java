package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import kotlin.UByte;
import kotlin.UShort;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class FlexBuffers {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ReadBuf EMPTY_BB = new ArrayReadWriteBuf(new byte[]{0}, 1);
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* loaded from: classes.dex */
    public static class Blob extends Sized {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final Blob EMPTY = new Blob(FlexBuffers.EMPTY_BB, 1, 1);

        Blob(ReadBuf readBuf, int i9, int i10) {
            super(readBuf, i9, i10);
        }

        public static Blob empty() {
            return EMPTY;
        }

        public ByteBuffer data() {
            ByteBuffer wrap = ByteBuffer.wrap(this.f916bb.data());
            wrap.position(this.end);
            wrap.limit(this.end + size());
            return wrap.asReadOnlyBuffer().slice();
        }

        public byte get(int i9) {
            return this.f916bb.get(this.end + i9);
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int i9 = 0; i9 < size; i9++) {
                bArr[i9] = this.f916bb.get(this.end + i9);
            }
            return bArr;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            return this.f916bb.getString(this.end, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append(Typography.quote);
            sb2.append(this.f916bb.getString(this.end, size()));
            sb2.append(Typography.quote);
            return sb2;
        }
    }

    /* loaded from: classes.dex */
    public static class FlexBufferException extends RuntimeException {
        /* JADX INFO: Access modifiers changed from: package-private */
        public FlexBufferException(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static class Key extends Object {
        private static final Key EMPTY = new Key(FlexBuffers.EMPTY_BB, 0, 0);

        Key(ReadBuf readBuf, int i9, int i10) {
            super(readBuf, i9, i10);
        }

        public static Key empty() {
            return EMPTY;
        }

        int compareTo(byte[] bArr) {
            byte b10;
            byte b11;
            int i9 = this.end;
            int i10 = 0;
            do {
                b10 = this.f916bb.get(i9);
                b11 = bArr[i10];
                if (b10 == 0) {
                    return b10 - b11;
                }
                i9++;
                i10++;
                if (i10 == bArr.length) {
                    return b10 - b11;
                }
            } while (b10 == b11);
            return b10 - b11;
        }

        public boolean equals(java.lang.Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                return key.end == this.end && key.byteWidth == this.byteWidth;
            }
            return false;
        }

        public int hashCode() {
            return this.end ^ this.byteWidth;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append(toString());
            return sb2;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            int i9 = this.end;
            while (this.f916bb.get(i9) != 0) {
                i9++;
            }
            int i10 = this.end;
            return this.f916bb.getString(i10, i9 - i10);
        }
    }

    /* loaded from: classes.dex */
    public static class KeyVector {
        private final TypedVector vec;

        KeyVector(TypedVector typedVector) {
            this.vec = typedVector;
        }

        public Key get(int i9) {
            if (i9 >= size()) {
                return Key.EMPTY;
            }
            TypedVector typedVector = this.vec;
            TypedVector typedVector2 = this.vec;
            ReadBuf readBuf = typedVector2.f916bb;
            return new Key(readBuf, FlexBuffers.indirect(readBuf, typedVector.end + (i9 * typedVector.byteWidth), typedVector2.byteWidth), 1);
        }

        public int size() {
            return this.vec.size();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('[');
            for (int i9 = 0; i9 < this.vec.size(); i9++) {
                this.vec.get(i9).toString(sb2);
                if (i9 != this.vec.size() - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("]");
            return sb2.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class Map extends Vector {
        private static final Map EMPTY_MAP = new Map(FlexBuffers.EMPTY_BB, 1, 1);

        Map(ReadBuf readBuf, int i9, int i10) {
            super(readBuf, i9, i10);
        }

        private int binarySearch(KeyVector keyVector, byte[] bArr) {
            int size = keyVector.size() - 1;
            int i9 = 0;
            while (i9 <= size) {
                int i10 = (i9 + size) >>> 1;
                int compareTo = keyVector.get(i10).compareTo(bArr);
                if (compareTo < 0) {
                    i9 = i10 + 1;
                } else if (compareTo <= 0) {
                    return i10;
                } else {
                    size = i10 - 1;
                }
            }
            return -(i9 + 1);
        }

        public static Map empty() {
            return EMPTY_MAP;
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public KeyVector keys() {
            int i9 = this.end - (this.byteWidth * 3);
            ReadBuf readBuf = this.f916bb;
            int indirect = FlexBuffers.indirect(readBuf, i9, this.byteWidth);
            ReadBuf readBuf2 = this.f916bb;
            int i10 = this.byteWidth;
            return new KeyVector(new TypedVector(readBuf, indirect, FlexBuffers.readInt(readBuf2, i9 + i10, i10), 4));
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append("{ ");
            KeyVector keys = keys();
            int size = size();
            Vector values = values();
            for (int i9 = 0; i9 < size; i9++) {
                sb2.append(Typography.quote);
                sb2.append(keys.get(i9).toString());
                sb2.append("\" : ");
                sb2.append(values.get(i9).toString());
                if (i9 != size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(" }");
            return sb2;
        }

        public Vector values() {
            return new Vector(this.f916bb, this.end, this.byteWidth);
        }

        public Reference get(byte[] bArr) {
            KeyVector keys = keys();
            int size = keys.size();
            int binarySearch = binarySearch(keys, bArr);
            if (binarySearch >= 0 && binarySearch < size) {
                return get(binarySearch);
            }
            return Reference.NULL_REFERENCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Object {

        /* renamed from: bb  reason: collision with root package name */
        ReadBuf f916bb;
        int byteWidth;
        int end;

        Object(ReadBuf readBuf, int i9, int i10) {
            this.f916bb = readBuf;
            this.end = i9;
            this.byteWidth = i10;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        public abstract StringBuilder toString(StringBuilder sb2);
    }

    /* loaded from: classes.dex */
    public static class Reference {
        private static final Reference NULL_REFERENCE = new Reference(FlexBuffers.EMPTY_BB, 0, 1, 0);

        /* renamed from: bb  reason: collision with root package name */
        private ReadBuf f917bb;
        private int byteWidth;
        private int end;
        private int parentWidth;
        private int type;

        Reference(ReadBuf readBuf, int i9, int i10, int i11) {
            this(readBuf, i9, i10, 1 << (i11 & 3), i11 >> 2);
        }

        public Blob asBlob() {
            if (!isBlob() && !isString()) {
                return Blob.empty();
            }
            ReadBuf readBuf = this.f917bb;
            return new Blob(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
        }

        public boolean asBoolean() {
            return isBoolean() ? this.f917bb.get(this.end) != 0 : asUInt() != 0;
        }

        public double asFloat() {
            int i9 = this.type;
            if (i9 == 3) {
                return FlexBuffers.readDouble(this.f917bb, this.end, this.parentWidth);
            }
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 5) {
                        return Double.parseDouble(asString());
                    }
                    if (i9 == 6) {
                        ReadBuf readBuf = this.f917bb;
                        return FlexBuffers.readInt(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 == 7) {
                        ReadBuf readBuf2 = this.f917bb;
                        return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 == 8) {
                        ReadBuf readBuf3 = this.f917bb;
                        return FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 == 10) {
                        return asVector().size();
                    } else {
                        if (i9 != 26) {
                            return 0.0d;
                        }
                    }
                }
                return FlexBuffers.readUInt(this.f917bb, this.end, this.parentWidth);
            }
            return FlexBuffers.readInt(this.f917bb, this.end, this.parentWidth);
        }

        public int asInt() {
            long readUInt;
            int i9 = this.type;
            if (i9 == 1) {
                return FlexBuffers.readInt(this.f917bb, this.end, this.parentWidth);
            }
            if (i9 == 2) {
                readUInt = FlexBuffers.readUInt(this.f917bb, this.end, this.parentWidth);
            } else if (i9 == 3) {
                return (int) FlexBuffers.readDouble(this.f917bb, this.end, this.parentWidth);
            } else {
                if (i9 == 5) {
                    return Integer.parseInt(asString());
                }
                if (i9 == 6) {
                    ReadBuf readBuf = this.f917bb;
                    return FlexBuffers.readInt(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                } else if (i9 != 7) {
                    if (i9 == 8) {
                        ReadBuf readBuf2 = this.f917bb;
                        return (int) FlexBuffers.readDouble(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 != 10) {
                        if (i9 != 26) {
                            return 0;
                        }
                        return FlexBuffers.readInt(this.f917bb, this.end, this.parentWidth);
                    } else {
                        return asVector().size();
                    }
                } else {
                    ReadBuf readBuf3 = this.f917bb;
                    readUInt = FlexBuffers.readUInt(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.parentWidth);
                }
            }
            return (int) readUInt;
        }

        public Key asKey() {
            if (isKey()) {
                ReadBuf readBuf = this.f917bb;
                return new Key(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Key.empty();
        }

        public long asLong() {
            int i9 = this.type;
            if (i9 == 1) {
                return FlexBuffers.readLong(this.f917bb, this.end, this.parentWidth);
            }
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 5) {
                        try {
                            return Long.parseLong(asString());
                        } catch (NumberFormatException unused) {
                            return 0L;
                        }
                    } else if (i9 == 6) {
                        ReadBuf readBuf = this.f917bb;
                        return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 == 7) {
                        ReadBuf readBuf2 = this.f917bb;
                        return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.parentWidth);
                    } else if (i9 == 8) {
                        ReadBuf readBuf3 = this.f917bb;
                        return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
                    } else if (i9 != 10) {
                        if (i9 != 26) {
                            return 0L;
                        }
                        return FlexBuffers.readInt(this.f917bb, this.end, this.parentWidth);
                    } else {
                        return asVector().size();
                    }
                }
                return (long) FlexBuffers.readDouble(this.f917bb, this.end, this.parentWidth);
            }
            return FlexBuffers.readUInt(this.f917bb, this.end, this.parentWidth);
        }

        public Map asMap() {
            if (isMap()) {
                ReadBuf readBuf = this.f917bb;
                return new Map(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Map.empty();
        }

        public String asString() {
            if (isString()) {
                int indirect = FlexBuffers.indirect(this.f917bb, this.end, this.parentWidth);
                ReadBuf readBuf = this.f917bb;
                int i9 = this.byteWidth;
                return this.f917bb.getString(indirect, (int) FlexBuffers.readUInt(readBuf, indirect - i9, i9));
            } else if (isKey()) {
                int indirect2 = FlexBuffers.indirect(this.f917bb, this.end, this.byteWidth);
                int i10 = indirect2;
                while (this.f917bb.get(i10) != 0) {
                    i10++;
                }
                return this.f917bb.getString(indirect2, i10 - indirect2);
            } else {
                return "";
            }
        }

        public long asUInt() {
            int i9 = this.type;
            if (i9 == 2) {
                return FlexBuffers.readUInt(this.f917bb, this.end, this.parentWidth);
            }
            if (i9 != 1) {
                if (i9 != 3) {
                    if (i9 != 10) {
                        if (i9 != 26) {
                            if (i9 != 5) {
                                if (i9 == 6) {
                                    ReadBuf readBuf = this.f917bb;
                                    return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                                } else if (i9 == 7) {
                                    ReadBuf readBuf2 = this.f917bb;
                                    return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                                } else if (i9 != 8) {
                                    return 0L;
                                } else {
                                    ReadBuf readBuf3 = this.f917bb;
                                    return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.parentWidth);
                                }
                            }
                            return Long.parseLong(asString());
                        }
                        return FlexBuffers.readInt(this.f917bb, this.end, this.parentWidth);
                    }
                    return asVector().size();
                }
                return (long) FlexBuffers.readDouble(this.f917bb, this.end, this.parentWidth);
            }
            return FlexBuffers.readLong(this.f917bb, this.end, this.parentWidth);
        }

        public Vector asVector() {
            if (isVector()) {
                ReadBuf readBuf = this.f917bb;
                return new Vector(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            int i9 = this.type;
            if (i9 == 15) {
                ReadBuf readBuf2 = this.f917bb;
                return new TypedVector(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth, 4);
            } else if (FlexBuffers.isTypedVector(i9)) {
                ReadBuf readBuf3 = this.f917bb;
                return new TypedVector(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth, FlexBuffers.toTypedVectorElementType(this.type));
            } else {
                return Vector.empty();
            }
        }

        public int getType() {
            return this.type;
        }

        public boolean isBlob() {
            return this.type == 25;
        }

        public boolean isBoolean() {
            return this.type == 26;
        }

        public boolean isFloat() {
            int i9 = this.type;
            return i9 == 3 || i9 == 8;
        }

        public boolean isInt() {
            int i9 = this.type;
            return i9 == 1 || i9 == 6;
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isKey() {
            return this.type == 4;
        }

        public boolean isMap() {
            return this.type == 9;
        }

        public boolean isNull() {
            return this.type == 0;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isString() {
            return this.type == 5;
        }

        public boolean isTypedVector() {
            return FlexBuffers.isTypedVector(this.type);
        }

        public boolean isUInt() {
            int i9 = this.type;
            return i9 == 2 || i9 == 7;
        }

        public boolean isVector() {
            int i9 = this.type;
            return i9 == 10 || i9 == 9;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        Reference(ReadBuf readBuf, int i9, int i10, int i11, int i12) {
            this.f917bb = readBuf;
            this.end = i9;
            this.parentWidth = i10;
            this.byteWidth = i11;
            this.type = i12;
        }

        StringBuilder toString(StringBuilder sb2) {
            int i9 = this.type;
            if (i9 != 36) {
                switch (i9) {
                    case 0:
                        sb2.append("null");
                        return sb2;
                    case 1:
                    case 6:
                        sb2.append(asLong());
                        return sb2;
                    case 2:
                    case 7:
                        sb2.append(asUInt());
                        return sb2;
                    case 3:
                    case 8:
                        sb2.append(asFloat());
                        return sb2;
                    case 4:
                        Key asKey = asKey();
                        sb2.append(Typography.quote);
                        StringBuilder key = asKey.toString(sb2);
                        key.append(Typography.quote);
                        return key;
                    case 5:
                        sb2.append(Typography.quote);
                        sb2.append(asString());
                        sb2.append(Typography.quote);
                        return sb2;
                    case 9:
                        return asMap().toString(sb2);
                    case 10:
                        return asVector().toString(sb2);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.type);
                    case 25:
                        return asBlob().toString(sb2);
                    case 26:
                        sb2.append(asBoolean());
                        return sb2;
                    default:
                        return sb2;
                }
            }
            sb2.append(asVector());
            return sb2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class Sized extends Object {
        protected final int size;

        Sized(ReadBuf readBuf, int i9, int i10) {
            super(readBuf, i9, i10);
            this.size = FlexBuffers.readInt(this.f916bb, i9 - i10, i10);
        }

        public int size() {
            return this.size;
        }
    }

    /* loaded from: classes.dex */
    public static class TypedVector extends Vector {
        private static final TypedVector EMPTY_VECTOR = new TypedVector(FlexBuffers.EMPTY_BB, 1, 1, 1);
        private final int elemType;

        TypedVector(ReadBuf readBuf, int i9, int i10, int i11) {
            super(readBuf, i9, i10);
            this.elemType = i11;
        }

        public static TypedVector empty() {
            return EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int i9) {
            if (i9 >= size()) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.f916bb, this.end + (i9 * this.byteWidth), this.byteWidth, 1, this.elemType);
        }

        public int getElemType() {
            return this.elemType;
        }

        public boolean isEmptyVector() {
            return this == EMPTY_VECTOR;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Unsigned {
        Unsigned() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int byteToUnsignedInt(byte b10) {
            return b10 & UByte.MAX_VALUE;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static long intToUnsignedLong(int i9) {
            return i9 & 4294967295L;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int shortToUnsignedInt(short s10) {
            return s10 & UShort.MAX_VALUE;
        }
    }

    /* loaded from: classes.dex */
    public static class Vector extends Sized {
        private static final Vector EMPTY_VECTOR = new Vector(FlexBuffers.EMPTY_BB, 1, 1);

        Vector(ReadBuf readBuf, int i9, int i10) {
            super(readBuf, i9, i10);
        }

        public static Vector empty() {
            return EMPTY_VECTOR;
        }

        public Reference get(int i9) {
            long size = size();
            long j10 = i9;
            if (j10 >= size) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.f916bb, this.end + (i9 * this.byteWidth), this.byteWidth, Unsigned.byteToUnsignedInt(this.f916bb.get((int) (this.end + (size * this.byteWidth) + j10))));
        }

        public boolean isEmpty() {
            return this == EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb2) {
            sb2.append("[ ");
            int size = size();
            for (int i9 = 0; i9 < size; i9++) {
                get(i9).toString(sb2);
                if (i9 != size - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append(" ]");
            return sb2;
        }
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indirect(ReadBuf readBuf, int i9, int i10) {
        return (int) (i9 - readUInt(readBuf, i9, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTypeInline(int i9) {
        return i9 <= 3 || i9 == 26;
    }

    static boolean isTypedVector(int i9) {
        return (i9 >= 11 && i9 <= 15) || i9 == 36;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTypedVectorElementType(int i9) {
        return (i9 >= 1 && i9 <= 4) || i9 == 26;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double readDouble(ReadBuf readBuf, int i9, int i10) {
        if (i10 != 4) {
            if (i10 != 8) {
                return -1.0d;
            }
            return readBuf.getDouble(i9);
        }
        return readBuf.getFloat(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readInt(ReadBuf readBuf, int i9, int i10) {
        return (int) readLong(readBuf, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readLong(ReadBuf readBuf, int i9, int i10) {
        int i11;
        if (i10 == 1) {
            i11 = readBuf.get(i9);
        } else if (i10 == 2) {
            i11 = readBuf.getShort(i9);
        } else if (i10 != 4) {
            if (i10 != 8) {
                return -1L;
            }
            return readBuf.getLong(i9);
        } else {
            i11 = readBuf.getInt(i9);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readUInt(ReadBuf readBuf, int i9, int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 != 8) {
                        return -1L;
                    }
                    return readBuf.getLong(i9);
                }
                return Unsigned.intToUnsignedLong(readBuf.getInt(i9));
            }
            return Unsigned.shortToUnsignedInt(readBuf.getShort(i9));
        }
        return Unsigned.byteToUnsignedInt(readBuf.get(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int toTypedVector(int i9, int i10) {
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return 0;
                    }
                    return (i9 - 1) + 22;
                }
                return (i9 - 1) + 19;
            }
            return (i9 - 1) + 16;
        }
        return (i9 - 1) + 11;
    }

    static int toTypedVectorElementType(int i9) {
        return (i9 - 11) + 1;
    }

    public static Reference getRoot(ReadBuf readBuf) {
        int limit = readBuf.limit() - 1;
        byte b10 = readBuf.get(limit);
        int i9 = limit - 1;
        return new Reference(readBuf, i9 - b10, b10, Unsigned.byteToUnsignedInt(readBuf.get(i9)));
    }
}
