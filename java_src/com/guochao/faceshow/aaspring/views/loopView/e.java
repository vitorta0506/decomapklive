package com.guochao.faceshow.aaspring.views.loopView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final LoopView f24420a;

    /* renamed from: b  reason: collision with root package name */
    int f24421b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    int f24422c = 0;

    /* renamed from: d  reason: collision with root package name */
    int f24423d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(LoopView loopView, int i9) {
        this.f24420a = loopView;
        this.f24423d = i9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f24421b == Integer.MAX_VALUE) {
            this.f24421b = this.f24423d;
        }
        int i9 = this.f24421b;
        int i10 = (int) (i9 * 0.1f);
        this.f24422c = i10;
        if (i10 == 0) {
            if (i9 < 0) {
                this.f24422c = -1;
            } else {
                this.f24422c = 1;
            }
        }
        if (Math.abs(i9) <= 0) {
            this.f24420a.a();
            this.f24420a.f24387c.sendEmptyMessage(3000);
            return;
        }
        LoopView loopView = this.f24420a;
        loopView.f24403s += this.f24422c;
        loopView.f24387c.sendEmptyMessage(1000);
        this.f24421b -= this.f24422c;
    }
}
