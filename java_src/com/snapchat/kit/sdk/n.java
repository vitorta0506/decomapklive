package com.snapchat.kit.sdk;

import android.content.Context;
/* loaded from: classes4.dex */
public final class n implements eg.c<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29583a;

    private n(k kVar) {
        this.f29583a = kVar;
    }

    public static eg.c<Context> a(k kVar) {
        return new n(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (Context) eg.d.b(this.f29583a.h(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
