package com.xiaomi.push;

import android.text.TextUtils;
import com.xiaomi.push.service.az;
import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.zip.Adler32;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class t0 {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f37441a = ByteBuffer.allocate(2048);

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f37442b = ByteBuffer.allocate(4);

    /* renamed from: c  reason: collision with root package name */
    private Adler32 f37443c = new Adler32();

    /* renamed from: d  reason: collision with root package name */
    private w0 f37444d = new w0();

    /* renamed from: e  reason: collision with root package name */
    private InputStream f37445e;

    /* renamed from: f  reason: collision with root package name */
    private y0 f37446f;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f37447g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f37448h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(InputStream inputStream, y0 y0Var) {
        this.f37445e = new BufferedInputStream(inputStream);
        this.f37446f = y0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.nio.ByteBuffer b() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.t0.b():java.nio.ByteBuffer");
    }

    private void d(ByteBuffer byteBuffer, int i9) {
        int position = byteBuffer.position();
        do {
            int read = this.f37445e.read(byteBuffer.array(), position, i9);
            if (read == -1) {
                throw new EOFException();
            }
            i9 -= read;
            position += read;
        } while (i9 > 0);
        byteBuffer.position(position);
    }

    private void f() {
        String str;
        StringBuilder sb2;
        boolean z10 = false;
        this.f37447g = false;
        r0 a10 = a();
        if ("CONN".equals(a10.d())) {
            b0 n9 = b0.n(a10.n());
            if (n9.p()) {
                this.f37446f.l(n9.o());
                z10 = true;
            }
            if (n9.t()) {
                x j10 = n9.j();
                r0 r0Var = new r0();
                r0Var.j("SYNC", "CONF");
                r0Var.l(j10.h(), null);
                this.f37446f.R(r0Var);
            }
            tf.c.l("[Slim] CONN: host = " + n9.r());
        }
        if (!z10) {
            tf.c.l("[Slim] Invalid CONN");
            throw new IOException("Invalid Connection");
        }
        this.f37448h = this.f37446f.S();
        while (!this.f37447g) {
            r0 a11 = a();
            this.f37446f.y();
            short f10 = a11.f();
            if (f10 != 1) {
                if (f10 != 2) {
                    if (f10 != 3) {
                        str = "[Slim] unknow blob type " + ((int) a11.f());
                        tf.c.l(str);
                    } else {
                        try {
                            this.f37446f.T(this.f37444d.a(a11.n(), this.f37446f));
                        } catch (Exception e10) {
                            e = e10;
                            sb2 = new StringBuilder();
                            sb2.append("[Slim] Parse packet from Blob chid=");
                            sb2.append(a11.a());
                            sb2.append("; Id=");
                            sb2.append(a11.w());
                            sb2.append(" failure:");
                            sb2.append(e.getMessage());
                            str = sb2.toString();
                            tf.c.l(str);
                        }
                    }
                } else if ("SECMSG".equals(a11.d()) && ((a11.a() == 2 || a11.a() == 3) && TextUtils.isEmpty(a11.q()))) {
                    try {
                        this.f37446f.T(this.f37444d.a(a11.o(az.c().b(Integer.valueOf(a11.a()).toString(), a11.y()).f37149i), this.f37446f));
                    } catch (Exception e11) {
                        e = e11;
                        sb2 = new StringBuilder();
                        sb2.append("[Slim] Parse packet from Blob chid=");
                        sb2.append(a11.a());
                        sb2.append("; Id=");
                        sb2.append(a11.w());
                        sb2.append(" failure:");
                        sb2.append(e.getMessage());
                        str = sb2.toString();
                        tf.c.l(str);
                    }
                }
            }
            this.f37446f.R(a11);
        }
    }

    r0 a() {
        int i9;
        ByteBuffer b10;
        try {
            b10 = b();
            i9 = b10.position();
        } catch (IOException e10) {
            e = e10;
            i9 = 0;
        }
        try {
            b10.flip();
            b10.position(8);
            r0 x0Var = i9 == 8 ? new x0() : r0.c(b10.slice());
            tf.c.t("[Slim] Read {cmd=" + x0Var.d() + ";chid=" + x0Var.a() + ";len=" + i9 + "}");
            return x0Var;
        } catch (IOException e11) {
            e = e11;
            if (i9 == 0) {
                i9 = this.f37441a.position();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[Slim] read Blob [");
            byte[] array = this.f37441a.array();
            if (i9 > 128) {
                i9 = 128;
            }
            sb2.append(d3.a(array, 0, i9));
            sb2.append("] Err:");
            sb2.append(e.getMessage());
            tf.c.l(sb2.toString());
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        try {
            f();
        } catch (IOException e10) {
            if (!this.f37447g) {
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f37447g = true;
    }
}
