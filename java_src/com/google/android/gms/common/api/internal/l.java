package com.google.android.gms.common.api.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ int f7569a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o f7570b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(o oVar, int i9) {
        this.f7570b = oVar;
        this.f7569a = i9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7570b.j(this.f7569a);
    }
}
