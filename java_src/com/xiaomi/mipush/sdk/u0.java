package com.xiaomi.mipush.sdk;
/* loaded from: classes5.dex */
class u0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ NotificationClickedActivity f36297a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(NotificationClickedActivity notificationClickedActivity) {
        this.f36297a = notificationClickedActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        tf.c.v("clicked activity finish by timeout.");
        this.f36297a.finish();
    }
}
