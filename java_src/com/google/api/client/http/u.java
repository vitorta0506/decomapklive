package com.google.api.client.http;

import com.google.api.client.util.d0;
import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class u {

    /* renamed from: a  reason: collision with root package name */
    private long f11067a = -1;

    /* renamed from: b  reason: collision with root package name */
    private String f11068b;

    /* renamed from: c  reason: collision with root package name */
    private String f11069c;

    /* renamed from: d  reason: collision with root package name */
    private d0 f11070d;

    public abstract void a(String str, String str2) throws IOException;

    public abstract v b() throws IOException;

    public final String c() {
        return this.f11068b;
    }

    public final long d() {
        return this.f11067a;
    }

    public final String e() {
        return this.f11069c;
    }

    public final d0 f() {
        return this.f11070d;
    }

    public final void g(String str) throws IOException {
        this.f11068b = str;
    }

    public final void h(long j10) throws IOException {
        this.f11067a = j10;
    }

    public final void i(String str) throws IOException {
        this.f11069c = str;
    }

    public final void j(d0 d0Var) throws IOException {
        this.f11070d = d0Var;
    }

    public abstract void k(int i9, int i10) throws IOException;

    public abstract void l(int i9) throws IOException;
}
