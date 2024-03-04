package com.snapchat.kit.sdk;

import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
/* loaded from: classes4.dex */
public final class d implements eg.c<SnapKitInitType> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29511a;

    private d(k kVar) {
        this.f29511a = kVar;
    }

    public static eg.c<SnapKitInitType> a(k kVar) {
        return new d(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (SnapKitInitType) eg.d.b(this.f29511a.d(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
