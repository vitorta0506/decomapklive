package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4457a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f4458b = new Handler(Looper.getMainLooper(), new a());

    /* loaded from: classes.dex */
    private static final class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((u) message.obj).recycle();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(u<?> uVar, boolean z10) {
        if (!this.f4457a && !z10) {
            this.f4457a = true;
            uVar.recycle();
            this.f4457a = false;
        }
        this.f4458b.obtainMessage(1, uVar).sendToTarget();
    }
}
