package org.bouncycastle.pqc.crypto.xmss;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class x {

    /* loaded from: classes7.dex */
    private static class a extends ObjectInputStream {

        /* renamed from: c  reason: collision with root package name */
        private static final Set f56249c;

        /* renamed from: a  reason: collision with root package name */
        private final Class f56250a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f56251b;

        static {
            HashSet hashSet = new HashSet();
            f56249c = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        a(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.f56251b = false;
            this.f56250a = cls;
        }

        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.f56251b) {
                if (!f56249c.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else if (!objectStreamClass.getName().equals(this.f56250a.getName())) {
                throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
            } else {
                this.f56251b = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static long a(byte[] bArr, int i9, int i10) {
        Objects.requireNonNull(bArr, "in == null");
        long j10 = 0;
        for (int i11 = i9; i11 < i9 + i10; i11++) {
            j10 = (j10 << 8) | (bArr[i11] & UByte.MAX_VALUE);
        }
        return j10;
    }

    public static int b(int i9, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (((i9 >> i11) & 1) == 0) {
                return i11;
            }
        }
        return 0;
    }

    public static byte[] c(byte[] bArr) {
        Objects.requireNonNull(bArr, "in == null");
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[][] d(byte[][] bArr) {
        if (k(bArr)) {
            throw new NullPointerException("in has null pointers");
        }
        byte[][] bArr2 = new byte[bArr.length];
        for (int i9 = 0; i9 < bArr.length; i9++) {
            bArr2[i9] = new byte[bArr[i9].length];
            System.arraycopy(bArr[i9], 0, bArr2[i9], 0, bArr[i9].length);
        }
        return bArr2;
    }

    public static void e(byte[] bArr, byte[] bArr2, int i9) {
        Objects.requireNonNull(bArr, "dst == null");
        Objects.requireNonNull(bArr2, "src == null");
        if (i9 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (bArr2.length + i9 > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            bArr[i9 + i10] = bArr2[i10];
        }
    }

    public static Object f(byte[] bArr, Class cls) throws IOException, ClassNotFoundException {
        a aVar = new a(cls, new ByteArrayInputStream(bArr));
        Object readObject = aVar.readObject();
        if (aVar.available() == 0) {
            if (cls.isInstance(readObject)) {
                return readObject;
            }
            throw new IOException("unexpected class found in ObjectInputStream");
        }
        throw new IOException("unexpected data found at end of ObjectInputStream");
    }

    public static byte[] g(byte[] bArr, int i9, int i10) {
        Objects.requireNonNull(bArr, "src == null");
        if (i9 >= 0) {
            if (i10 >= 0) {
                if (i9 + i10 <= bArr.length) {
                    byte[] bArr2 = new byte[i10];
                    for (int i11 = 0; i11 < i10; i11++) {
                        bArr2[i11] = bArr[i9 + i11];
                    }
                    return bArr2;
                }
                throw new IllegalArgumentException("offset + length must not be greater then size of source array");
            }
            throw new IllegalArgumentException("length hast to be >= 0");
        }
        throw new IllegalArgumentException("offset hast to be >= 0");
    }

    public static int h(org.bouncycastle.crypto.e eVar) {
        Objects.requireNonNull(eVar, "digest == null");
        String algorithmName = eVar.getAlgorithmName();
        if (algorithmName.equals("SHAKE128")) {
            return 32;
        }
        if (algorithmName.equals("SHAKE256")) {
            return 64;
        }
        return eVar.d();
    }

    public static int i(long j10, int i9) {
        return (int) (j10 & ((1 << i9) - 1));
    }

    public static long j(long j10, int i9) {
        return j10 >> i9;
    }

    public static boolean k(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(int i9, long j10) {
        if (j10 >= 0) {
            return j10 < (1 << i9);
        }
        throw new IllegalStateException("index must not be negative");
    }

    public static boolean m(long j10, int i9, int i10) {
        return j10 != 0 && (j10 + 1) % ((long) Math.pow((double) (1 << i9), (double) i10)) == 0;
    }

    public static boolean n(long j10, int i9, int i10) {
        return j10 != 0 && j10 % ((long) Math.pow((double) (1 << i9), (double) (i10 + 1))) == 0;
    }

    public static int o(int i9) {
        int i10 = 0;
        while (true) {
            i9 >>= 1;
            if (i9 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public static byte[] p(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] q(long j10, int i9) {
        byte[] bArr = new byte[i9];
        for (int i10 = i9 - 1; i10 >= 0; i10--) {
            bArr[i10] = (byte) j10;
            j10 >>>= 8;
        }
        return bArr;
    }
}
