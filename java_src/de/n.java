package de;

import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public final class n implements eg.c<ge.i> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<SharedPreferences> f38082a;

    private n(fi.a<SharedPreferences> aVar) {
        this.f38082a = aVar;
    }

    public static eg.c<ge.i> a(fi.a<SharedPreferences> aVar) {
        return new n(aVar);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        ge.i iVar = new ge.i(this.f38082a.get());
        iVar.a();
        return (ge.i) eg.d.b(iVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
