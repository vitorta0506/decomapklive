package com.snapchat.kit.sdk;

import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public final class x implements eg.c<SharedPreferences> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29607a;

    private x(k kVar) {
        this.f29607a = kVar;
    }

    public static eg.c<SharedPreferences> a(k kVar) {
        return new x(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (SharedPreferences) eg.d.b(this.f29607a.n(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
