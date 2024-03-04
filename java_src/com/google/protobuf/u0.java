package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
/* loaded from: classes3.dex */
public final class u0 {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f15283a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f15284b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    static final Charset f15285c = Charset.forName("ISO-8859-1");

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f15286d;

    /* renamed from: e  reason: collision with root package name */
    public static final ByteBuffer f15287e;

    /* renamed from: f  reason: collision with root package name */
    public static final p f15288f;

    /* loaded from: classes3.dex */
    public interface a extends j<Boolean> {
        @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
        j<Boolean> b(int i9);
    }

    /* loaded from: classes3.dex */
    public interface b extends j<Double> {
        void N0(double d10);

        @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
        j<Double> b(int i9);

        double getDouble(int i9);
    }

    /* loaded from: classes3.dex */
    public interface c {
        int getNumber();
    }

    /* loaded from: classes3.dex */
    public interface d<T extends c> {
        T a(int i9);
    }

    /* loaded from: classes3.dex */
    public interface e {
        boolean a(int i9);
    }

    /* loaded from: classes3.dex */
    public interface f extends j<Float> {
        void A(float f10);

        @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
        j<Float> b(int i9);

        float getFloat(int i9);
    }

    /* loaded from: classes3.dex */
    public interface g extends j<Integer> {
        void D0(int i9);

        @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
        j<Integer> b(int i9);

        int getInt(int i9);
    }

    /* loaded from: classes3.dex */
    public static class h<F, T> extends AbstractList<T> {

        /* renamed from: a  reason: collision with root package name */
        private final List<F> f15289a;

        /* renamed from: b  reason: collision with root package name */
        private final a<F, T> f15290b;

        /* loaded from: classes3.dex */
        public interface a<F, T> {
            T convert(F f10);
        }

        public h(List<F> list, a<F, T> aVar) {
            this.f15289a = list;
            this.f15290b = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i9) {
            return this.f15290b.convert(this.f15289a.get(i9));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f15289a.size();
        }
    }

    /* loaded from: classes3.dex */
    public interface i extends j<Long> {
        void I0(long j10);

        @Override // 
        j<Long> b(int i9);

        long getLong(int i9);
    }

    /* loaded from: classes3.dex */
    public interface j<E> extends List<E>, RandomAccess {
        void C();

        j<E> b(int i9);

        boolean r0();
    }

    static {
        byte[] bArr = new byte[0];
        f15286d = bArr;
        f15287e = ByteBuffer.wrap(bArr);
        f15288f = p.m(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T b(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static <T extends o1> T c(Class<T> cls) {
        try {
            java.lang.reflect.Method method = cls.getMethod("getDefaultInstance", new Class[0]);
            return (T) method.invoke(method, new Object[0]);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to get default instance for " + cls, e10);
        }
    }

    public static int d(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int e(byte[] bArr) {
        return f(bArr, 0, bArr.length);
    }

    static int f(byte[] bArr, int i9, int i10) {
        int l10 = l(i10, bArr, i9, i10);
        if (l10 == 0) {
            return 1;
        }
        return l10;
    }

    public static int g(c cVar) {
        return cVar.getNumber();
    }

    public static int h(List<? extends c> list) {
        int i9 = 1;
        for (c cVar : list) {
            i9 = (i9 * 31) + g(cVar);
        }
        return i9;
    }

    public static int i(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean j(byte[] bArr) {
        return n3.s(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object k(Object obj, Object obj2) {
        return ((o1) obj).toBuilder().c0((o1) obj2).I();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i9, byte[] bArr, int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            i9 = (i9 * 31) + bArr[i12];
        }
        return i9;
    }

    public static String m(byte[] bArr) {
        return new String(bArr, f15284b);
    }
}
