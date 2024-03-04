package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f7393a;

    public CloudMessagingReceiver() {
        l4.e.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new f4.a("firebase-iid-executor"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f7393a = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @WorkerThread
    private final int e(@NonNull Context context, @NonNull Intent intent) {
        t4.g<Void> c10;
        if (intent.getExtras() == null) {
            return 500;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            c10 = t4.j.e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            c10 = t.b(context).c(2, bundle);
        }
        int b10 = b(context, new CloudMessage(intent));
        try {
            t4.j.b(c10, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            String valueOf = String.valueOf(e10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Message ack failed: ");
            sb2.append(valueOf);
            Log.w("CloudMessagingReceiver", sb2.toString());
        }
        return b10;
    }

    @WorkerThread
    private final int f(@NonNull Context context, @NonNull Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            c(context, extras);
            return -1;
        }
        Log.e("CloudMessagingReceiver", "Unknown notification action");
        return 500;
    }

    @NonNull
    protected Executor a() {
        return this.f7393a;
    }

    @WorkerThread
    protected abstract int b(@NonNull Context context, @NonNull CloudMessage cloudMessage);

    @WorkerThread
    protected void c(@NonNull Context context, @NonNull Bundle bundle) {
    }

    public final /* synthetic */ void d(@NonNull Intent intent, @NonNull Context context, boolean z10, @NonNull BroadcastReceiver.PendingResult pendingResult) {
        int e10;
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            if (intent2 != null) {
                e10 = f(context, intent2);
            } else {
                e10 = e(context, intent);
            }
            if (z10) {
                pendingResult.setResultCode(e10);
            }
        } finally {
            pendingResult.finish();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(@NonNull final Context context, @NonNull final Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        a().execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.g
            @Override // java.lang.Runnable
            public final void run() {
                CloudMessagingReceiver.this.d(intent, context, isOrderedBroadcast, goAsync);
            }
        });
    }
}
