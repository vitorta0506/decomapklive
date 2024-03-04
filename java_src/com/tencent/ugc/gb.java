package com.tencent.ugc;

import android.os.Handler;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gb implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34980a;

    private gb(UGCVideoProcessor uGCVideoProcessor) {
        this.f34980a = uGCVideoProcessor;
    }

    public static Handler.Callback a(UGCVideoProcessor uGCVideoProcessor) {
        return new gb(uGCVideoProcessor);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMessage;
        handleMessage = this.f34980a.handleMessage(message);
        return handleMessage;
    }
}
