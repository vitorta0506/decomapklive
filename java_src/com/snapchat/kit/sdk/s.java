package com.snapchat.kit.sdk;

import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
import okhttp3.OkHttpClient;
/* loaded from: classes4.dex */
public final class s implements eg.c<f> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29591a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<SecureSharedPreferences> f29592b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<be.d> f29593c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<ce.c> f29594d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<OkHttpClient> f29595e;

    /* renamed from: f  reason: collision with root package name */
    private final fi.a<ie.j> f29596f;

    /* renamed from: g  reason: collision with root package name */
    private final fi.a<Gson> f29597g;

    /* renamed from: h  reason: collision with root package name */
    private final fi.a<de.b<ServerEvent>> f29598h;

    /* renamed from: i  reason: collision with root package name */
    private final fi.a<ge.f> f29599i;

    /* renamed from: j  reason: collision with root package name */
    private final fi.a<de.b<OpMetric>> f29600j;

    private s(k kVar, fi.a<SecureSharedPreferences> aVar, fi.a<be.d> aVar2, fi.a<ce.c> aVar3, fi.a<OkHttpClient> aVar4, fi.a<ie.j> aVar5, fi.a<Gson> aVar6, fi.a<de.b<ServerEvent>> aVar7, fi.a<ge.f> aVar8, fi.a<de.b<OpMetric>> aVar9) {
        this.f29591a = kVar;
        this.f29592b = aVar;
        this.f29593c = aVar2;
        this.f29594d = aVar3;
        this.f29595e = aVar4;
        this.f29596f = aVar5;
        this.f29597g = aVar6;
        this.f29598h = aVar7;
        this.f29599i = aVar8;
        this.f29600j = aVar9;
    }

    public static eg.c<f> a(k kVar, fi.a<SecureSharedPreferences> aVar, fi.a<be.d> aVar2, fi.a<ce.c> aVar3, fi.a<OkHttpClient> aVar4, fi.a<ie.j> aVar5, fi.a<Gson> aVar6, fi.a<de.b<ServerEvent>> aVar7, fi.a<ge.f> aVar8, fi.a<de.b<OpMetric>> aVar9) {
        return new s(kVar, aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (f) eg.d.b(this.f29591a.f(this.f29592b.get(), this.f29593c.get(), this.f29594d.get(), this.f29595e.get(), eg.b.a(this.f29596f), this.f29597g.get(), eg.b.a(this.f29598h), this.f29599i.get(), eg.b.a(this.f29600j)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
