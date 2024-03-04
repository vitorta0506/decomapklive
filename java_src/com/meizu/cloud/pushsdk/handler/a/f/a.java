package com.meizu.cloud.pushsdk.handler.a.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSettingEx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f28727a;

    /* renamed from: b  reason: collision with root package name */
    private List<Intent> f28728b;

    /* renamed from: c  reason: collision with root package name */
    private BroadcastReceiver f28729c;

    public a(Context context) {
        this.f28727a = context.getApplicationContext();
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        List<Intent> list = this.f28728b;
        if (list == null || list.size() == 0) {
            return;
        }
        int size = this.f28728b.size();
        int i9 = 0;
        Iterator<Intent> it = this.f28728b.iterator();
        while (it.hasNext()) {
            Intent next = it.next();
            if (i9 != size - 1) {
                try {
                    a(next);
                } catch (Exception e10) {
                    DebugLogger.e("BrightNotification", "send bright notification error " + e10.getMessage());
                }
            }
            DebugLogger.d("BrightNotification", "start bright notification service " + next);
            this.f28727a.startService(next);
            it.remove();
            i9++;
        }
    }

    private void a(Intent intent) {
        MessageV3 messageV3 = (MessageV3) intent.getParcelableExtra(PushConstants.EXTRA_APP_PUSH_BRIGHT_NOTIFICATION_MESSAGE);
        if (messageV3 == null) {
            return;
        }
        AdvanceSetting advanceSetting = messageV3.getAdvanceSetting();
        AdvanceSettingEx advanceSettingEx = messageV3.getAdvanceSettingEx();
        if (advanceSetting == null || advanceSettingEx == null) {
            return;
        }
        advanceSettingEx.setSoundTitle(null);
        advanceSetting.getNotifyType().setSound(false);
        advanceSetting.getNotifyType().setLights(false);
        advanceSetting.getNotifyType().setVibrate(false);
    }

    private void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        if (this.f28729c == null) {
            this.f28729c = new BroadcastReceiver() { // from class: com.meizu.cloud.pushsdk.handler.a.f.a.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if ("android.intent.action.USER_PRESENT".equalsIgnoreCase(intent.getAction())) {
                        a.this.a();
                    }
                }
            };
        }
        this.f28727a.registerReceiver(this.f28729c, intentFilter);
    }

    public void a(Intent intent, String str) {
        if (intent == null || TextUtils.isEmpty(str)) {
            return;
        }
        List<Intent> list = this.f28728b;
        if (list != null) {
            Iterator<Intent> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Intent next = it.next();
                MessageV3 messageV3 = (MessageV3) next.getParcelableExtra(PushConstants.EXTRA_APP_PUSH_BRIGHT_NOTIFICATION_MESSAGE);
                if (messageV3 != null && messageV3.getUploadDataPackageName() != null && str.equalsIgnoreCase(messageV3.getUploadDataPackageName())) {
                    this.f28728b.remove(next);
                    break;
                }
            }
        } else {
            this.f28728b = new ArrayList();
        }
        this.f28728b.add(intent);
        DebugLogger.d("BrightNotification", "add bright notification intent, intent list: " + this.f28728b);
    }
}
