package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import java.nio.charset.Charset;
import java.security.PrivateKey;
/* loaded from: classes5.dex */
public final class PemPrivateKey extends io.grpc.netty.shaded.io.netty.util.b implements PrivateKey, f1 {
    private static final byte[] BEGIN_PRIVATE_KEY;
    private static final byte[] END_PRIVATE_KEY;
    private static final String PKCS8_FORMAT = "PKCS#8";
    private static final long serialVersionUID = 7978017465645018936L;
    private final kg.j content;

    static {
        Charset charset = io.grpc.netty.shaded.io.netty.util.h.f45018f;
        BEGIN_PRIVATE_KEY = "-----BEGIN PRIVATE KEY-----\n".getBytes(charset);
        END_PRIVATE_KEY = "\n-----END PRIVATE KEY-----\n".getBytes(charset);
    }

    private PemPrivateKey(kg.j jVar) {
        this.content = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f1 toPEM(kg.k kVar, boolean z10, PrivateKey privateKey) {
        if (privateKey instanceof f1) {
            return ((f1) privateKey).retain();
        }
        byte[] encoded = privateKey.getEncoded();
        if (encoded != null) {
            return toPEM(kVar, z10, encoded);
        }
        throw new IllegalArgumentException(privateKey.getClass().getName() + " does not support encoding");
    }

    public static PemPrivateKey valueOf(byte[] bArr) {
        return valueOf(kg.s0.k(bArr));
    }

    @Override // kg.l
    public kg.j content() {
        int refCnt = refCnt();
        if (refCnt > 0) {
            return this.content;
        }
        throw new IllegalReferenceCountException(refCnt);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    protected void deallocate() {
        v1.z(this.content);
    }

    @Override // javax.security.auth.Destroyable
    public void destroy() {
        release(refCnt());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.Key
    public String getFormat() {
        return PKCS8_FORMAT;
    }

    @Override // javax.security.auth.Destroyable
    public boolean isDestroyed() {
        return refCnt() == 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f1
    public boolean isSensitive() {
        return true;
    }

    public static PemPrivateKey valueOf(kg.j jVar) {
        return new PemPrivateKey(jVar);
    }

    /* renamed from: copy */
    public PemPrivateKey m1551copy() {
        return m1555replace(this.content.N());
    }

    /* renamed from: duplicate */
    public PemPrivateKey m1553duplicate() {
        return m1555replace(this.content.f0());
    }

    /* renamed from: replace */
    public PemPrivateKey m1555replace(kg.j jVar) {
        return new PemPrivateKey(jVar);
    }

    /* renamed from: retainedDuplicate */
    public PemPrivateKey m1557retainedDuplicate() {
        return m1555replace(this.content.V1());
    }

    static f1 toPEM(kg.k kVar, boolean z10, byte[] bArr) {
        kg.j k10 = kg.s0.k(bArr);
        try {
            kg.j r10 = v1.r(kVar, k10);
            byte[] bArr2 = BEGIN_PRIVATE_KEY;
            int length = bArr2.length + r10.P1();
            byte[] bArr3 = END_PRIVATE_KEY;
            int length2 = length + bArr3.length;
            kg.j h10 = z10 ? kVar.h(length2) : kVar.l(length2);
            h10.A2(bArr2);
            h10.x2(r10);
            h10.A2(bArr3);
            h1 h1Var = new h1(h10, true);
            v1.z(r10);
            return h1Var;
        } finally {
            v1.z(k10);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    public PemPrivateKey retain() {
        return (PemPrivateKey) super.retain();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    public PemPrivateKey touch() {
        this.content.q2();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    public PemPrivateKey retain(int i9) {
        return (PemPrivateKey) super.retain(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public PemPrivateKey touch(Object obj) {
        this.content.touch(obj);
        return this;
    }
}
