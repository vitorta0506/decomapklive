package com.snapchat.kit.sdk;
/* loaded from: classes4.dex */
public final class m implements eg.c<String> {

    /* renamed from: a  reason: collision with root package name */
    private final k f29582a;

    private m(k kVar) {
        this.f29582a = kVar;
    }

    public static eg.c<String> a(k kVar) {
        return new m(kVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        return (String) eg.d.b(this.f29582a.i(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
