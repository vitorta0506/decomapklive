package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.firebase.messaging.d0;
import com.google.firebase.messaging.l;
import java.util.concurrent.ExecutionException;
import t4.j;
/* loaded from: classes2.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent g(@NonNull Context context, @NonNull String str, @NonNull Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected int b(@NonNull Context context, @NonNull CloudMessage cloudMessage) {
        try {
            return ((Integer) j.a(new l(context).i(cloudMessage.I()))).intValue();
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e10);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected void c(@NonNull Context context, @NonNull Bundle bundle) {
        Intent g10 = g(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (d0.A(g10)) {
            d0.s(g10);
        }
    }
}
