package com.guochao.faceshow.aaspring.views.loopView;

import android.util.Log;
/* loaded from: classes3.dex */
final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final float f24414a;

    /* renamed from: b  reason: collision with root package name */
    final LoopView f24415b;

    /* renamed from: c  reason: collision with root package name */
    float f24416c = 2.1474836E9f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LoopView loopView, float f10) {
        this.f24415b = loopView;
        this.f24414a = f10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f24416c == 2.1474836E9f) {
            if (Math.abs(this.f24414a) > 2000.0f) {
                if (this.f24414a > 0.0f) {
                    this.f24416c = 2000.0f;
                } else {
                    this.f24416c = -2000.0f;
                }
            } else {
                this.f24416c = this.f24414a;
            }
        }
        if (Math.abs(this.f24416c) >= 0.0f && Math.abs(this.f24416c) <= 20.0f) {
            Log.i("gy", "WHAT_SMOOTH_SCROLL_INERTIA");
            this.f24415b.f24387c.sendEmptyMessageDelayed(2001, 60L);
            this.f24415b.a();
            this.f24415b.f24387c.sendEmptyMessage(2000);
            return;
        }
        LoopView loopView = this.f24415b;
        int i9 = loopView.f24403s - ((int) ((this.f24416c * 10.0f) / 1000.0f));
        loopView.f24403s = i9;
        if (!loopView.f24400p) {
            float f10 = loopView.f24399o * loopView.f24394j;
            int i10 = loopView.f24404t;
            if (i9 <= ((int) ((-i10) * f10))) {
                this.f24416c = 40.0f;
                loopView.f24403s = (int) ((-i10) * f10);
            } else {
                LoopView loopView2 = this.f24415b;
                if (i9 >= ((int) (((loopView.f24391g.size() - 1) - loopView2.f24404t) * f10))) {
                    loopView2.f24403s = (int) (((loopView2.f24391g.size() - 1) - this.f24415b.f24404t) * f10);
                    this.f24416c = -40.0f;
                }
            }
        }
        float f11 = this.f24416c;
        if (f11 < 0.0f) {
            this.f24416c = f11 + 20.0f;
        } else {
            this.f24416c = f11 - 20.0f;
        }
        this.f24415b.f24387c.sendEmptyMessage(1000);
    }
}
