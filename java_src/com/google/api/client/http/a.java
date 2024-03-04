package com.google.api.client.http;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public abstract class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private l f10984a;

    /* renamed from: b  reason: collision with root package name */
    private long f10985b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str) {
        this(str == null ? null : new l(str));
    }

    public static long d(f fVar) throws IOException {
        if (fVar.b()) {
            return com.google.api.client.util.n.a(fVar);
        }
        return -1L;
    }

    @Override // com.google.api.client.http.f
    public long a() throws IOException {
        if (this.f10985b == -1) {
            this.f10985b = c();
        }
        return this.f10985b;
    }

    @Override // com.google.api.client.http.f
    public boolean b() {
        return true;
    }

    protected long c() throws IOException {
        return d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Charset e() {
        l lVar = this.f10984a;
        if (lVar != null && lVar.d() != null) {
            return this.f10984a.d();
        }
        return StandardCharsets.ISO_8859_1;
    }

    @Override // com.google.api.client.http.f
    public String getType() {
        l lVar = this.f10984a;
        if (lVar == null) {
            return null;
        }
        return lVar.a();
    }

    protected a(l lVar) {
        this.f10985b = -1L;
        this.f10984a = lVar;
    }
}
