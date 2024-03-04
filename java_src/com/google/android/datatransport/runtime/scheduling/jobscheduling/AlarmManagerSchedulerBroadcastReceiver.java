package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.facebook.bolts.AppLinks;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import com.huawei.hms.push.constant.RemoteMessageConst;
import n1.o;
import n1.t;
/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter(AppLinks.KEY_NAME_EXTRAS);
        int intValue = Integer.valueOf(intent.getData().getQueryParameter(RemoteMessageConst.Notification.PRIORITY)).intValue();
        int i9 = intent.getExtras().getInt("attemptNumber");
        t.f(context);
        o.a d10 = o.a().b(queryParameter).d(z1.a.b(intValue));
        if (queryParameter2 != null) {
            d10.c(Base64.decode(queryParameter2, 0));
        }
        t.c().e().v(d10.a(), i9, new Runnable() { // from class: v1.a
            @Override // java.lang.Runnable
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.b();
            }
        });
    }
}
