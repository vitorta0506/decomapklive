package io.grpc.alts.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes5.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private o f41973a = new o();

    /* renamed from: b  reason: collision with root package name */
    private final h0 f41974b;

    public w(h0 h0Var) {
        this.f41974b = (h0) com.google.common.base.o.s(h0Var);
    }

    private static /* synthetic */ void a(Throwable th2, AutoCloseable autoCloseable) {
        if (th2 == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th3) {
            th2.addSuppressed(th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f41974b.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0 c(kg.k kVar) {
        this.f41973a = null;
        return this.f41974b.d(kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0 d() throws GeneralSecurityException {
        com.google.common.base.o.z(!this.f41974b.b());
        return this.f41974b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object e() throws GeneralSecurityException {
        com.google.common.base.o.z(!this.f41974b.b());
        return this.f41974b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(kg.j jVar) throws GeneralSecurityException {
        ByteBuffer[] c10;
        com.google.common.base.o.A(this.f41973a != null, "protector already created");
        o oVar = this.f41973a;
        try {
            int i9 = 0;
            for (ByteBuffer byteBuffer : oVar.c(jVar)) {
                if (byteBuffer.hasRemaining()) {
                    int position = byteBuffer.position();
                    this.f41974b.e(byteBuffer);
                    i9 += byteBuffer.position() - position;
                    if (byteBuffer.position() == position) {
                        break;
                    }
                }
            }
            jVar.L2(jVar.K2() + i9);
            a(null, oVar);
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f41974b.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(kg.j jVar) throws GeneralSecurityException {
        ByteBuffer[] b10;
        com.google.common.base.o.A(this.f41973a != null, "protector already created");
        o oVar = this.f41973a;
        try {
            int i9 = 0;
            boolean z10 = false;
            for (ByteBuffer byteBuffer : oVar.b(jVar)) {
                if (byteBuffer.hasRemaining()) {
                    int position = byteBuffer.position();
                    boolean f10 = this.f41974b.f(byteBuffer);
                    i9 += byteBuffer.position() - position;
                    z10 = f10;
                    if (f10) {
                        break;
                    }
                }
            }
            jVar.R1(jVar.Q1() + i9);
            a(null, oVar);
            return z10;
        } finally {
        }
    }
}
