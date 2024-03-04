package com.xiaomi.push.service;

import com.xiaomi.push.service.q0;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
class r0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ q0 f37347a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0(q0 q0Var) {
        this.f37347a = q0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        try {
            concurrentHashMap = this.f37347a.f37336d;
            for (q0.a aVar : concurrentHashMap.values()) {
                aVar.run();
            }
        } catch (Exception e10) {
            tf.c.l("Sync job exception :" + e10.getMessage());
        }
        this.f37347a.f37335c = false;
    }
}
