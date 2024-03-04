package androidx.renderscript;

import android.util.Log;
import java.util.BitSet;
import kotlin.UByte;
/* loaded from: classes.dex */
public class FieldPacker {
    private BitSet mAlignment;
    private byte[] mData;
    private int mLen;
    private int mPos;

    public FieldPacker(int i9) {
        this.mPos = 0;
        this.mLen = i9;
        this.mData = new byte[i9];
        this.mAlignment = new BitSet();
    }

    private void addSafely(Object obj) {
        boolean z10;
        int i9 = this.mPos;
        do {
            z10 = false;
            try {
                addToPack(this, obj);
                continue;
            } catch (ArrayIndexOutOfBoundsException unused) {
                this.mPos = i9;
                resize(this.mLen * 2);
                z10 = true;
                continue;
            }
        } while (z10);
    }

    private static void addToPack(FieldPacker fieldPacker, Object obj) {
        if (obj instanceof Boolean) {
            fieldPacker.addBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            fieldPacker.addI8(((Byte) obj).byteValue());
        } else if (obj instanceof Short) {
            fieldPacker.addI16(((Short) obj).shortValue());
        } else if (obj instanceof Integer) {
            fieldPacker.addI32(((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            fieldPacker.addI64(((Long) obj).longValue());
        } else if (obj instanceof Float) {
            fieldPacker.addF32(((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            fieldPacker.addF64(((Double) obj).doubleValue());
        } else if (obj instanceof Byte2) {
            fieldPacker.addI8((Byte2) obj);
        } else if (obj instanceof Byte3) {
            fieldPacker.addI8((Byte3) obj);
        } else if (obj instanceof Byte4) {
            fieldPacker.addI8((Byte4) obj);
        } else if (obj instanceof Short2) {
            fieldPacker.addI16((Short2) obj);
        } else if (obj instanceof Short3) {
            fieldPacker.addI16((Short3) obj);
        } else if (obj instanceof Short4) {
            fieldPacker.addI16((Short4) obj);
        } else if (obj instanceof Int2) {
            fieldPacker.addI32((Int2) obj);
        } else if (obj instanceof Int3) {
            fieldPacker.addI32((Int3) obj);
        } else if (obj instanceof Int4) {
            fieldPacker.addI32((Int4) obj);
        } else if (obj instanceof Long2) {
            fieldPacker.addI64((Long2) obj);
        } else if (obj instanceof Long3) {
            fieldPacker.addI64((Long3) obj);
        } else if (obj instanceof Long4) {
            fieldPacker.addI64((Long4) obj);
        } else if (obj instanceof Float2) {
            fieldPacker.addF32((Float2) obj);
        } else if (obj instanceof Float3) {
            fieldPacker.addF32((Float3) obj);
        } else if (obj instanceof Float4) {
            fieldPacker.addF32((Float4) obj);
        } else if (obj instanceof Double2) {
            fieldPacker.addF64((Double2) obj);
        } else if (obj instanceof Double3) {
            fieldPacker.addF64((Double3) obj);
        } else if (obj instanceof Double4) {
            fieldPacker.addF64((Double4) obj);
        } else if (obj instanceof Matrix2f) {
            fieldPacker.addMatrix((Matrix2f) obj);
        } else if (obj instanceof Matrix3f) {
            fieldPacker.addMatrix((Matrix3f) obj);
        } else if (obj instanceof Matrix4f) {
            fieldPacker.addMatrix((Matrix4f) obj);
        } else if (obj instanceof BaseObj) {
            fieldPacker.addObj((BaseObj) obj);
        }
    }

    static FieldPacker createFieldPack(Object[] objArr) {
        int i9 = 0;
        for (Object obj : objArr) {
            i9 += getPackedSize(obj);
        }
        FieldPacker fieldPacker = new FieldPacker(i9);
        for (Object obj2 : objArr) {
            addToPack(fieldPacker, obj2);
        }
        return fieldPacker;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FieldPacker createFromArray(Object[] objArr) {
        FieldPacker fieldPacker = new FieldPacker(RenderScript.sPointerSize * 8);
        for (Object obj : objArr) {
            fieldPacker.addSafely(obj);
        }
        fieldPacker.resize(fieldPacker.mPos);
        return fieldPacker;
    }

    private static int getPackedSize(Object obj) {
        if ((obj instanceof Boolean) || (obj instanceof Byte)) {
            return 1;
        }
        if (obj instanceof Short) {
            return 2;
        }
        if (obj instanceof Integer) {
            return 4;
        }
        if (obj instanceof Long) {
            return 8;
        }
        if (obj instanceof Float) {
            return 4;
        }
        if (obj instanceof Double) {
            return 8;
        }
        if (obj instanceof Byte2) {
            return 2;
        }
        if (obj instanceof Byte3) {
            return 3;
        }
        if ((obj instanceof Byte4) || (obj instanceof Short2)) {
            return 4;
        }
        if (obj instanceof Short3) {
            return 6;
        }
        if ((obj instanceof Short4) || (obj instanceof Int2)) {
            return 8;
        }
        if (obj instanceof Int3) {
            return 12;
        }
        if ((obj instanceof Int4) || (obj instanceof Long2)) {
            return 16;
        }
        if (obj instanceof Long3) {
            return 24;
        }
        if (obj instanceof Long4) {
            return 32;
        }
        if (obj instanceof Float2) {
            return 8;
        }
        if (obj instanceof Float3) {
            return 12;
        }
        if ((obj instanceof Float4) || (obj instanceof Double2)) {
            return 16;
        }
        if (obj instanceof Double3) {
            return 24;
        }
        if (obj instanceof Double4) {
            return 32;
        }
        if (obj instanceof Matrix2f) {
            return 16;
        }
        if (obj instanceof Matrix3f) {
            return 36;
        }
        if (obj instanceof Matrix4f) {
            return 64;
        }
        if (obj instanceof BaseObj) {
            return RenderScript.sPointerSize == 8 ? 32 : 4;
        }
        return 0;
    }

    private boolean resize(int i9) {
        if (i9 == this.mLen) {
            return false;
        }
        byte[] bArr = new byte[i9];
        System.arraycopy(this.mData, 0, bArr, 0, this.mPos);
        this.mData = bArr;
        this.mLen = i9;
        return true;
    }

    public void addBoolean(boolean z10) {
        addI8(z10 ? (byte) 1 : (byte) 0);
    }

    public void addF32(float f10) {
        addI32(Float.floatToRawIntBits(f10));
    }

    public void addF64(double d10) {
        addI64(Double.doubleToRawLongBits(d10));
    }

    public void addI16(short s10) {
        align(2);
        byte[] bArr = this.mData;
        int i9 = this.mPos;
        int i10 = i9 + 1;
        this.mPos = i10;
        bArr[i9] = (byte) (s10 & 255);
        this.mPos = i10 + 1;
        bArr[i10] = (byte) (s10 >> 8);
    }

    public void addI32(int i9) {
        align(4);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        int i11 = i10 + 1;
        this.mPos = i11;
        bArr[i10] = (byte) (i9 & 255);
        int i12 = i11 + 1;
        this.mPos = i12;
        bArr[i11] = (byte) ((i9 >> 8) & 255);
        int i13 = i12 + 1;
        this.mPos = i13;
        bArr[i12] = (byte) ((i9 >> 16) & 255);
        this.mPos = i13 + 1;
        bArr[i13] = (byte) ((i9 >> 24) & 255);
    }

    public void addI64(long j10) {
        align(8);
        byte[] bArr = this.mData;
        int i9 = this.mPos;
        int i10 = i9 + 1;
        this.mPos = i10;
        bArr[i9] = (byte) (j10 & 255);
        int i11 = i10 + 1;
        this.mPos = i11;
        bArr[i10] = (byte) ((j10 >> 8) & 255);
        int i12 = i11 + 1;
        this.mPos = i12;
        bArr[i11] = (byte) ((j10 >> 16) & 255);
        int i13 = i12 + 1;
        this.mPos = i13;
        bArr[i12] = (byte) ((j10 >> 24) & 255);
        int i14 = i13 + 1;
        this.mPos = i14;
        bArr[i13] = (byte) ((j10 >> 32) & 255);
        int i15 = i14 + 1;
        this.mPos = i15;
        bArr[i14] = (byte) ((j10 >> 40) & 255);
        int i16 = i15 + 1;
        this.mPos = i16;
        bArr[i15] = (byte) ((j10 >> 48) & 255);
        this.mPos = i16 + 1;
        bArr[i16] = (byte) ((j10 >> 56) & 255);
    }

    public void addI8(byte b10) {
        byte[] bArr = this.mData;
        int i9 = this.mPos;
        this.mPos = i9 + 1;
        bArr[i9] = b10;
    }

    public void addMatrix(Matrix4f matrix4f) {
        int i9 = 0;
        while (true) {
            float[] fArr = matrix4f.mMat;
            if (i9 >= fArr.length) {
                return;
            }
            addF32(fArr[i9]);
            i9++;
        }
    }

    public void addObj(BaseObj baseObj) {
        if (baseObj != null) {
            if (RenderScript.sPointerSize == 8) {
                addI64(baseObj.getID(null));
                addI64(0L);
                addI64(0L);
                addI64(0L);
                return;
            }
            addI32((int) baseObj.getID(null));
        } else if (RenderScript.sPointerSize == 8) {
            addI64(0L);
            addI64(0L);
            addI64(0L);
            addI64(0L);
        } else {
            addI32(0);
        }
    }

    public void addU16(int i9) {
        if (i9 >= 0 && i9 <= 65535) {
            align(2);
            byte[] bArr = this.mData;
            int i10 = this.mPos;
            int i11 = i10 + 1;
            this.mPos = i11;
            bArr[i10] = (byte) (i9 & 255);
            this.mPos = i11 + 1;
            bArr[i11] = (byte) (i9 >> 8);
            return;
        }
        Log.e("rs", "FieldPacker.addU16( " + i9 + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public void addU32(long j10) {
        if (j10 >= 0 && j10 <= 4294967295L) {
            align(4);
            byte[] bArr = this.mData;
            int i9 = this.mPos;
            int i10 = i9 + 1;
            this.mPos = i10;
            bArr[i9] = (byte) (j10 & 255);
            int i11 = i10 + 1;
            this.mPos = i11;
            bArr[i10] = (byte) ((j10 >> 8) & 255);
            int i12 = i11 + 1;
            this.mPos = i12;
            bArr[i11] = (byte) ((j10 >> 16) & 255);
            this.mPos = i12 + 1;
            bArr[i12] = (byte) ((j10 >> 24) & 255);
            return;
        }
        Log.e("rs", "FieldPacker.addU32( " + j10 + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public void addU64(long j10) {
        if (j10 >= 0) {
            align(8);
            byte[] bArr = this.mData;
            int i9 = this.mPos;
            int i10 = i9 + 1;
            this.mPos = i10;
            bArr[i9] = (byte) (j10 & 255);
            int i11 = i10 + 1;
            this.mPos = i11;
            bArr[i10] = (byte) ((j10 >> 8) & 255);
            int i12 = i11 + 1;
            this.mPos = i12;
            bArr[i11] = (byte) ((j10 >> 16) & 255);
            int i13 = i12 + 1;
            this.mPos = i13;
            bArr[i12] = (byte) ((j10 >> 24) & 255);
            int i14 = i13 + 1;
            this.mPos = i14;
            bArr[i13] = (byte) ((j10 >> 32) & 255);
            int i15 = i14 + 1;
            this.mPos = i15;
            bArr[i14] = (byte) ((j10 >> 40) & 255);
            int i16 = i15 + 1;
            this.mPos = i16;
            bArr[i15] = (byte) ((j10 >> 48) & 255);
            this.mPos = i16 + 1;
            bArr[i16] = (byte) ((j10 >> 56) & 255);
            return;
        }
        Log.e("rs", "FieldPacker.addU64( " + j10 + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public void addU8(short s10) {
        if (s10 >= 0 && s10 <= 255) {
            byte[] bArr = this.mData;
            int i9 = this.mPos;
            this.mPos = i9 + 1;
            bArr[i9] = (byte) s10;
            return;
        }
        Log.e("rs", "FieldPacker.addU8( " + ((int) s10) + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public void align(int i9) {
        if (i9 > 0) {
            int i10 = i9 - 1;
            if ((i9 & i10) == 0) {
                while (true) {
                    int i11 = this.mPos;
                    if ((i11 & i10) == 0) {
                        return;
                    }
                    this.mAlignment.flip(i11);
                    byte[] bArr = this.mData;
                    int i12 = this.mPos;
                    this.mPos = i12 + 1;
                    bArr[i12] = 0;
                }
            }
        }
        throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i9);
    }

    public final byte[] getData() {
        return this.mData;
    }

    public int getPos() {
        return this.mPos;
    }

    public void reset() {
        this.mPos = 0;
    }

    public void skip(int i9) {
        int i10 = this.mPos + i9;
        if (i10 >= 0 && i10 <= this.mLen) {
            this.mPos = i10;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i9);
    }

    public boolean subBoolean() {
        return subI8() == 1;
    }

    public Byte2 subByte2() {
        Byte2 byte2 = new Byte2();
        byte2.f933y = subI8();
        byte2.f932x = subI8();
        return byte2;
    }

    public Byte3 subByte3() {
        Byte3 byte3 = new Byte3();
        byte3.f936z = subI8();
        byte3.f935y = subI8();
        byte3.f934x = subI8();
        return byte3;
    }

    public Byte4 subByte4() {
        Byte4 byte4 = new Byte4();
        byte4.f937w = subI8();
        byte4.f940z = subI8();
        byte4.f939y = subI8();
        byte4.f938x = subI8();
        return byte4;
    }

    public Double2 subDouble2() {
        Double2 double2 = new Double2();
        double2.f942y = subF64();
        double2.f941x = subF64();
        return double2;
    }

    public Double3 subDouble3() {
        Double3 double3 = new Double3();
        double3.f945z = subF64();
        double3.f944y = subF64();
        double3.f943x = subF64();
        return double3;
    }

    public Double4 subDouble4() {
        Double4 double4 = new Double4();
        double4.f946w = subF64();
        double4.f949z = subF64();
        double4.f948y = subF64();
        double4.f947x = subF64();
        return double4;
    }

    public float subF32() {
        return Float.intBitsToFloat(subI32());
    }

    public double subF64() {
        return Double.longBitsToDouble(subI64());
    }

    public Float2 subFloat2() {
        Float2 float2 = new Float2();
        float2.f951y = subF32();
        float2.f950x = subF32();
        return float2;
    }

    public Float3 subFloat3() {
        Float3 float3 = new Float3();
        float3.f954z = subF32();
        float3.f953y = subF32();
        float3.f952x = subF32();
        return float3;
    }

    public Float4 subFloat4() {
        Float4 float4 = new Float4();
        float4.f955w = subF32();
        float4.f958z = subF32();
        float4.f957y = subF32();
        float4.f956x = subF32();
        return float4;
    }

    public short subI16() {
        subalign(2);
        byte[] bArr = this.mData;
        int i9 = this.mPos - 1;
        this.mPos = i9;
        int i10 = i9 - 1;
        this.mPos = i10;
        return (short) (((short) (bArr[i10] & UByte.MAX_VALUE)) | ((short) ((bArr[i9] & UByte.MAX_VALUE) << 8)));
    }

    public int subI32() {
        subalign(4);
        byte[] bArr = this.mData;
        int i9 = this.mPos - 1;
        this.mPos = i9;
        int i10 = i9 - 1;
        this.mPos = i10;
        int i11 = i10 - 1;
        this.mPos = i11;
        int i12 = i11 - 1;
        this.mPos = i12;
        return (bArr[i12] & UByte.MAX_VALUE) | ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i10] & UByte.MAX_VALUE) << 16) | ((bArr[i11] & UByte.MAX_VALUE) << 8);
    }

    public long subI64() {
        int i9;
        subalign(8);
        byte[] bArr = this.mData;
        int i10 = this.mPos - 1;
        this.mPos = i10;
        int i11 = i10 - 1;
        this.mPos = i11;
        int i12 = i11 - 1;
        this.mPos = i12;
        int i13 = i12 - 1;
        this.mPos = i13;
        int i14 = i13 - 1;
        this.mPos = i14;
        int i15 = i14 - 1;
        this.mPos = i15;
        int i16 = i15 - 1;
        this.mPos = i16;
        this.mPos = i16 - 1;
        return (bArr[i9] & 255) | ((bArr[i10] & 255) << 56) | 0 | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 24) | ((bArr[i15] & 255) << 16) | ((bArr[i16] & 255) << 8);
    }

    public byte subI8() {
        subalign(1);
        byte[] bArr = this.mData;
        int i9 = this.mPos - 1;
        this.mPos = i9;
        return bArr[i9];
    }

    public Int2 subInt2() {
        Int2 int2 = new Int2();
        int2.f960y = subI32();
        int2.f959x = subI32();
        return int2;
    }

    public Int3 subInt3() {
        Int3 int3 = new Int3();
        int3.f963z = subI32();
        int3.f962y = subI32();
        int3.f961x = subI32();
        return int3;
    }

    public Int4 subInt4() {
        Int4 int4 = new Int4();
        int4.f964w = subI32();
        int4.f967z = subI32();
        int4.f966y = subI32();
        int4.f965x = subI32();
        return int4;
    }

    public Long2 subLong2() {
        Long2 long2 = new Long2();
        long2.f969y = subI64();
        long2.f968x = subI64();
        return long2;
    }

    public Long3 subLong3() {
        Long3 long3 = new Long3();
        long3.f972z = subI64();
        long3.f971y = subI64();
        long3.f970x = subI64();
        return long3;
    }

    public Long4 subLong4() {
        Long4 long4 = new Long4();
        long4.f973w = subI64();
        long4.f976z = subI64();
        long4.f975y = subI64();
        long4.f974x = subI64();
        return long4;
    }

    public Matrix2f subMatrix2f() {
        Matrix2f matrix2f = new Matrix2f();
        for (int length = matrix2f.mMat.length - 1; length >= 0; length--) {
            matrix2f.mMat[length] = subF32();
        }
        return matrix2f;
    }

    public Matrix3f subMatrix3f() {
        Matrix3f matrix3f = new Matrix3f();
        for (int length = matrix3f.mMat.length - 1; length >= 0; length--) {
            matrix3f.mMat[length] = subF32();
        }
        return matrix3f;
    }

    public Matrix4f subMatrix4f() {
        Matrix4f matrix4f = new Matrix4f();
        for (int length = matrix4f.mMat.length - 1; length >= 0; length--) {
            matrix4f.mMat[length] = subF32();
        }
        return matrix4f;
    }

    public Short2 subShort2() {
        Short2 short2 = new Short2();
        short2.f978y = subI16();
        short2.f977x = subI16();
        return short2;
    }

    public Short3 subShort3() {
        Short3 short3 = new Short3();
        short3.f981z = subI16();
        short3.f980y = subI16();
        short3.f979x = subI16();
        return short3;
    }

    public Short4 subShort4() {
        Short4 short4 = new Short4();
        short4.f982w = subI16();
        short4.f985z = subI16();
        short4.f984y = subI16();
        short4.f983x = subI16();
        return short4;
    }

    public void subalign(int i9) {
        int i10;
        int i11 = i9 - 1;
        if ((i9 & i11) != 0) {
            throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i9);
        }
        while (true) {
            i10 = this.mPos;
            if ((i10 & i11) == 0) {
                break;
            }
            this.mPos = i10 - 1;
        }
        if (i10 > 0) {
            while (this.mAlignment.get(this.mPos - 1)) {
                int i12 = this.mPos - 1;
                this.mPos = i12;
                this.mAlignment.flip(i12);
            }
        }
    }

    public void addF32(Float2 float2) {
        addF32(float2.f950x);
        addF32(float2.f951y);
    }

    public void addF64(Double2 double2) {
        addF64(double2.f941x);
        addF64(double2.f942y);
    }

    public void addI8(Byte2 byte2) {
        addI8(byte2.f932x);
        addI8(byte2.f933y);
    }

    public void reset(int i9) {
        if (i9 >= 0 && i9 <= this.mLen) {
            this.mPos = i9;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i9);
    }

    public void addMatrix(Matrix3f matrix3f) {
        int i9 = 0;
        while (true) {
            float[] fArr = matrix3f.mMat;
            if (i9 >= fArr.length) {
                return;
            }
            addF32(fArr[i9]);
            i9++;
        }
    }

    public void addF32(Float3 float3) {
        addF32(float3.f952x);
        addF32(float3.f953y);
        addF32(float3.f954z);
    }

    public void addF64(Double3 double3) {
        addF64(double3.f943x);
        addF64(double3.f944y);
        addF64(double3.f945z);
    }

    public void addI16(Short2 short2) {
        addI16(short2.f977x);
        addI16(short2.f978y);
    }

    public void addI8(Byte3 byte3) {
        addI8(byte3.f934x);
        addI8(byte3.f935y);
        addI8(byte3.f936z);
    }

    public void addU8(Short2 short2) {
        addU8(short2.f977x);
        addU8(short2.f978y);
    }

    public void addMatrix(Matrix2f matrix2f) {
        int i9 = 0;
        while (true) {
            float[] fArr = matrix2f.mMat;
            if (i9 >= fArr.length) {
                return;
            }
            addF32(fArr[i9]);
            i9++;
        }
    }

    public FieldPacker(byte[] bArr) {
        this.mPos = bArr.length;
        this.mLen = bArr.length;
        this.mData = bArr;
        this.mAlignment = new BitSet();
    }

    public void addI16(Short3 short3) {
        addI16(short3.f979x);
        addI16(short3.f980y);
        addI16(short3.f981z);
    }

    public void addI32(Int2 int2) {
        addI32(int2.f959x);
        addI32(int2.f960y);
    }

    public void addU16(Int2 int2) {
        addU16(int2.f959x);
        addU16(int2.f960y);
    }

    public void addU8(Short3 short3) {
        addU8(short3.f979x);
        addU8(short3.f980y);
        addU8(short3.f981z);
    }

    public void addF32(Float4 float4) {
        addF32(float4.f956x);
        addF32(float4.f957y);
        addF32(float4.f958z);
        addF32(float4.f955w);
    }

    public void addF64(Double4 double4) {
        addF64(double4.f947x);
        addF64(double4.f948y);
        addF64(double4.f949z);
        addF64(double4.f946w);
    }

    public void addI8(Byte4 byte4) {
        addI8(byte4.f938x);
        addI8(byte4.f939y);
        addI8(byte4.f940z);
        addI8(byte4.f937w);
    }

    public void addI32(Int3 int3) {
        addI32(int3.f961x);
        addI32(int3.f962y);
        addI32(int3.f963z);
    }

    public void addU16(Int3 int3) {
        addU16(int3.f961x);
        addU16(int3.f962y);
        addU16(int3.f963z);
    }

    public void addU32(Long2 long2) {
        addU32(long2.f968x);
        addU32(long2.f969y);
    }

    public void addI16(Short4 short4) {
        addI16(short4.f983x);
        addI16(short4.f984y);
        addI16(short4.f985z);
        addI16(short4.f982w);
    }

    public void addU8(Short4 short4) {
        addU8(short4.f983x);
        addU8(short4.f984y);
        addU8(short4.f985z);
        addU8(short4.f982w);
    }

    public void addI64(Long2 long2) {
        addI64(long2.f968x);
        addI64(long2.f969y);
    }

    public void addU32(Long3 long3) {
        addU32(long3.f970x);
        addU32(long3.f971y);
        addU32(long3.f972z);
    }

    public void addI32(Int4 int4) {
        addI32(int4.f965x);
        addI32(int4.f966y);
        addI32(int4.f967z);
        addI32(int4.f964w);
    }

    public void addU16(Int4 int4) {
        addU16(int4.f965x);
        addU16(int4.f966y);
        addU16(int4.f967z);
        addU16(int4.f964w);
    }

    public void addI64(Long3 long3) {
        addI64(long3.f970x);
        addI64(long3.f971y);
        addI64(long3.f972z);
    }

    public void addU64(Long2 long2) {
        addU64(long2.f968x);
        addU64(long2.f969y);
    }

    public void addU32(Long4 long4) {
        addU32(long4.f974x);
        addU32(long4.f975y);
        addU32(long4.f976z);
        addU32(long4.f973w);
    }

    public void addU64(Long3 long3) {
        addU64(long3.f970x);
        addU64(long3.f971y);
        addU64(long3.f972z);
    }

    public void addI64(Long4 long4) {
        addI64(long4.f974x);
        addI64(long4.f975y);
        addI64(long4.f976z);
        addI64(long4.f973w);
    }

    public void addU64(Long4 long4) {
        addU64(long4.f974x);
        addU64(long4.f975y);
        addU64(long4.f976z);
        addU64(long4.f973w);
    }
}
