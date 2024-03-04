package com.meizu.cloud.pushsdk.notification.a;

import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.handler.MessageV4;
import com.meizu.cloud.pushsdk.notification.PushNotificationBuilder;
import com.meizu.cloud.pushsdk.notification.c.e;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
import java.io.File;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class d extends c {
    public d(Context context, PushNotificationBuilder pushNotificationBuilder) {
        super(context, pushNotificationBuilder);
    }

    @Override // com.meizu.cloud.pushsdk.notification.a
    protected void a(Notification.Builder builder, MessageV3 messageV3) {
        if (MinSdkChecker.isSupportNotificationBuild()) {
            Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle();
            bigTextStyle.setBigContentTitle(messageV3.getTitle());
            bigTextStyle.bigText(messageV3.getNotificationStyle().getExpandableText());
            builder.setStyle(bigTextStyle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.notification.a
    public void a(Notification notification, MessageV3 messageV3) {
        super.a(notification, messageV3);
        MessageV4 parse = MessageV4.parse(messageV3);
        if (parse.getActVideoSetting() == null) {
            DebugLogger.e("AbstractPushNotification", "only wifi can download act");
        } else if (parse.getActVideoSetting().isWifiDisplay() && !com.meizu.cloud.pushsdk.util.a.b(this.f28731a)) {
            DebugLogger.e("AbstractPushNotification", "only wifi can download act");
        } else {
            final String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/pushSdkAct/" + messageV3.getUploadDataPackageName();
            String valueOf = String.valueOf(System.currentTimeMillis());
            String actUrl = parse.getActVideoSetting().getActUrl();
            if (!TextUtils.isEmpty(actUrl) && com.meizu.cloud.pushsdk.c.a.a(actUrl, str, valueOf).a().c().b()) {
                DebugLogger.i("AbstractPushNotification", "down load " + actUrl + " success");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                String str2 = File.separator;
                sb2.append(str2);
                sb2.append("ACT-");
                sb2.append(valueOf);
                String sb3 = sb2.toString();
                boolean a10 = new e(str + str2 + valueOf, sb3).a();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("zip file ");
                sb4.append(a10);
                DebugLogger.i("AbstractPushNotification", sb4.toString());
                if (a10) {
                    Bundle bundle = new Bundle();
                    bundle.putString(TCConstants.VIDEO_RECORD_VIDEPATH, sb3);
                    Bundle bundle2 = new Bundle();
                    bundle2.putBundle("big", bundle);
                    if (MinSdkChecker.isSupportVideoNotification()) {
                        notification.extras.putBundle("flyme.active", bundle2);
                    }
                }
            }
            com.meizu.cloud.pushsdk.d.b.a.b.a(new Runnable() { // from class: com.meizu.cloud.pushsdk.notification.a.d.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] b10;
                    for (File file : com.meizu.cloud.pushsdk.notification.c.a.b(str, String.valueOf(System.currentTimeMillis() - 86400000))) {
                        com.meizu.cloud.pushsdk.notification.c.a.b(file.getPath());
                        DebugLogger.i("AbstractPushNotification", "Delete file directory " + file.getName() + IOUtils.LINE_SEPARATOR_UNIX);
                    }
                }
            });
        }
    }
}
