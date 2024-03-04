package cn.jpush.android.api;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import cn.jpush.android.aa.a;
import cn.jpush.android.aa.c;
import cn.jpush.android.aa.h;
import cn.jpush.android.helper.Logger;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DefaultPushNotificationBuilder implements PushNotificationBuilder {
    public static final int NOTI_STYLE_BIG_PICTURE = 3;
    public static final int NOTI_STYLE_BIG_TEXT = 1;
    public static final int NOTI_STYLE_INBOX = 2;
    private static final String TAG = "DefaultPushNotificationBuilder";
    protected Context context;
    private NotificationMessage notificationMessage;

    RemoteViews buildContentView(String str, String str2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014e  */
    @Override // cn.jpush.android.api.PushNotificationBuilder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification buildNotification(android.content.Context r4, cn.jpush.android.api.NotificationMessage r5) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.api.DefaultPushNotificationBuilder.buildNotification(android.content.Context, cn.jpush.android.api.NotificationMessage):android.app.Notification");
    }

    @Override // cn.jpush.android.api.PushNotificationBuilder
    public Notification buildNotification(Map<String, String> map) {
        String str;
        Context context = this.context;
        if (context == null) {
            Logger.w(TAG, "Can't find valid context when build notification.");
            return null;
        }
        try {
            str = context.getApplicationInfo().loadLabel(this.context.getPackageManager()).toString();
        } catch (Throwable unused) {
            str = null;
        }
        if (map.containsKey(JPushInterface.EXTRA_MSG_ID)) {
            map.get(JPushInterface.EXTRA_MSG_ID);
        }
        String str2 = map.containsKey(JPushInterface.EXTRA_ALERT) ? map.get(JPushInterface.EXTRA_ALERT) : "";
        if (TextUtils.isEmpty(str2)) {
            Logger.ww(TAG, "No notification content to show. Give up.");
            return null;
        }
        if (map.containsKey(JPushInterface.EXTRA_NOTIFICATION_SMALL_ICON)) {
            map.get(JPushInterface.EXTRA_NOTIFICATION_SMALL_ICON);
        }
        String str3 = map.containsKey(JPushInterface.EXTRA_NOTIFICATION_LARGET_ICON) ? map.get(JPushInterface.EXTRA_NOTIFICATION_LARGET_ICON) : "";
        if (map.containsKey(JPushInterface.EXTRA_NOTIFICATION_TITLE)) {
            str = map.get(JPushInterface.EXTRA_NOTIFICATION_TITLE);
        }
        String str4 = map.containsKey(JPushInterface.EXTRA_BIG_TEXT) ? map.get(JPushInterface.EXTRA_BIG_TEXT) : "";
        String str5 = map.containsKey(JPushInterface.EXTRA_INBOX) ? map.get(JPushInterface.EXTRA_INBOX) : "";
        int parseInt = map.containsKey(JPushInterface.EXTRA_NOTI_PRIORITY) ? Integer.parseInt(map.get(JPushInterface.EXTRA_NOTI_PRIORITY)) : 0;
        String str6 = map.containsKey(JPushInterface.EXTRA_NOTI_CATEGORY) ? map.get(JPushInterface.EXTRA_NOTI_CATEGORY) : "";
        String str7 = map.containsKey(JPushInterface.EXTRA_BIG_PIC_PATH) ? map.get(JPushInterface.EXTRA_BIG_PIC_PATH) : "";
        int parseInt2 = map.containsKey(JPushInterface.EXTRA_ALERT_TYPE) ? Integer.parseInt(map.get(JPushInterface.EXTRA_ALERT_TYPE)) : -1;
        int i9 = (parseInt2 < -1 || parseInt2 > 7) ? -1 : parseInt2;
        RemoteViews buildContentView = buildContentView(str2, str);
        int i10 = Build.VERSION.SDK_INT;
        Notification.Builder builder = new Notification.Builder(this.context);
        builder.setContentTitle(str).setContentText(str2).setTicker(str2);
        int a10 = h.a(this.context);
        if (a10 != 0) {
            Logger.dd(TAG, "setSmallIcon with resId:" + a10);
        } else {
            Logger.ww(TAG, "not found small icon in your app,will setSmallIcon with android.R.color.transparent ");
            a10 = 17170445;
        }
        builder.setSmallIcon(a10);
        Object b10 = c.b(this.context, str3);
        if (i10 >= 23) {
            if (b10 instanceof Icon) {
                builder.setLargeIcon((Icon) b10);
            } else if (b10 instanceof Bitmap) {
                builder.setLargeIcon((Bitmap) b10);
            }
        }
        int i11 = 1;
        builder.setShowWhen(true);
        Context context2 = this.context;
        NotificationMessage notificationMessage = this.notificationMessage;
        int i12 = i9;
        String str8 = str7;
        a.a(context2, builder, notificationMessage != null ? notificationMessage.notificationChannelId : "", "", parseInt, i12, (String) null);
        if (buildContentView == null) {
            if (!TextUtils.isEmpty(str4)) {
                Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle();
                bigTextStyle.bigText(str4);
                builder.setStyle(bigTextStyle);
            }
            if (!TextUtils.isEmpty(str5)) {
                Notification.InboxStyle inboxStyle = new Notification.InboxStyle();
                try {
                    TreeMap treeMap = new TreeMap();
                    JSONObject jSONObject = new JSONObject(str5);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        treeMap.put(next, jSONObject.optString(next));
                    }
                    for (String str9 : treeMap.values()) {
                        inboxStyle.addLine(str9);
                    }
                    inboxStyle.setSummaryText(" + " + jSONObject.length() + " new messages");
                } catch (Throwable th2) {
                    Logger.ee(TAG, "Set inbox style error: " + th2.getMessage());
                }
                builder.setStyle(inboxStyle);
            }
            if (!TextUtils.isEmpty(str8)) {
                Logger.i(TAG, "Set notification BPS with picture path:" + str8);
                try {
                    Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle();
                    bigPictureStyle.bigPicture(BitmapFactory.decodeFile(str8));
                    builder.setStyle(bigPictureStyle);
                } catch (Throwable unused2) {
                    Logger.ww(TAG, "Create big picture style failed.");
                }
            }
        }
        if (parseInt != 0) {
            if (parseInt != 1) {
                int i13 = 2;
                if (parseInt != 2) {
                    i11 = -1;
                    if (parseInt != -1) {
                        i13 = -2;
                        if (parseInt != -2) {
                            i11 = 0;
                        }
                    }
                }
                builder.setPriority(i13);
            }
            builder.setPriority(i11);
        }
        if (!TextUtils.isEmpty(str6)) {
            builder.setCategory(str6);
        }
        if (buildContentView != null) {
            builder.setContent(buildContentView);
            if (this.context.getApplicationInfo().targetSdkVersion >= 31 && Build.VERSION.SDK_INT >= 24) {
                builder.setCustomBigContentView(buildContentView);
            }
        } else {
            Logger.i(TAG, " Use default notification view! ");
        }
        builder.setDefaults(i12);
        return getNotification(builder);
    }

    @Override // cn.jpush.android.api.PushNotificationBuilder
    public String getDeveloperArg0() {
        return null;
    }

    Notification getNotification(Notification.Builder builder) {
        try {
            return builder.build();
        } catch (Throwable th2) {
            Logger.ww(TAG, "Build notification error:", th2);
            return null;
        }
    }

    void resetNotificationParams(Notification notification) {
    }

    public String toString() {
        return "";
    }
}
