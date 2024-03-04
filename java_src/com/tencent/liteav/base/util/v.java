package com.tencent.liteav.base.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes4.dex */
public final class v extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private int f31039a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31040b;

    /* renamed from: c  reason: collision with root package name */
    private final a f31041c;

    /* loaded from: classes4.dex */
    public interface a {
        void onTimeout();
    }

    public v(Looper looper, a aVar) {
        super(looper);
        this.f31040b = false;
        this.f31041c = aVar;
    }

    public final synchronized void a(int i9, int i10) {
        a();
        this.f31039a = i10;
        this.f31040b = true;
        sendEmptyMessageDelayed(0, i9);
    }

    @Override // android.os.Handler
    public final synchronized void handleMessage(Message message) {
        if (this.f31040b) {
            removeMessages(0);
            sendEmptyMessageDelayed(0, this.f31039a);
        }
        a aVar = this.f31041c;
        if (aVar != null) {
            aVar.onTimeout();
        }
    }

    public final synchronized void a() {
        while (hasMessages(0)) {
            removeMessages(0);
        }
        this.f31040b = false;
    }
}
