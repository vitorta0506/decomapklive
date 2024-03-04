package com.google.firebase.messaging;

import com.google.firebase.messaging.threads.ThreadPriority;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class m {
    private static Executor a(String str) {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f4.a(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return a("Firebase-Messaging-File-Io");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService c() {
        return new ScheduledThreadPoolExecutor(1, new f4.a("Firebase-Messaging-Init"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService d() {
        return r6.b.a().a(new f4.a("Firebase-Messaging-Intent-Handle"), ThreadPriority.HIGH_SPEED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService e() {
        return Executors.newSingleThreadExecutor(new f4.a("Firebase-Messaging-Network-Io"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService f() {
        return Executors.newSingleThreadExecutor(new f4.a("Firebase-Messaging-Task"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService g() {
        return new ScheduledThreadPoolExecutor(1, new f4.a("Firebase-Messaging-Topics-Io"));
    }
}
