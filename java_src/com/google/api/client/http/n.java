package com.google.api.client.http;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final s f11051a;

    /* renamed from: b  reason: collision with root package name */
    private final o f11052b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(s sVar, o oVar) {
        this.f11051a = sVar;
        this.f11052b = oVar;
    }

    public m a(d dVar) throws IOException {
        return c("GET", dVar, null);
    }

    public m b(d dVar, f fVar) throws IOException {
        return c("POST", dVar, fVar);
    }

    public m c(String str, d dVar, f fVar) throws IOException {
        m a10 = this.f11051a.a();
        if (dVar != null) {
            a10.v(dVar);
        }
        o oVar = this.f11052b;
        if (oVar != null) {
            oVar.b(a10);
        }
        a10.s(str);
        if (fVar != null) {
            a10.o(fVar);
        }
        return a10;
    }
}
