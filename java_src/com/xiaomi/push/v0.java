package com.xiaomi.push;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.GZIPInputStream;
/* loaded from: classes5.dex */
public class v0 {

    /* renamed from: e  reason: collision with root package name */
    public static final byte[] f37507e = {80, 85, 83, 72};

    /* renamed from: a  reason: collision with root package name */
    private short f37508a;

    /* renamed from: b  reason: collision with root package name */
    private byte f37509b;

    /* renamed from: c  reason: collision with root package name */
    private int f37510c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f37511d;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37512a = new c();

        /* renamed from: b  reason: collision with root package name */
        public static final d f37513b = new d();

        public static byte[] a(byte[] bArr) {
            return b(bArr, f37513b);
        }

        public static byte[] b(byte[] bArr, b bVar) {
            if (v0.f(bArr)) {
                v0 e10 = v0.e(bArr);
                return (e10.f37509b == 0 || e10.f37509b != bVar.a()) ? e10.f37511d : bVar.a(e10.f37511d, e10.f37510c);
            }
            return bArr;
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        byte a();

        byte[] a(byte[] bArr, int i9);
    }

    /* loaded from: classes5.dex */
    public static final class c {
    }

    /* loaded from: classes5.dex */
    public static final class d implements b {
        @Override // com.xiaomi.push.v0.b
        public byte a() {
            return (byte) 2;
        }

        @Override // com.xiaomi.push.v0.b
        public byte[] a(byte[] bArr, int i9) {
            GZIPInputStream gZIPInputStream = null;
            try {
                GZIPInputStream gZIPInputStream2 = new GZIPInputStream(new ByteArrayInputStream(bArr), i9);
                try {
                    byte[] bArr2 = new byte[i9];
                    gZIPInputStream2.read(bArr2);
                    try {
                        gZIPInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return bArr2;
                } catch (IOException unused2) {
                    gZIPInputStream = gZIPInputStream2;
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    gZIPInputStream = gZIPInputStream2;
                    if (gZIPInputStream != null) {
                        try {
                            gZIPInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused5) {
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    protected v0(byte b10, int i9, byte[] bArr) {
        this((short) 1, b10, i9, bArr);
    }

    protected v0(short s10, byte b10, int i9, byte[] bArr) {
        this.f37508a = s10;
        this.f37509b = b10;
        this.f37510c = i9;
        this.f37511d = bArr;
    }

    public static v0 c(byte b10, int i9, byte[] bArr) {
        return new v0(b10, i9, bArr);
    }

    public static v0 d(short s10, byte b10, int i9, byte[] bArr) {
        return new v0(s10, b10, i9, bArr);
    }

    public static v0 e(byte[] bArr) {
        if (f(bArr)) {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN);
            order.getInt();
            short s10 = order.getShort();
            byte b10 = order.get();
            int i9 = order.getInt();
            byte[] bArr2 = new byte[order.getInt()];
            order.get(bArr2);
            return d(s10, b10, i9, bArr2);
        }
        return c((byte) 0, bArr.length, bArr);
    }

    public static boolean f(byte[] bArr) {
        byte[] bArr2 = f37507e;
        return g(bArr2, bArr, bArr2.length);
    }

    public static boolean g(byte[] bArr, byte[] bArr2, int i9) {
        if (bArr.length < i9 || bArr2.length < i9) {
            return false;
        }
        for (int i10 = 0; i10 < i9; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }
}
