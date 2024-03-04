package com.meizu.cloud.pushsdk.c.g;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import kotlin.UByte;
/* loaded from: classes4.dex */
public class e implements Serializable, Comparable<e> {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f28479a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    public static final e f28480b = a(new byte[0]);
    private static final long serialVersionUID = 1;

    /* renamed from: c  reason: collision with root package name */
    final byte[] f28481c;

    /* renamed from: d  reason: collision with root package name */
    transient int f28482d;

    /* renamed from: e  reason: collision with root package name */
    transient String f28483e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(byte[] bArr) {
        this.f28481c = bArr;
    }

    public static e a(InputStream inputStream, int i9) throws IOException {
        if (inputStream != null) {
            if (i9 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + i9);
            }
            byte[] bArr = new byte[i9];
            int i10 = 0;
            while (i10 < i9) {
                int read = inputStream.read(bArr, i10, i9 - i10);
                if (read == -1) {
                    throw new EOFException();
                }
                i10 += read;
            }
            return new e(bArr);
        }
        throw new IllegalArgumentException("in == null");
    }

    public static e a(String str) {
        if (str != null) {
            e eVar = new e(str.getBytes(o.f28509a));
            eVar.f28483e = str;
            return eVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static e a(byte... bArr) {
        if (bArr != null) {
            return new e((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private e b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f28481c));
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        e a10 = a(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = e.class.getDeclaredField(com.huawei.hms.opendevice.c.f27627a);
            declaredField.setAccessible(true);
            declaredField.set(this, a10.f28481c);
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (NoSuchFieldException unused2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f28481c.length);
        objectOutputStream.write(this.f28481c);
    }

    public byte a(int i9) {
        return this.f28481c[i9];
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(e eVar) {
        int d10 = d();
        int d11 = eVar.d();
        int min = Math.min(d10, d11);
        for (int i9 = 0; i9 < min; i9++) {
            int a10 = a(i9) & UByte.MAX_VALUE;
            int a11 = eVar.a(i9) & UByte.MAX_VALUE;
            if (a10 != a11) {
                return a10 < a11 ? -1 : 1;
            }
        }
        if (d10 == d11) {
            return 0;
        }
        return d10 < d11 ? -1 : 1;
    }

    public String a() {
        String str = this.f28483e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f28481c, o.f28509a);
        this.f28483e = str2;
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        byte[] bArr = this.f28481c;
        bVar.c(bArr, 0, bArr.length);
    }

    public boolean a(int i9, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f28481c;
        return i9 <= bArr2.length - i11 && i10 <= bArr.length - i11 && o.a(bArr2, i9, bArr, i10, i11);
    }

    public e b() {
        return b("MD5");
    }

    public String c() {
        byte[] bArr = this.f28481c;
        char[] cArr = new char[bArr.length * 2];
        int i9 = 0;
        for (byte b10 : bArr) {
            int i10 = i9 + 1;
            char[] cArr2 = f28479a;
            cArr[i9] = cArr2[(b10 >> 4) & 15];
            i9 = i10 + 1;
            cArr[i10] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public int d() {
        return this.f28481c.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            int d10 = eVar.d();
            byte[] bArr = this.f28481c;
            if (d10 == bArr.length && eVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i9 = this.f28482d;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = Arrays.hashCode(this.f28481c);
        this.f28482d = hashCode;
        return hashCode;
    }

    public String toString() {
        byte[] bArr = this.f28481c;
        return bArr.length == 0 ? "ByteString[size=0]" : bArr.length <= 16 ? String.format("ByteString[size=%s data=%s]", Integer.valueOf(bArr.length), c()) : String.format("ByteString[size=%s md5=%s]", Integer.valueOf(bArr.length), b().c());
    }
}
