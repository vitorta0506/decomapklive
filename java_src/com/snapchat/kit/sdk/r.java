package com.snapchat.kit.sdk;

import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
/* loaded from: classes4.dex */
public final class r implements eg.c<KitPluginType> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29590a;

    private r(k kVar) {
        this.f29590a = kVar;
    }

    public static eg.c<KitPluginType> a(k kVar) {
        return new r(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (KitPluginType) eg.d.b(this.f29590a.k(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
