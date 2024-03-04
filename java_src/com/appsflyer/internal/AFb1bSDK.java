package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.PurchaseHandler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class AFb1bSDK implements AFc1ySDK {
    private ScheduledExecutorService AFInAppEventParameterName;
    private ExecutorService AFInAppEventType;
    private ExecutorService AFKeystoreWrapper;
    private AFb1xSDK AFLogger;
    private AFd1lSDK AFVersionDeclaration;
    private PurchaseHandler afDebugLog;
    private AFd1dSDK afErrorLog;
    private CreateOneLinkHttpTask afInfoLog;
    private AFb1cSDK afRDLog;
    private AFa1lSDK afWarnLog;
    private AFc1mSDK getLevel;
    private AFe1fSDK init;
    private final int valueOf = (int) TimeUnit.SECONDS.toMillis(30);
    public final AFb1dSDK values = new AFb1dSDK();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AFa1xSDK implements ThreadFactory {
        private static final AtomicInteger AFInAppEventParameterName = new AtomicInteger();
        private final AtomicInteger AFKeystoreWrapper = new AtomicInteger();

        public AFa1xSDK() {
            AFInAppEventParameterName.incrementAndGet();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int i9 = AFInAppEventParameterName.get();
            int incrementAndGet = this.AFKeystoreWrapper.incrementAndGet();
            StringBuilder sb2 = new StringBuilder("queue-");
            sb2.append(i9);
            sb2.append("-");
            sb2.append(incrementAndGet);
            return new Thread(runnable, sb2.toString());
        }
    }

    private synchronized AFb1xSDK onInstallConversionDataLoadedNative() {
        if (this.AFLogger == null) {
            this.AFLogger = new AFb1xSDK(new AFc1vSDK(this.valueOf), AFInAppEventType());
        }
        return this.AFLogger;
    }

    @NonNull
    public final synchronized ScheduledExecutorService AFInAppEventParameterName() {
        if (this.AFInAppEventParameterName == null) {
            this.AFInAppEventParameterName = Executors.newScheduledThreadPool(2);
        }
        return this.AFInAppEventParameterName;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    @NonNull
    public final synchronized ExecutorService AFInAppEventType() {
        if (this.AFKeystoreWrapper == null) {
            this.AFKeystoreWrapper = Executors.newCachedThreadPool();
        }
        return this.AFKeystoreWrapper;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final AFc1xSDK AFKeystoreWrapper() {
        return new AFc1xSDK(onInstallConversionDataLoadedNative(), valueOf(), AppsFlyerProperties.getInstance());
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized PurchaseHandler AFLogger() {
        if (this.afDebugLog == null) {
            this.afDebugLog = new PurchaseHandler(this);
        }
        return this.afDebugLog;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    @NonNull
    public final synchronized AFd1lSDK AFLogger$LogLevel() {
        if (this.AFVersionDeclaration == null) {
            this.AFVersionDeclaration = new AFd1lSDK(AFVersionDeclaration(), new AFd1jSDK());
        }
        return this.AFVersionDeclaration;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    @NonNull
    public final synchronized AFb1dSDK AFVersionDeclaration() {
        return this.values;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized AFd1dSDK afDebugLog() {
        if (this.afErrorLog == null) {
            this.afErrorLog = new AFd1dSDK(afRDLog());
        }
        return this.afErrorLog;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized AFc1mSDK afErrorLog() {
        if (this.getLevel == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 6, 300L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>() { // from class: com.appsflyer.internal.AFb1bSDK.4
                /* JADX INFO: Access modifiers changed from: private */
                @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
                /* renamed from: AFInAppEventType */
                public boolean offer(Runnable runnable) {
                    if (isEmpty()) {
                        return super.offer(runnable);
                    }
                    return false;
                }
            }, new AFa1xSDK());
            threadPoolExecutor.setRejectedExecutionHandler(new RejectedExecutionHandler() { // from class: com.appsflyer.internal.d
                @Override // java.util.concurrent.RejectedExecutionHandler
                public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor2) {
                    AFb1bSDK.AFInAppEventType(runnable, threadPoolExecutor2);
                }
            });
            this.getLevel = new AFc1mSDK(threadPoolExecutor);
        }
        return this.getLevel;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized CreateOneLinkHttpTask afInfoLog() {
        if (this.afInfoLog == null) {
            AFd1qSDK aFd1qSDK = new AFd1qSDK(afRDLog());
            this.afInfoLog = new CreateOneLinkHttpTask(new AFd1rSDK(), valueOf(), AFLogger$LogLevel(), aFd1qSDK, new AFc1xSDK(onInstallConversionDataLoadedNative(), valueOf(), AppsFlyerProperties.getInstance()), new AFd1mSDK(valueOf(), aFd1qSDK), afErrorLog());
        }
        return this.afInfoLog;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final AFd1oSDK afRDLog() {
        Context context = this.values.values;
        if (context != null) {
            return new AFb1eSDK(AFa1aSDK.AFKeystoreWrapper(context));
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized AFb1pSDK afWarnLog() {
        return AFb1pSDK.AFKeystoreWrapper();
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized AFe1fSDK getLevel() {
        if (this.init == null) {
            this.init = new AFe1fSDK();
        }
        return this.init;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    @NonNull
    public final synchronized AFa1lSDK init() {
        if (this.afWarnLog == null) {
            this.afWarnLog = new AFa1lSDK(AFVersionDeclaration());
        }
        return this.afWarnLog;
    }

    @Override // com.appsflyer.internal.AFc1ySDK
    public final synchronized AFb1cSDK valueOf() {
        if (this.afRDLog == null) {
            AFb1dSDK AFVersionDeclaration = AFVersionDeclaration();
            Context context = this.values.values;
            if (context != null) {
                this.afRDLog = new AFb1cSDK(AFVersionDeclaration, new AFb1eSDK(AFa1aSDK.AFKeystoreWrapper(context)));
            } else {
                throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
            }
        }
        return this.afRDLog;
    }

    @NonNull
    public final synchronized ExecutorService values() {
        if (this.AFInAppEventType == null) {
            this.AFInAppEventType = Executors.newSingleThreadExecutor();
        }
        return this.AFInAppEventType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void AFInAppEventType(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        try {
            threadPoolExecutor.getQueue().put(runnable);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
