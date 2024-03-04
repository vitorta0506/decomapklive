package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.LiteavLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private boolean f32310a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length * 3) / 2];
        int i9 = 0;
        int i10 = 0;
        while (i9 < bArr.length) {
            if (i9 < bArr.length - 2 && bArr[i9] == 0) {
                int i11 = i9 + 1;
                if (bArr[i11] == 0) {
                    int i12 = i9 + 2;
                    if (bArr[i12] <= 3) {
                        int i13 = i10 + 1;
                        bArr2[i10] = bArr[i9];
                        int i14 = i13 + 1;
                        bArr2[i13] = bArr[i11];
                        i10 = i14 + 1;
                        bArr2[i14] = 3;
                        i9 = i12;
                    }
                }
            }
            bArr2[i10] = bArr[i9];
            i9++;
            i10++;
        }
        if (i10 != bArr.length) {
            byte[] bArr3 = new byte[i10];
            System.arraycopy(bArr2, 0, bArr3, 0, i10);
            return bArr3;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        q qVar = new q(inputStream, byteArrayOutputStream);
        qVar.b(8);
        int a10 = (int) qVar.a();
        qVar.b(8);
        qVar.a();
        qVar.d();
        boolean z10 = false;
        if (a10 == 100 || a10 == 110 || a10 == 122 || a10 == 144) {
            if (qVar.c() == 3) {
                qVar.b(1);
            }
            qVar.d();
            qVar.d();
            qVar.b(1);
            if (qVar.a(true)) {
                for (int i9 = 0; i9 < 8; i9++) {
                    if (qVar.a(true)) {
                        if (i9 < 6) {
                            qVar.c(16);
                        } else {
                            qVar.c(64);
                        }
                    }
                }
            }
        }
        qVar.d();
        int c10 = qVar.c();
        if (c10 == 0) {
            qVar.d();
        } else if (c10 == 1) {
            qVar.b(1);
            qVar.d();
            qVar.d();
            int c11 = qVar.c();
            for (int i10 = 0; i10 < c11; i10++) {
                qVar.d();
            }
        }
        qVar.c();
        qVar.b(1);
        qVar.d();
        qVar.d();
        if (!qVar.a(true)) {
            qVar.b(1);
        }
        qVar.b(1);
        if (qVar.a(true)) {
            qVar.d();
            qVar.d();
            qVar.d();
            qVar.d();
        }
        if (qVar.a(false)) {
            qVar.b(true);
            if (qVar.a(true) && ((int) qVar.a()) == 255) {
                qVar.b(16);
                qVar.b(16);
            }
            if (qVar.a(true)) {
                qVar.b(1);
            }
            if (qVar.a(true)) {
                qVar.b(3);
                qVar.b(1);
                if (qVar.a(true)) {
                    qVar.b(8);
                    qVar.b(8);
                    qVar.b(8);
                }
            }
            if (qVar.a(true)) {
                qVar.d();
                qVar.d();
            }
            if (qVar.a(true)) {
                qVar.b(32);
                qVar.b(32);
                qVar.b(1);
            }
            boolean a11 = qVar.a(true);
            if (a11) {
                a(qVar);
            }
            boolean a12 = qVar.a(true);
            if (a12) {
                a(qVar);
            }
            if (a11 || a12) {
                qVar.b(1);
            }
            qVar.b(1);
            if (qVar.a(false)) {
                qVar.b(true);
                qVar.a(true);
                qVar.d();
                qVar.d();
                qVar.d();
                qVar.d();
                qVar.d();
                if (!this.f32310a) {
                    LiteavLog.w("H264SPSModifier", "decode: do not add max_dec_frame_buffering when it is ".concat(String.valueOf(qVar.b())));
                    this.f32310a = true;
                }
            } else {
                qVar.b(true);
                qVar.b(true);
                qVar.d(0);
                qVar.d(0);
                qVar.d(10);
                qVar.d(10);
                qVar.d(0);
                qVar.d(1);
                if (!this.f32310a) {
                    LiteavLog.w("H264SPSModifier", "decode: add max_dec_frame_buffering 1 when it is no exist");
                    this.f32310a = true;
                }
                z10 = true;
            }
            if (!z10) {
                return null;
            }
        } else {
            qVar.b(true);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(false);
            qVar.b(true);
            qVar.b(true);
            qVar.d(0);
            qVar.d(0);
            qVar.d(10);
            qVar.d(10);
            qVar.d(0);
            qVar.d(1);
            if (!this.f32310a) {
                LiteavLog.w("H264SPSModifier", "decode: add max_dec_frame_buffering 1 when vui is no exist");
                this.f32310a = true;
            }
        }
        qVar.e();
        return byteArrayOutputStream.toByteArray();
    }

    private static void a(q qVar) throws IOException {
        int c10 = qVar.c();
        qVar.a(4);
        qVar.a(4);
        for (int i9 = 0; i9 <= c10; i9++) {
            qVar.d();
            qVar.d();
            qVar.a(1);
        }
        qVar.a(5);
        qVar.a(5);
        qVar.a(5);
        qVar.a(5);
    }
}
