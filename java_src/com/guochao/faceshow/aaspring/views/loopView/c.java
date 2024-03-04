package com.guochao.faceshow.aaspring.views.loopView;

import android.os.Handler;
import android.os.Message;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
/* loaded from: classes3.dex */
final class c extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final LoopView f24418a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(LoopView loopView) {
        this.f24418a = loopView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i9 = message.what;
        if (i9 == 1000) {
            this.f24418a.invalidate();
        } else if (i9 == 2000) {
            removeMessages(2001);
            this.f24418a.l(LoopView.ACTION.FLING);
        } else if (i9 != 3000) {
        } else {
            this.f24418a.i();
        }
    }
}
