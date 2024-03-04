package com.guochao.faceshow.aaspring.views.loopView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final LoopView f24419a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(LoopView loopView) {
        this.f24419a = loopView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LoopView loopView = this.f24419a;
        loopView.f24388d.a(loopView.getSelectedItem());
    }
}
