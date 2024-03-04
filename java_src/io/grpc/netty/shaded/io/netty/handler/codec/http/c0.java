package io.grpc.netty.shaded.io.netty.handler.codec.http;

import io.grpc.netty.shaded.io.netty.channel.p0;
import io.grpc.netty.shaded.io.netty.handler.codec.http.v;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kg.s0;
/* loaded from: classes5.dex */
public abstract class c0<H extends v> extends pg.m<Object> {

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f43905f;

    /* renamed from: g  reason: collision with root package name */
    private static final kg.j f43906g = s0.i(s0.g(2).u2(13).u2(10)).B();

    /* renamed from: h  reason: collision with root package name */
    private static final kg.j f43907h;

    /* renamed from: c  reason: collision with root package name */
    private int f43908c = 0;

    /* renamed from: d  reason: collision with root package name */
    private float f43909d = 256.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f43910e = 256.0f;

    static {
        byte[] bArr = {48, 13, 10, 13, 10};
        f43905f = bArr;
        f43907h = s0.i(s0.g(bArr.length).A2(bArr)).B();
    }

    private static int H(int i9) {
        return (i9 << 2) / 3;
    }

    private static long x(Object obj) {
        if (obj instanceof p) {
            return ((p) obj).content().P1();
        }
        if (obj instanceof kg.j) {
            return ((kg.j) obj).P1();
        }
        if (obj instanceof p0) {
            return ((p0) obj).count();
        }
        throw new IllegalStateException("unexpected message type: " + io.grpc.netty.shaded.io.netty.util.internal.b0.m(obj));
    }

    private static Object y(Object obj) {
        if (obj instanceof kg.j) {
            return ((kg.j) obj).retain();
        }
        if (obj instanceof p) {
            return ((p) obj).content().retain();
        }
        if (obj instanceof p0) {
            return ((p0) obj).retain();
        }
        throw new IllegalStateException("unexpected message type: " + io.grpc.netty.shaded.io.netty.util.internal.b0.m(obj));
    }

    private void z(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, long j10, List<Object> list) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 > 0) {
            String hexString = Long.toHexString(j10);
            kg.j l10 = mVar.P().l(hexString.length() + 2);
            l10.D2(hexString, io.grpc.netty.shaded.io.netty.util.h.f45018f);
            kg.n.b0(l10, 3338);
            list.add(l10);
            list.add(y(obj));
            list.add(f43906g.f0());
        }
        if (!(obj instanceof k0)) {
            if (i9 == 0) {
                list.add(y(obj));
                return;
            }
            return;
        }
        t x10 = ((k0) obj).x();
        if (x10.isEmpty()) {
            list.add(f43907h.f0());
            return;
        }
        kg.j l11 = mVar.P().l((int) this.f43910e);
        kg.n.a0(l11, 3149066);
        B(x10, l11);
        kg.n.b0(l11, 3338);
        this.f43910e = (H(l11.P1()) * 0.2f) + (this.f43910e * 0.8f);
        list.add(l11);
    }

    protected void B(t tVar, kg.j jVar) {
        Iterator<Map.Entry<CharSequence, CharSequence>> J = tVar.J();
        while (J.hasNext()) {
            Map.Entry<CharSequence, CharSequence> next = J.next();
            u.a(next.getKey(), next.getValue(), jVar);
        }
    }

    protected abstract void F(kg.j jVar, H h10) throws Exception;

    protected boolean G(H h10) {
        return false;
    }

    protected void I(H h10, boolean z10) {
    }

    @Override // pg.m
    public boolean s(Object obj) throws Exception {
        return (obj instanceof z) || (obj instanceof kg.j) || (obj instanceof p0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    @Override // pg.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void u(io.grpc.netty.shaded.io.netty.channel.m r12, java.lang.Object r13, java.util.List<java.lang.Object> r14) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.codec.http.c0.u(io.grpc.netty.shaded.io.netty.channel.m, java.lang.Object, java.util.List):void");
    }
}
