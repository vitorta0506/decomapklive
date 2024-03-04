package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f30579a;

    /* renamed from: b  reason: collision with root package name */
    private String f30580b = "GBK";

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public byte f30581a;

        /* renamed from: b  reason: collision with root package name */
        public int f30582b;
    }

    public i() {
    }

    private boolean[] d(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                boolean[] zArr = new boolean[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    zArr[i10] = a((byte) 0, 0, true) != 0;
                }
                return zArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    private short[] e(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                short[] sArr = new short[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    sArr[i10] = a(sArr[0], 0, true);
                }
                return sArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    private int[] f(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                int[] iArr = new int[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    iArr[i10] = a(iArr[0], 0, true);
                }
                return iArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    private long[] g(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                long[] jArr = new long[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    jArr[i10] = a(jArr[0], 0, true);
                }
                return jArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    private float[] h(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                float[] fArr = new float[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    fArr[i10] = a(fArr[0], 0, true);
                }
                return fArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    private double[] i(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                double[] dArr = new double[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    dArr[i10] = a(dArr[0], 0, true);
                }
                return dArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    public final void a(byte[] bArr) {
        ByteBuffer byteBuffer = this.f30579a;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f30579a = ByteBuffer.wrap(bArr);
    }

    public final String b(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 == 6) {
            int i10 = this.f30579a.get();
            if (i10 < 0) {
                i10 += 256;
            }
            byte[] bArr = new byte[i10];
            this.f30579a.get(bArr);
            try {
                return new String(bArr, this.f30580b);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        } else if (b10 == 7) {
            int i11 = this.f30579a.getInt();
            if (i11 <= 104857600 && i11 >= 0) {
                byte[] bArr2 = new byte[i11];
                this.f30579a.get(bArr2);
                try {
                    return new String(bArr2, this.f30580b);
                } catch (UnsupportedEncodingException unused2) {
                    return new String(bArr2);
                }
            }
            throw new g("String too long: " + i11);
        } else {
            throw new g("type mismatch.");
        }
    }

    public final byte[] c(int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                byte[] bArr = new byte[a10];
                for (int i10 = 0; i10 < a10; i10++) {
                    bArr[i10] = a(bArr[0], 0, true);
                }
                return bArr;
            }
            throw new g("size invalid: " + a10);
        } else if (b10 == 13) {
            a aVar2 = new a();
            a(aVar2, this.f30579a);
            if (aVar2.f30581a == 0) {
                int a11 = a(0, 0, true);
                if (a11 >= 0) {
                    byte[] bArr2 = new byte[a11];
                    this.f30579a.get(bArr2);
                    return bArr2;
                }
                throw new g("invalid size, tag: " + i9 + ", type: " + ((int) aVar.f30581a) + ", " + ((int) aVar2.f30581a) + ", size: " + a11);
            }
            throw new g("type mismatch, tag: " + i9 + ", type: " + ((int) aVar.f30581a) + ", " + ((int) aVar2.f30581a));
        } else {
            throw new g("type mismatch.");
        }
    }

    public i(byte[] bArr) {
        this.f30579a = ByteBuffer.wrap(bArr);
    }

    private static int a(a aVar, ByteBuffer byteBuffer) {
        byte b10 = byteBuffer.get();
        aVar.f30581a = (byte) (b10 & 15);
        int i9 = (b10 & 240) >> 4;
        aVar.f30582b = i9;
        if (i9 == 15) {
            aVar.f30582b = byteBuffer.get();
            return 2;
        }
        return 1;
    }

    public i(byte[] bArr, int i9) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f30579a = wrap;
        wrap.position(4);
    }

    private boolean a(int i9) {
        int i10;
        try {
            a aVar = new a();
            while (true) {
                int a10 = a(aVar, this.f30579a.duplicate());
                i10 = aVar.f30582b;
                if (i9 <= i10 || aVar.f30581a == 11) {
                    break;
                }
                ByteBuffer byteBuffer = this.f30579a;
                byteBuffer.position(byteBuffer.position() + a10);
                a(aVar.f30581a);
            }
        } catch (g | BufferUnderflowException unused) {
        }
        return i9 == i10;
    }

    private void a() {
        a aVar = new a();
        do {
            a(aVar, this.f30579a);
            a(aVar.f30581a);
        } while (aVar.f30581a != 11);
    }

    private void a(byte b10) {
        int i9 = 0;
        switch (b10) {
            case 0:
                ByteBuffer byteBuffer = this.f30579a;
                byteBuffer.position(byteBuffer.position() + 1);
                return;
            case 1:
                ByteBuffer byteBuffer2 = this.f30579a;
                byteBuffer2.position(byteBuffer2.position() + 2);
                return;
            case 2:
                ByteBuffer byteBuffer3 = this.f30579a;
                byteBuffer3.position(byteBuffer3.position() + 4);
                return;
            case 3:
                ByteBuffer byteBuffer4 = this.f30579a;
                byteBuffer4.position(byteBuffer4.position() + 8);
                return;
            case 4:
                ByteBuffer byteBuffer5 = this.f30579a;
                byteBuffer5.position(byteBuffer5.position() + 4);
                return;
            case 5:
                ByteBuffer byteBuffer6 = this.f30579a;
                byteBuffer6.position(byteBuffer6.position() + 8);
                return;
            case 6:
                int i10 = this.f30579a.get();
                if (i10 < 0) {
                    i10 += 256;
                }
                ByteBuffer byteBuffer7 = this.f30579a;
                byteBuffer7.position(byteBuffer7.position() + i10);
                return;
            case 7:
                int i11 = this.f30579a.getInt();
                ByteBuffer byteBuffer8 = this.f30579a;
                byteBuffer8.position(byteBuffer8.position() + i11);
                return;
            case 8:
                int a10 = a(0, 0, true);
                while (i9 < (a10 << 1)) {
                    a aVar = new a();
                    a(aVar, this.f30579a);
                    a(aVar.f30581a);
                    i9++;
                }
                return;
            case 9:
                int a11 = a(0, 0, true);
                while (i9 < a11) {
                    a aVar2 = new a();
                    a(aVar2, this.f30579a);
                    a(aVar2.f30581a);
                    i9++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar3 = new a();
                a(aVar3, this.f30579a);
                if (aVar3.f30581a == 0) {
                    int a12 = a(0, 0, true);
                    ByteBuffer byteBuffer9 = this.f30579a;
                    byteBuffer9.position(byteBuffer9.position() + a12);
                    return;
                }
                throw new g("skipField with invalid type, type value: " + ((int) b10) + ", " + ((int) aVar3.f30581a));
            default:
                throw new g("invalid type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] b(T t10, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        if (aVar.f30581a == 9) {
            int a10 = a(0, 0, true);
            if (a10 >= 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance(t10.getClass(), a10));
                for (int i10 = 0; i10 < a10; i10++) {
                    tArr[i10] = a((i) t10, 0, true);
                }
                return tArr;
            }
            throw new g("size invalid: " + a10);
        }
        throw new g("type mismatch.");
    }

    public final boolean a(int i9, boolean z10) {
        return a((byte) 0, i9, z10) != 0;
    }

    public final byte a(byte b10, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return b10;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b11 = aVar.f30581a;
        if (b11 != 0) {
            if (b11 == 12) {
                return (byte) 0;
            }
            throw new g("type mismatch.");
        }
        return this.f30579a.get();
    }

    public final short a(short s10, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return s10;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 == 12) {
                    return (short) 0;
                }
                throw new g("type mismatch.");
            }
            return this.f30579a.getShort();
        }
        return this.f30579a.get();
    }

    public final int a(int i9, int i10, boolean z10) {
        if (!a(i10)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return i9;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 == 12) {
                        return 0;
                    }
                    throw new g("type mismatch.");
                }
                return this.f30579a.getInt();
            }
            return this.f30579a.getShort();
        }
        return this.f30579a.get();
    }

    public final long a(long j10, int i9, boolean z10) {
        int i10;
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return j10;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 == 0) {
            i10 = this.f30579a.get();
        } else if (b10 == 1) {
            i10 = this.f30579a.getShort();
        } else if (b10 != 2) {
            if (b10 != 3) {
                if (b10 == 12) {
                    return 0L;
                }
                throw new g("type mismatch.");
            }
            return this.f30579a.getLong();
        } else {
            i10 = this.f30579a.getInt();
        }
        return i10;
    }

    private float a(float f10, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return f10;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 != 4) {
            if (b10 == 12) {
                return 0.0f;
            }
            throw new g("type mismatch.");
        }
        return this.f30579a.getFloat();
    }

    private double a(double d10, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return d10;
        }
        a aVar = new a();
        a(aVar, this.f30579a);
        byte b10 = aVar.f30581a;
        if (b10 != 4) {
            if (b10 != 5) {
                if (b10 == 12) {
                    return 0.0d;
                }
                throw new g("type mismatch.");
            }
            return this.f30579a.getDouble();
        }
        return this.f30579a.getFloat();
    }

    public final <K, V> HashMap<K, V> a(Map<K, V> map, int i9, boolean z10) {
        return (HashMap) a(new HashMap(), map, i9, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i9, boolean z10) {
        if (map2 != null && !map2.isEmpty()) {
            Map.Entry<K, V> next = map2.entrySet().iterator().next();
            K key = next.getKey();
            V value = next.getValue();
            if (a(i9)) {
                a aVar = new a();
                a(aVar, this.f30579a);
                if (aVar.f30581a == 8) {
                    int a10 = a(0, 0, true);
                    if (a10 < 0) {
                        throw new g("size invalid: " + a10);
                    }
                    for (int i10 = 0; i10 < a10; i10++) {
                        map.put(a((i) key, 0, true), a((i) value, 1, true));
                    }
                } else {
                    throw new g("type mismatch.");
                }
            } else if (z10) {
                throw new g("require field not exist.");
            }
            return map;
        }
        return new HashMap();
    }

    private <T> T[] a(T[] tArr, int i9, boolean z10) {
        if (tArr != null && tArr.length != 0) {
            return (T[]) b(tArr[0], i9, z10);
        }
        throw new g("unable to get type of key and value.");
    }

    public final k a(k kVar, int i9, boolean z10) {
        if (!a(i9)) {
            if (z10) {
                throw new g("require field not exist.");
            }
            return null;
        }
        try {
            k kVar2 = (k) kVar.getClass().newInstance();
            a aVar = new a();
            a(aVar, this.f30579a);
            if (aVar.f30581a == 10) {
                kVar2.a(this);
                a();
                return kVar2;
            }
            throw new g("type mismatch.");
        } catch (Exception e10) {
            throw new g(e10.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Object a(T t10, int i9, boolean z10) {
        if (t10 instanceof Byte) {
            return Byte.valueOf(a((byte) 0, i9, z10));
        }
        if (t10 instanceof Boolean) {
            return Boolean.valueOf(a((byte) 0, i9, z10) != 0);
        } else if (t10 instanceof Short) {
            return Short.valueOf(a((short) 0, i9, z10));
        } else {
            if (t10 instanceof Integer) {
                return Integer.valueOf(a(0, i9, z10));
            }
            if (t10 instanceof Long) {
                return Long.valueOf(a(0L, i9, z10));
            }
            if (t10 instanceof Float) {
                return Float.valueOf(a(0.0f, i9, z10));
            }
            if (t10 instanceof Double) {
                return Double.valueOf(a(0.0d, i9, z10));
            }
            if (t10 instanceof String) {
                return String.valueOf(b(i9, z10));
            }
            if (t10 instanceof Map) {
                return (HashMap) a(new HashMap(), (Map) t10, i9, z10);
            } else if (t10 instanceof List) {
                List list = (List) t10;
                if (list == null || list.isEmpty()) {
                    return new ArrayList();
                }
                Object[] b10 = b(list.get(0), i9, z10);
                if (b10 == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : b10) {
                    arrayList.add(obj);
                }
                return arrayList;
            } else if (t10 instanceof k) {
                return a((k) t10, i9, z10);
            } else {
                if (t10.getClass().isArray()) {
                    if (!(t10 instanceof byte[]) && !(t10 instanceof Byte[])) {
                        if (t10 instanceof boolean[]) {
                            return d(i9, z10);
                        }
                        if (t10 instanceof short[]) {
                            return e(i9, z10);
                        }
                        if (t10 instanceof int[]) {
                            return f(i9, z10);
                        }
                        if (t10 instanceof long[]) {
                            return g(i9, z10);
                        }
                        if (t10 instanceof float[]) {
                            return h(i9, z10);
                        }
                        if (t10 instanceof double[]) {
                            return i(i9, z10);
                        }
                        return a((Object[]) t10, i9, z10);
                    }
                    return c(i9, z10);
                }
                throw new g("read object error: unsupport type.");
            }
        }
    }

    public final int a(String str) {
        this.f30580b = str;
        return 0;
    }
}
