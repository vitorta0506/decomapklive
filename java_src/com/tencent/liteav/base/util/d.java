package com.tencent.liteav.base.util;

import android.os.MessageQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements MessageQueue.IdleHandler {

    /* renamed from: a  reason: collision with root package name */
    private final CustomHandler f31002a;

    private d(CustomHandler customHandler) {
        this.f31002a = customHandler;
    }

    public static MessageQueue.IdleHandler a(CustomHandler customHandler) {
        return new d(customHandler);
    }

    @Override // android.os.MessageQueue.IdleHandler
    public final boolean queueIdle() {
        return CustomHandler.a(this.f31002a);
    }
}
