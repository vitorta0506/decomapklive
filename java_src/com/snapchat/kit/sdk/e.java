package com.snapchat.kit.sdk;

import android.os.Handler;
/* loaded from: classes4.dex */
public final class e implements eg.c<Handler> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29512a;

    private e(k kVar) {
        this.f29512a = kVar;
    }

    public static eg.c<Handler> a(k kVar) {
        return new e(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (Handler) eg.d.b(k.r(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
