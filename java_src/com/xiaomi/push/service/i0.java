package com.xiaomi.push.service;

import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ContainerUtils;
import kotlin.UByte;
/* loaded from: classes5.dex */
public class i0 {

    /* renamed from: d  reason: collision with root package name */
    private int f37272d = -666;

    /* renamed from: a  reason: collision with root package name */
    private byte[] f37269a = new byte[256];

    /* renamed from: c  reason: collision with root package name */
    private int f37271c = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f37270b = 0;

    public static int b(byte b10) {
        return b10 >= 0 ? b10 : b10 + UByte.MIN_VALUE;
    }

    private void c() {
        this.f37271c = 0;
        this.f37270b = 0;
    }

    private void d(int i9, byte[] bArr, boolean z10) {
        int length = bArr.length;
        for (int i10 = 0; i10 < 256; i10++) {
            this.f37269a[i10] = (byte) i10;
        }
        this.f37271c = 0;
        this.f37270b = 0;
        while (true) {
            int i11 = this.f37270b;
            if (i11 >= i9) {
                break;
            }
            int b10 = ((this.f37271c + b(this.f37269a[i11])) + b(bArr[this.f37270b % length])) % 256;
            this.f37271c = b10;
            f(this.f37269a, this.f37270b, b10);
            this.f37270b++;
        }
        if (i9 != 256) {
            this.f37272d = ((this.f37271c + b(this.f37269a[i9])) + b(bArr[i9 % length])) % 256;
        }
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("S_");
            int i12 = i9 - 1;
            sb2.append(i12);
            sb2.append(CertificateUtil.DELIMITER);
            for (int i13 = 0; i13 <= i9; i13++) {
                sb2.append(" ");
                sb2.append(b(this.f37269a[i13]));
            }
            sb2.append("   j_");
            sb2.append(i12);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(this.f37271c);
            sb2.append("   j_");
            sb2.append(i9);
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append(this.f37272d);
            sb2.append("   S_");
            sb2.append(i12);
            sb2.append("[j_");
            sb2.append(i12);
            sb2.append("]=");
            sb2.append(b(this.f37269a[this.f37271c]));
            sb2.append("   S_");
            sb2.append(i12);
            sb2.append("[j_");
            sb2.append(i9);
            sb2.append("]=");
            sb2.append(b(this.f37269a[this.f37272d]));
            if (this.f37269a[1] != 0) {
                sb2.append("   S[1]!=0");
            }
            tf.c.l(sb2.toString());
        }
    }

    private void e(byte[] bArr) {
        d(256, bArr, false);
    }

    private static void f(byte[] bArr, int i9, int i10) {
        byte b10 = bArr[i9];
        bArr[i9] = bArr[i10];
        bArr[i10] = b10;
    }

    public static byte[] g(String str, String str2) {
        byte[] b10 = com.xiaomi.push.b.b(str);
        byte[] bytes = str2.getBytes();
        byte[] bArr = new byte[b10.length + 1 + bytes.length];
        for (int i9 = 0; i9 < b10.length; i9++) {
            bArr[i9] = b10[i9];
        }
        bArr[b10.length] = 95;
        for (int i10 = 0; i10 < bytes.length; i10++) {
            bArr[b10.length + 1 + i10] = bytes[i10];
        }
        return bArr;
    }

    public static byte[] h(byte[] bArr, String str) {
        return i(bArr, com.xiaomi.push.b.b(str));
    }

    public static byte[] i(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr2.length];
        i0 i0Var = new i0();
        i0Var.e(bArr);
        i0Var.c();
        for (int i9 = 0; i9 < bArr2.length; i9++) {
            bArr3[i9] = (byte) (bArr2[i9] ^ i0Var.a());
        }
        return bArr3;
    }

    public static byte[] j(byte[] bArr, byte[] bArr2, boolean z10, int i9, int i10) {
        byte[] bArr3;
        int i11;
        if (i9 < 0 || i9 > bArr2.length || i9 + i10 > bArr2.length) {
            throw new IllegalArgumentException("start = " + i9 + " len = " + i10);
        }
        if (z10) {
            bArr3 = bArr2;
            i11 = i9;
        } else {
            bArr3 = new byte[i10];
            i11 = 0;
        }
        i0 i0Var = new i0();
        i0Var.e(bArr);
        i0Var.c();
        for (int i12 = 0; i12 < i10; i12++) {
            bArr3[i11 + i12] = (byte) (bArr2[i9 + i12] ^ i0Var.a());
        }
        return bArr3;
    }

    byte a() {
        int i9 = (this.f37270b + 1) % 256;
        this.f37270b = i9;
        int b10 = (this.f37271c + b(this.f37269a[i9])) % 256;
        this.f37271c = b10;
        f(this.f37269a, this.f37270b, b10);
        byte[] bArr = this.f37269a;
        return bArr[(b(bArr[this.f37270b]) + b(this.f37269a[this.f37271c])) % 256];
    }
}
