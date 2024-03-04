package com.tencent.liteav.base.util;

import android.os.MessageQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final CustomHandler f31003a;

    /* renamed from: b  reason: collision with root package name */
    private final MessageQueue.IdleHandler f31004b;

    private e(CustomHandler customHandler, MessageQueue.IdleHandler idleHandler) {
        this.f31003a = customHandler;
        this.f31004b = idleHandler;
    }

    public static Runnable a(CustomHandler customHandler, MessageQueue.IdleHandler idleHandler) {
        return new e(customHandler, idleHandler);
    }

    @Override // java.lang.Runnable
    public final void run() {
        CustomHandler.a(this.f31003a, this.f31004b);
    }
}
