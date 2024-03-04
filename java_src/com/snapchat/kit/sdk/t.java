package com.snapchat.kit.sdk;

import okhttp3.OkHttpClient;
/* loaded from: classes4.dex */
public final class t implements eg.c<OkHttpClient> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29601a;

    private t(k kVar) {
        this.f29601a = kVar;
    }

    public static eg.c<OkHttpClient> a(k kVar) {
        return new t(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (OkHttpClient) eg.d.b(k.p(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
