package com.google.api.client.http;

import com.google.api.client.util.d0;
import com.google.api.client.util.z;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class h implements d0 {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f11000a;

    /* renamed from: b  reason: collision with root package name */
    private final g f11001b;

    public h(d0 d0Var, g gVar) {
        this.f11000a = (d0) z.d(d0Var);
        this.f11001b = (g) z.d(gVar);
    }

    @Override // com.google.api.client.util.d0
    public void writeTo(OutputStream outputStream) throws IOException {
        this.f11001b.a(this.f11000a, outputStream);
    }
}
