package com.snapchat.kit.sdk;

import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
/* loaded from: classes4.dex */
public final class y implements eg.c<he.c> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29608a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<com.snapchat.kit.sdk.core.config.f> f29609b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<he.d> f29610c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<de.b<SkateEvent>> f29611d;

    /* renamed from: e  reason: collision with root package name */
    private final fi.a<f> f29612e;

    /* renamed from: f  reason: collision with root package name */
    private final fi.a<SnapKitInitType> f29613f;

    private y(k kVar, fi.a<com.snapchat.kit.sdk.core.config.f> aVar, fi.a<he.d> aVar2, fi.a<de.b<SkateEvent>> aVar3, fi.a<f> aVar4, fi.a<SnapKitInitType> aVar5) {
        this.f29608a = kVar;
        this.f29609b = aVar;
        this.f29610c = aVar2;
        this.f29611d = aVar3;
        this.f29612e = aVar4;
        this.f29613f = aVar5;
    }

    public static eg.c<he.c> a(k kVar, fi.a<com.snapchat.kit.sdk.core.config.f> aVar, fi.a<he.d> aVar2, fi.a<de.b<SkateEvent>> aVar3, fi.a<f> aVar4, fi.a<SnapKitInitType> aVar5) {
        return new y(kVar, aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (he.c) eg.d.b(this.f29608a.g(this.f29609b.get(), this.f29610c.get(), this.f29611d.get(), this.f29612e.get(), this.f29613f.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
