package com.guochao.faceshow.aaspring.views.loopView;

import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes3.dex */
final class b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    final LoopView f24417a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(LoopView loopView) {
        this.f24417a = loopView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f24417a.k(f11);
        return true;
    }
}
