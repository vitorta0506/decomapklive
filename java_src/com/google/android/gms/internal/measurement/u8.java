package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.u8;
import com.google.android.gms.internal.measurement.x8;
import java.io.IOException;
/* loaded from: classes2.dex */
public class u8<MessageType extends x8<MessageType, BuilderType>, BuilderType extends u8<MessageType, BuilderType>> extends h7<MessageType, BuilderType> {

    /* renamed from: a  reason: collision with root package name */
    private final x8 f8365a;

    /* renamed from: b  reason: collision with root package name */
    protected x8 f8366b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f8367c = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public u8(MessageType messagetype) {
        this.f8365a = messagetype;
        this.f8366b = (x8) messagetype.v(4, null, null);
    }

    private static final void k(x8 x8Var, x8 x8Var2) {
        ha.a().b(x8Var.getClass()).e(x8Var, x8Var2);
    }

    @Override // com.google.android.gms.internal.measurement.aa
    public final /* synthetic */ z9 f() {
        return this.f8365a;
    }

    @Override // com.google.android.gms.internal.measurement.h7
    protected final /* synthetic */ h7 h(i7 i7Var) {
        m((x8) i7Var);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.h7
    public final /* bridge */ /* synthetic */ h7 i(byte[] bArr, int i9, int i10) throws zzko {
        n(bArr, 0, i10, k8.f8168c);
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.h7
    public final /* bridge */ /* synthetic */ h7 j(byte[] bArr, int i9, int i10, k8 k8Var) throws zzko {
        n(bArr, 0, i10, k8Var);
        return this;
    }

    /* renamed from: l */
    public final u8 clone() {
        u8 u8Var = (u8) this.f8365a.v(5, null, null);
        u8Var.m(p0());
        return u8Var;
    }

    public final u8 m(x8 x8Var) {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        k(this.f8366b, x8Var);
        return this;
    }

    public final u8 n(byte[] bArr, int i9, int i10, k8 k8Var) throws zzko {
        if (this.f8367c) {
            q();
            this.f8367c = false;
        }
        try {
            ha.a().b(this.f8366b.getClass()).h(this.f8366b, bArr, 0, i10, new l7(k8Var));
            return this;
        } catch (zzko e10) {
            throw e10;
        } catch (IOException e11) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
        } catch (IndexOutOfBoundsException unused) {
            throw zzko.zzf();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (r3 != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final MessageType o() {
        /*
            r5 = this;
            com.google.android.gms.internal.measurement.x8 r0 = r5.p0()
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r0.v(r1, r2, r2)
            java.lang.Byte r3 = (java.lang.Byte) r3
            byte r3 = r3.byteValue()
            if (r3 != r1) goto L13
            goto L30
        L13:
            if (r3 == 0) goto L31
            com.google.android.gms.internal.measurement.ha r3 = com.google.android.gms.internal.measurement.ha.a()
            java.lang.Class r4 = r0.getClass()
            com.google.android.gms.internal.measurement.ka r3 = r3.b(r4)
            boolean r3 = r3.g(r0)
            if (r1 == r3) goto L29
            r1 = r2
            goto L2a
        L29:
            r1 = r0
        L2a:
            r4 = 2
            r0.v(r4, r1, r2)
            if (r3 == 0) goto L31
        L30:
            return r0
        L31:
            com.google.android.gms.internal.measurement.zzmm r1 = new com.google.android.gms.internal.measurement.zzmm
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u8.o():com.google.android.gms.internal.measurement.x8");
    }

    @Override // com.google.android.gms.internal.measurement.y9
    /* renamed from: p */
    public MessageType p0() {
        if (this.f8367c) {
            return (MessageType) this.f8366b;
        }
        x8 x8Var = this.f8366b;
        ha.a().b(x8Var.getClass()).c(x8Var);
        this.f8367c = true;
        return (MessageType) this.f8366b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
        x8 x8Var = (x8) this.f8366b.v(4, null, null);
        k(x8Var, this.f8366b);
        this.f8366b = x8Var;
    }
}
