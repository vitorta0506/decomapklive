package com.snapchat.kit.sdk.core.config;

import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public final class h implements eg.c<f> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ConfigClient> f29497a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<SharedPreferences> f29498b;

    private h(fi.a<ConfigClient> aVar, fi.a<SharedPreferences> aVar2) {
        this.f29497a = aVar;
        this.f29498b = aVar2;
    }

    public static eg.c<f> a(fi.a<ConfigClient> aVar, fi.a<SharedPreferences> aVar2) {
        return new h(aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return new f(this.f29497a.get(), this.f29498b.get());
    }
}
