package io.grpc;

import io.grpc.r;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
final class e1 extends r.g {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f42323a = Logger.getLogger(e1.class.getName());

    /* renamed from: b  reason: collision with root package name */
    static final ThreadLocal<r> f42324b = new ThreadLocal<>();

    @Override // io.grpc.r.g
    public r b() {
        r rVar = f42324b.get();
        return rVar == null ? r.f45316e : rVar;
    }

    @Override // io.grpc.r.g
    public void c(r rVar, r rVar2) {
        if (b() != rVar) {
            f42323a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (rVar2 != r.f45316e) {
            f42324b.set(rVar2);
        } else {
            f42324b.set(null);
        }
    }

    @Override // io.grpc.r.g
    public r d(r rVar) {
        r b10 = b();
        f42324b.set(rVar);
        return b10;
    }
}
