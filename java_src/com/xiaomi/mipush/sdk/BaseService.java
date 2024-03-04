package com.xiaomi.mipush.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public abstract class BaseService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private a f36198a;

    /* loaded from: classes5.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<BaseService> f36199a;

        public a(WeakReference<BaseService> weakReference) {
            this.f36199a = weakReference;
        }

        public void a() {
            if (hasMessages(1001)) {
                removeMessages(1001);
            }
            sendEmptyMessageDelayed(1001, 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<BaseService> weakReference;
            BaseService baseService;
            if (message.what != 1001 || (weakReference = this.f36199a) == null || (baseService = weakReference.get()) == null) {
                return;
            }
            tf.c.t("TimeoutHandler " + baseService.toString() + " kill self");
            if (!baseService.mo1403a()) {
                baseService.stopSelf();
                return;
            }
            tf.c.t("TimeoutHandler has job");
            sendEmptyMessageDelayed(1001, 1000L);
        }
    }

    /* renamed from: a */
    protected abstract boolean mo1403a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i9) {
        super.onStart(intent, i9);
        if (this.f36198a == null) {
            this.f36198a = new a(new WeakReference(this));
        }
        this.f36198a.a();
    }
}
