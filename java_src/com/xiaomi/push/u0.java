package com.xiaomi.push;

import android.os.Build;
import com.facebook.internal.security.CertificateUtil;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.TimeZone;
import java.util.zip.Adler32;
/* loaded from: classes5.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f37455a = ByteBuffer.allocate(2048);

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f37456b = ByteBuffer.allocate(4);

    /* renamed from: c  reason: collision with root package name */
    private Adler32 f37457c = new Adler32();

    /* renamed from: d  reason: collision with root package name */
    private y0 f37458d;

    /* renamed from: e  reason: collision with root package name */
    private OutputStream f37459e;

    /* renamed from: f  reason: collision with root package name */
    private int f37460f;

    /* renamed from: g  reason: collision with root package name */
    private int f37461g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f37462h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(OutputStream outputStream, y0 y0Var) {
        this.f37459e = new BufferedOutputStream(outputStream);
        this.f37458d = y0Var;
        TimeZone timeZone = TimeZone.getDefault();
        this.f37460f = timeZone.getRawOffset() / 3600000;
        this.f37461g = timeZone.useDaylightTime() ? 1 : 0;
    }

    public int a(r0 r0Var) {
        int s10 = r0Var.s();
        if (s10 > 32768) {
            tf.c.l("Blob size=" + s10 + " should be less than 32768 Drop blob chid=" + r0Var.a() + " id=" + r0Var.w());
            return 0;
        }
        this.f37455a.clear();
        int i9 = s10 + 8 + 4;
        if (i9 > this.f37455a.capacity() || this.f37455a.capacity() > 4096) {
            this.f37455a = ByteBuffer.allocate(i9);
        }
        this.f37455a.putShort((short) -15618);
        this.f37455a.putShort((short) 5);
        this.f37455a.putInt(s10);
        int position = this.f37455a.position();
        this.f37455a = r0Var.e(this.f37455a);
        if (!"CONN".equals(r0Var.d())) {
            if (this.f37462h == null) {
                this.f37462h = this.f37458d.S();
            }
            com.xiaomi.push.service.i0.j(this.f37462h, this.f37455a.array(), true, position, s10);
        }
        this.f37457c.reset();
        this.f37457c.update(this.f37455a.array(), 0, this.f37455a.position());
        this.f37456b.putInt(0, (int) this.f37457c.getValue());
        this.f37459e.write(this.f37455a.array(), 0, this.f37455a.position());
        this.f37459e.write(this.f37456b.array(), 0, 4);
        this.f37459e.flush();
        int position2 = this.f37455a.position() + 4;
        tf.c.t("[Slim] Wrote {cmd=" + r0Var.d() + ";chid=" + r0Var.a() + ";len=" + position2 + "}");
        return position2;
    }

    public void b() {
        a0 a0Var = new a0();
        a0Var.k(106);
        a0Var.w(com.xiaomi.push.service.o0.f());
        a0Var.q(48);
        a0Var.A(this.f37458d.q());
        int i9 = Build.VERSION.SDK_INT;
        a0Var.v(i9);
        byte[] h10 = this.f37458d.b().h();
        if (h10 != null) {
            a0Var.l(x.m(h10));
        }
        r0 r0Var = new r0();
        r0Var.g(0);
        r0Var.j("CONN", null);
        r0Var.h(0L, "xiaomi.com", null);
        r0Var.l(a0Var.h(), null);
        a(r0Var);
        tf.c.l("[slim] open conn: andver=" + i9 + " sdk=48 tz=" + this.f37460f + CertificateUtil.DELIMITER + this.f37461g + " Model=" + Build.MODEL);
    }

    public void c() {
        r0 r0Var = new r0();
        r0Var.j("CLOSE", null);
        a(r0Var);
        this.f37459e.close();
    }
}
