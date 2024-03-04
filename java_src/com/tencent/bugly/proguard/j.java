package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f30583a;

    /* renamed from: b  reason: collision with root package name */
    private String f30584b;

    public j(int i9) {
        this.f30584b = "GBK";
        this.f30583a = ByteBuffer.allocate(i9);
    }

    public final ByteBuffer a() {
        return this.f30583a;
    }

    public final byte[] b() {
        byte[] bArr = new byte[this.f30583a.position()];
        System.arraycopy(this.f30583a.array(), 0, bArr, 0, this.f30583a.position());
        return bArr;
    }

    private void a(int i9) {
        if (this.f30583a.remaining() < i9) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f30583a.capacity() + i9) << 1);
            allocate.put(this.f30583a.array(), 0, this.f30583a.position());
            this.f30583a = allocate;
        }
    }

    private void b(byte b10, int i9) {
        if (i9 < 15) {
            this.f30583a.put((byte) (b10 | (i9 << 4)));
        } else if (i9 < 256) {
            this.f30583a.put((byte) (b10 | 240));
            this.f30583a.put((byte) i9);
        } else {
            throw new b("tag is too large: " + i9);
        }
    }

    public j() {
        this(128);
    }

    public final void a(boolean z10, int i9) {
        a(z10 ? (byte) 1 : (byte) 0, i9);
    }

    public final void a(byte b10, int i9) {
        a(3);
        if (b10 == 0) {
            b((byte) 12, i9);
            return;
        }
        b((byte) 0, i9);
        this.f30583a.put(b10);
    }

    public final void a(short s10, int i9) {
        a(4);
        if (s10 >= -128 && s10 <= 127) {
            a((byte) s10, i9);
            return;
        }
        b((byte) 1, i9);
        this.f30583a.putShort(s10);
    }

    public final void a(int i9, int i10) {
        a(6);
        if (i9 >= -32768 && i9 <= 32767) {
            a((short) i9, i10);
            return;
        }
        b((byte) 2, i10);
        this.f30583a.putInt(i9);
    }

    public final void a(long j10, int i9) {
        a(10);
        if (j10 >= -2147483648L && j10 <= 2147483647L) {
            a((int) j10, i9);
            return;
        }
        b((byte) 3, i9);
        this.f30583a.putLong(j10);
    }

    public final void a(String str, int i9) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f30584b);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        a(bytes.length + 10);
        if (bytes.length > 255) {
            b((byte) 7, i9);
            this.f30583a.putInt(bytes.length);
            this.f30583a.put(bytes);
            return;
        }
        b((byte) 6, i9);
        this.f30583a.put((byte) bytes.length);
        this.f30583a.put(bytes);
    }

    public final <K, V> void a(Map<K, V> map, int i9) {
        a(8);
        b((byte) 8, i9);
        a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                a(entry.getKey(), 0);
                a(entry.getValue(), 1);
            }
        }
    }

    public final void a(byte[] bArr, int i9) {
        a(bArr.length + 8);
        b((byte) 13, i9);
        b((byte) 0, 0);
        a(bArr.length, 0);
        this.f30583a.put(bArr);
    }

    public final <T> void a(Collection<T> collection, int i9) {
        a(8);
        b((byte) 9, i9);
        a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t10 : collection) {
                a(t10, 0);
            }
        }
    }

    public final void a(k kVar, int i9) {
        a(2);
        b((byte) 10, i9);
        kVar.a(this);
        a(2);
        b((byte) 11, 0);
    }

    public final void a(Object obj, int i9) {
        if (obj instanceof Byte) {
            a(((Byte) obj).byteValue(), i9);
        } else if (obj instanceof Boolean) {
            a(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0, i9);
        } else if (obj instanceof Short) {
            a(((Short) obj).shortValue(), i9);
        } else if (obj instanceof Integer) {
            a(((Integer) obj).intValue(), i9);
        } else if (obj instanceof Long) {
            a(((Long) obj).longValue(), i9);
        } else if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            a(6);
            b((byte) 4, i9);
            this.f30583a.putFloat(floatValue);
        } else if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            a(10);
            b((byte) 5, i9);
            this.f30583a.putDouble(doubleValue);
        } else if (obj instanceof String) {
            a((String) obj, i9);
        } else if (obj instanceof Map) {
            a((Map) obj, i9);
        } else if (obj instanceof List) {
            a((Collection) ((List) obj), i9);
        } else if (obj instanceof k) {
            a(2);
            b((byte) 10, i9);
            ((k) obj).a(this);
            a(2);
            b((byte) 11, 0);
        } else if (obj instanceof byte[]) {
            a((byte[]) obj, i9);
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            a(8);
            b((byte) 9, i9);
            a(zArr.length, 0);
            for (boolean z10 : zArr) {
                a(z10 ? (byte) 1 : (byte) 0, 0);
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            a(8);
            b((byte) 9, i9);
            a(sArr.length, 0);
            for (short s10 : sArr) {
                a(s10, 0);
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            a(8);
            b((byte) 9, i9);
            a(iArr.length, 0);
            for (int i10 : iArr) {
                a(i10, 0);
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            a(8);
            b((byte) 9, i9);
            a(jArr.length, 0);
            for (long j10 : jArr) {
                a(j10, 0);
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            a(8);
            b((byte) 9, i9);
            a(fArr.length, 0);
            for (float f10 : fArr) {
                a(6);
                b((byte) 4, 0);
                this.f30583a.putFloat(f10);
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            a(8);
            b((byte) 9, i9);
            a(dArr.length, 0);
            for (double d10 : dArr) {
                a(10);
                b((byte) 5, 0);
                this.f30583a.putDouble(d10);
            }
        } else if (obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            a(8);
            b((byte) 9, i9);
            a(objArr.length, 0);
            for (Object obj2 : objArr) {
                a(obj2, 0);
            }
        } else if (obj instanceof Collection) {
            a((Collection) obj, i9);
        } else {
            throw new b("write object error: unsupport type. " + obj.getClass());
        }
    }

    public final int a(String str) {
        this.f30584b = str;
        return 0;
    }
}
