package dagger.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.CallSuper;
/* loaded from: classes5.dex */
public abstract class DaggerBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    @CallSuper
    public void onReceive(Context context, Intent intent) {
        a.e(this, context);
    }
}
