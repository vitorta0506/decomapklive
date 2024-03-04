package com.google.android.gms.internal.auth;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f7880a = Charset.forName("US-ASCII");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f7881b = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    static final Charset f7882c = Charset.forName("ISO-8859-1");

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f7883d;

    /* renamed from: e  reason: collision with root package name */
    public static final ByteBuffer f7884e;

    /* renamed from: f  reason: collision with root package name */
    public static final z f7885f;

    static {
        byte[] bArr = new byte[0];
        f7883d = bArr;
        f7884e = ByteBuffer.wrap(bArr);
        int i9 = z.f7907a;
        x xVar = new x(bArr, 0, 0, false, null);
        try {
            xVar.a(0);
            f7885f = xVar;
        } catch (zzfa e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static int a(byte[] bArr) {
        int length = bArr.length;
        int b10 = b(length, bArr, 0, length);
        if (b10 == 0) {
            return 1;
        }
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9, byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            i9 = (i9 * 31) + bArr[i12];
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(Object obj) {
        Objects.requireNonNull(obj);
        return obj;
    }
}
