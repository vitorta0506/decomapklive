package com.xiaomi.push;

import com.xiaomi.push.el;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public class ev extends el {

    /* renamed from: o  reason: collision with root package name */
    private static int f36862o = 10000;

    /* renamed from: p  reason: collision with root package name */
    private static int f36863p = 10000;

    /* renamed from: q  reason: collision with root package name */
    private static int f36864q = 10000;

    /* renamed from: r  reason: collision with root package name */
    private static int f36865r = 10485760;

    /* renamed from: s  reason: collision with root package name */
    private static int f36866s = 104857600;

    /* loaded from: classes5.dex */
    public static class a extends el.a {
        public a() {
            super(false, true);
        }

        public a(boolean z10, boolean z11, int i9) {
            super(z10, z11, i9);
        }

        @Override // com.xiaomi.push.el.a, com.xiaomi.push.er
        public p2 a(v2 v2Var) {
            ev evVar = new ev(v2Var, ((el.a) this).f329a, this.f36860b);
            int i9 = ((el.a) this).f36859a;
            if (i9 != 0) {
                evVar.L(i9);
            }
            return evVar;
        }
    }

    public ev(v2 v2Var, boolean z10, boolean z11) {
        super(v2Var, z10, z11);
    }

    @Override // com.xiaomi.push.el, com.xiaomi.push.p2
    public n2 f() {
        byte a10 = a();
        int c10 = c();
        if (c10 <= f36863p) {
            return new n2(a10, c10);
        }
        throw new eq(3, "Thrift list size " + c10 + " out of range!");
    }

    @Override // com.xiaomi.push.el, com.xiaomi.push.p2
    public o2 g() {
        byte a10 = a();
        byte a11 = a();
        int c10 = c();
        if (c10 <= f36862o) {
            return new o2(a10, a11, c10);
        }
        throw new eq(3, "Thrift map size " + c10 + " out of range!");
    }

    @Override // com.xiaomi.push.el, com.xiaomi.push.p2
    public r2 h() {
        byte a10 = a();
        int c10 = c();
        if (c10 <= f36864q) {
            return new r2(a10, c10);
        }
        throw new eq(3, "Thrift set size " + c10 + " out of range!");
    }

    @Override // com.xiaomi.push.el, com.xiaomi.push.p2
    public String j() {
        int c10 = c();
        if (c10 > f36865r) {
            throw new eq(3, "Thrift string size " + c10 + " out of range!");
        } else if (this.f37030a.f() >= c10) {
            try {
                String str = new String(this.f37030a.e(), this.f37030a.a(), c10, "UTF-8");
                this.f37030a.c(c10);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new ej("JVM DOES NOT SUPPORT UTF-8");
            }
        } else {
            return J(c10);
        }
    }

    @Override // com.xiaomi.push.el, com.xiaomi.push.p2
    public ByteBuffer k() {
        int c10 = c();
        if (c10 > f36866s) {
            throw new eq(3, "Thrift binary size " + c10 + " out of range!");
        }
        M(c10);
        if (this.f37030a.f() >= c10) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f37030a.e(), this.f37030a.a(), c10);
            this.f37030a.c(c10);
            return wrap;
        }
        byte[] bArr = new byte[c10];
        this.f37030a.g(bArr, 0, c10);
        return ByteBuffer.wrap(bArr);
    }
}
