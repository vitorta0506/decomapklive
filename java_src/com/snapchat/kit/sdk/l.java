package com.snapchat.kit.sdk;

import okhttp3.Cache;
/* loaded from: classes4.dex */
public final class l implements eg.c<Cache> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29581a;

    private l(k kVar) {
        this.f29581a = kVar;
    }

    public static eg.c<Cache> a(k kVar) {
        return new l(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (Cache) eg.d.b(this.f29581a.o(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
