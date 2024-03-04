package com.snapchat.kit.sdk;

import android.content.SharedPreferences;
import com.google.gson.Gson;
/* loaded from: classes4.dex */
public final class p implements eg.c<be.d> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29586a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<SharedPreferences> f29587b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<Gson> f29588c;

    private p(k kVar, fi.a<SharedPreferences> aVar, fi.a<Gson> aVar2) {
        this.f29586a = kVar;
        this.f29587b = aVar;
        this.f29588c = aVar2;
    }

    public static eg.c<be.d> a(k kVar, fi.a<SharedPreferences> aVar, fi.a<Gson> aVar2) {
        return new p(kVar, aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (be.d) eg.d.b(k.a(this.f29587b.get(), this.f29588c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
