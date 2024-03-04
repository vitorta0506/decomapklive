package io.grpc.alts.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
final class d implements p {

    /* renamed from: e  reason: collision with root package name */
    private static final int f41846e = c.d();

    /* renamed from: a  reason: collision with root package name */
    private final a f41847a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f41848b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f41849c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f41850d = new byte[12];

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(byte[] bArr, boolean z10) {
        byte[] bArr2 = new byte[12];
        this.f41848b = bArr2;
        byte[] bArr3 = new byte[12];
        this.f41849c = bArr3;
        com.google.common.base.o.d(bArr.length == f41846e);
        bArr2 = z10 ? bArr3 : bArr2;
        bArr2[bArr2.length - 1] = ByteCompanionObject.MIN_VALUE;
        this.f41847a = new c(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e() {
        return f41846e;
    }

    static void f(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int i9 = 0;
        while (i9 < 8) {
            bArr[i9] = (byte) (bArr[i9] + 1);
            if (bArr[i9] != 0) {
                break;
            }
            i9++;
        }
        if (i9 != 8) {
            return;
        }
        System.arraycopy(bArr2, 0, bArr, 0, bArr.length);
        throw new GeneralSecurityException("Counter has overflowed.");
    }

    private byte[] g() throws GeneralSecurityException {
        f(this.f41849c, this.f41850d);
        return this.f41850d;
    }

    private byte[] h() throws GeneralSecurityException {
        f(this.f41848b, this.f41850d);
        return this.f41850d;
    }

    @Override // io.grpc.alts.internal.p
    public void a(kg.j jVar, kg.j jVar2) throws GeneralSecurityException {
        int P1 = jVar2.P1();
        com.google.common.base.o.d(P1 == jVar.t2());
        com.google.common.base.o.d(jVar.s1() == 1);
        ByteBuffer e12 = jVar.e1(jVar.K2(), jVar.t2());
        com.google.common.base.o.d(jVar2.s1() == 1);
        ByteBuffer r12 = jVar2.r1(jVar2.Q1(), P1);
        byte[] g10 = g();
        int position = e12.position();
        this.f41847a.b(e12, r12, g10);
        jVar.L2(jVar.K2() + (e12.position() - position));
        jVar2.R1(jVar.Q1() + P1);
        com.google.common.base.a0.a(jVar.t2() == 16);
    }

    @Override // io.grpc.alts.internal.p
    public void b(kg.j jVar, List<kg.j> list) throws GeneralSecurityException {
        com.google.common.base.o.d(jVar.s1() == 1);
        kg.j n22 = jVar.n2(jVar.K2(), jVar.t2());
        n22.L2(0);
        for (kg.j jVar2 : list) {
            n22.x2(jVar2);
        }
        com.google.common.base.a0.a(jVar.t2() == n22.P1() + 16);
        ByteBuffer e12 = jVar.e1(jVar.K2(), jVar.t2());
        ByteBuffer duplicate = e12.duplicate();
        duplicate.limit(e12.limit() - 16);
        byte[] h10 = h();
        int position = e12.position();
        this.f41847a.a(e12, duplicate, h10);
        jVar.L2(jVar.K2() + (e12.position() - position));
        com.google.common.base.a0.a(!jVar.q0());
    }

    @Override // io.grpc.alts.internal.p
    public void c(kg.j jVar, kg.j jVar2, List<kg.j> list) throws GeneralSecurityException {
        kg.j n22 = jVar.n2(jVar.K2(), jVar.t2());
        n22.L2(0);
        for (kg.j jVar3 : list) {
            n22.x2(jVar3);
        }
        n22.x2(jVar2);
        a(jVar, n22);
    }

    @Override // io.grpc.alts.internal.p
    public int d() {
        return 16;
    }

    @Override // io.grpc.alts.internal.p
    public void destroy() {
    }
}
