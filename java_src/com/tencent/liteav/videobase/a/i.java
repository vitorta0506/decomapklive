package com.tencent.liteav.videobase.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f31680a;

    private i(h hVar) {
        this.f31680a = hVar;
    }

    public static Runnable a(h hVar) {
        return new i(hVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31680a.initFiltersAndInterceptors();
    }
}
