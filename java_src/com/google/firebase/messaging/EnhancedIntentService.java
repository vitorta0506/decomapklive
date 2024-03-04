package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.messaging.a1;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public abstract class EnhancedIntentService extends Service {
    private static final String TAG = "EnhancedIntentService";
    private Binder binder;
    private int lastStartId;
    @VisibleForTesting
    final ExecutorService executor = m.d();
    private final Object lock = new Object();
    private int runningTasks = 0;

    /* loaded from: classes2.dex */
    class a implements a1.a {
        a() {
        }

        @Override // com.google.firebase.messaging.a1.a
        public t4.g<Void> a(Intent intent) {
            return EnhancedIntentService.this.processIntent(intent);
        }
    }

    private void finishTask(Intent intent) {
        if (intent != null) {
            y0.c(intent);
        }
        synchronized (this.lock) {
            int i9 = this.runningTasks - 1;
            this.runningTasks = i9;
            if (i9 == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$1(Intent intent, t4.g gVar) {
        finishTask(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processIntent$0(Intent intent, t4.h hVar) {
        try {
            handleIntent(intent);
        } finally {
            hVar.c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public t4.g<Void> processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return t4.j.e(null);
        }
        final t4.h hVar = new t4.h();
        this.executor.execute(new Runnable() { // from class: com.google.firebase.messaging.f
            @Override // java.lang.Runnable
            public final void run() {
                EnhancedIntentService.this.lambda$processIntent$0(intent, hVar);
            }
        });
        return hVar.a();
    }

    protected Intent getStartCommandIntent(Intent intent) {
        return intent;
    }

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Service received bind request");
        }
        if (this.binder == null) {
            this.binder = new a1(new a());
        }
        return this.binder;
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i9, int i10) {
        synchronized (this.lock) {
            this.lastStartId = i10;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        t4.g<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.n()) {
            finishTask(intent);
            return 2;
        }
        processIntent.b(g.f14068a, new t4.c() { // from class: com.google.firebase.messaging.h
            @Override // t4.c
            public final void a(t4.g gVar) {
                EnhancedIntentService.this.lambda$onStartCommand$1(intent, gVar);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i9) {
        return stopSelfResult(i9);
    }
}
