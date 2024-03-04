package com.google.android.gms.internal.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
/* loaded from: classes2.dex */
public final class zao extends ContextCompat {
    @Nullable
    @Deprecated
    public static Intent a(Context context, @Nullable BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (a.a()) {
            return context.registerReceiver(broadcastReceiver, intentFilter, true != a.a() ? 0 : 2);
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }
}
