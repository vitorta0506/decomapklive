package com.snapchat.kit.sdk;
/* loaded from: classes4.dex */
public final class z implements eg.c<SnapKitAppLifecycleObserver> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29614a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<he.c> f29615b;

    private z(k kVar, fi.a<he.c> aVar) {
        this.f29614a = kVar;
        this.f29615b = aVar;
    }

    public static eg.c<SnapKitAppLifecycleObserver> a(k kVar, fi.a<he.c> aVar) {
        return new z(kVar, aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (SnapKitAppLifecycleObserver) eg.d.b(k.c(this.f29615b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
