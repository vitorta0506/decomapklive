package com.xiaomi.push;

import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public class r0 {

    /* renamed from: f  reason: collision with root package name */
    private static String f37058f = b2.a(5) + "-";

    /* renamed from: g  reason: collision with root package name */
    private static long f37059g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f37060h = new byte[0];

    /* renamed from: a  reason: collision with root package name */
    private w f37061a;

    /* renamed from: b  reason: collision with root package name */
    private short f37062b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f37063c;

    /* renamed from: d  reason: collision with root package name */
    String f37064d;

    /* renamed from: e  reason: collision with root package name */
    int f37065e;

    public r0() {
        this.f37062b = (short) 2;
        this.f37063c = f37060h;
        this.f37064d = null;
        this.f37061a = new w();
        this.f37065e = 1;
    }

    r0(w wVar, short s10, byte[] bArr) {
        this.f37064d = null;
        this.f37061a = wVar;
        this.f37062b = s10;
        this.f37063c = bArr;
        this.f37065e = 2;
    }

    @Deprecated
    public static r0 b(r1 r1Var, String str) {
        int i9;
        r0 r0Var = new r0();
        try {
            i9 = Integer.parseInt(r1Var.m());
        } catch (Exception e10) {
            tf.c.l("Blob parse chid err " + e10.getMessage());
            i9 = 1;
        }
        r0Var.g(i9);
        r0Var.i(r1Var.l());
        r0Var.u(r1Var.q());
        r0Var.r(r1Var.s());
        r0Var.j("XMLMSG", null);
        try {
            r0Var.l(r1Var.f().getBytes("utf8"), str);
            if (TextUtils.isEmpty(str)) {
                r0Var.k((short) 3);
            } else {
                r0Var.k((short) 2);
                r0Var.j("SECMSG", null);
            }
        } catch (UnsupportedEncodingException e11) {
            tf.c.l("Blob setPayload err： " + e11.getMessage());
        }
        return r0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r0 c(ByteBuffer byteBuffer) {
        try {
            ByteBuffer slice = byteBuffer.slice();
            short s10 = slice.getShort(0);
            short s11 = slice.getShort(2);
            int i9 = slice.getInt(4);
            w wVar = new w();
            wVar.d(slice.array(), slice.arrayOffset() + 8, s11);
            byte[] bArr = new byte[i9];
            slice.position(s11 + 8);
            slice.get(bArr, 0, i9);
            return new r0(wVar, s10, bArr);
        } catch (Exception e10) {
            tf.c.l("read Blob err :" + e10.getMessage());
            throw new IOException("Malformed Input");
        }
    }

    public static synchronized String v() {
        String sb2;
        synchronized (r0.class) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(f37058f);
            long j10 = f37059g;
            f37059g = 1 + j10;
            sb3.append(Long.toString(j10));
            sb2 = sb3.toString();
        }
        return sb2;
    }

    public int a() {
        return this.f37061a.v();
    }

    public String d() {
        return this.f37061a.y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer e(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            byteBuffer = ByteBuffer.allocate(s());
        }
        byteBuffer.putShort(this.f37062b);
        byteBuffer.putShort((short) this.f37061a.a());
        byteBuffer.putInt(this.f37063c.length);
        int position = byteBuffer.position();
        this.f37061a.f(byteBuffer.array(), byteBuffer.arrayOffset() + position, this.f37061a.a());
        byteBuffer.position(position + this.f37061a.a());
        byteBuffer.put(this.f37063c);
        return byteBuffer;
    }

    public short f() {
        return this.f37062b;
    }

    public void g(int i9) {
        this.f37061a.l(i9);
    }

    public void h(long j10, String str, String str2) {
        if (j10 != 0) {
            this.f37061a.m(j10);
        }
        if (!TextUtils.isEmpty(str)) {
            this.f37061a.o(str);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f37061a.s(str2);
    }

    public void i(String str) {
        this.f37061a.G(str);
    }

    public void j(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command should not be empty");
        }
        this.f37061a.x(str);
        this.f37061a.k();
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f37061a.C(str2);
    }

    public void k(short s10) {
        this.f37062b = s10;
    }

    public void l(byte[] bArr, String str) {
        if (TextUtils.isEmpty(str)) {
            this.f37061a.w(0);
            this.f37063c = bArr;
            return;
        }
        this.f37061a.w(1);
        this.f37063c = com.xiaomi.push.service.i0.i(com.xiaomi.push.service.i0.g(str, w()), bArr);
    }

    public boolean m() {
        return this.f37061a.Q();
    }

    public byte[] n() {
        return s0.a(this, this.f37063c);
    }

    public byte[] o(String str) {
        if (this.f37061a.F() == 1) {
            return s0.a(this, com.xiaomi.push.service.i0.i(com.xiaomi.push.service.i0.g(str, w()), this.f37063c));
        }
        if (this.f37061a.F() == 0) {
            return s0.a(this, this.f37063c);
        }
        tf.c.l("unknow cipher = " + this.f37061a.F());
        return s0.a(this, this.f37063c);
    }

    public int p() {
        return this.f37061a.J();
    }

    public String q() {
        return this.f37061a.D();
    }

    public void r(String str) {
        this.f37064d = str;
    }

    public int s() {
        return this.f37061a.i() + 8 + this.f37063c.length;
    }

    public String t() {
        return this.f37061a.L();
    }

    public String toString() {
        return "Blob [chid=" + a() + "; Id=" + com.xiaomi.push.service.x.b(w()) + "; cmd=" + d() + "; type=" + ((int) f()) + "; from=" + y() + " ]";
    }

    public void u(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int indexOf = str.indexOf("@");
        try {
            long parseLong = Long.parseLong(str.substring(0, indexOf));
            int indexOf2 = str.indexOf(FileUtils.RES_PREFIX_STORAGE, indexOf);
            String substring = str.substring(indexOf + 1, indexOf2);
            String substring2 = str.substring(indexOf2 + 1);
            this.f37061a.m(parseLong);
            this.f37061a.o(substring);
            this.f37061a.s(substring2);
        } catch (Exception e10) {
            tf.c.l("Blob parse user err " + e10.getMessage());
        }
    }

    public String w() {
        String H = this.f37061a.H();
        if ("ID_NOT_AVAILABLE".equals(H)) {
            return null;
        }
        if (this.f37061a.N()) {
            return H;
        }
        String v10 = v();
        this.f37061a.G(v10);
        return v10;
    }

    public String x() {
        return this.f37064d;
    }

    public String y() {
        if (this.f37061a.u()) {
            return Long.toString(this.f37061a.j()) + "@" + this.f37061a.p() + FileUtils.RES_PREFIX_STORAGE + this.f37061a.t();
        }
        return null;
    }
}
