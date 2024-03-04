package cn.jpush.android.api;

import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class BasicPushNotificationBuilder extends DefaultPushNotificationBuilder {

    /* renamed from: a  reason: collision with root package name */
    protected Context f2912a;
    public int statusBarDrawable;
    public int notificationDefaults = -2;
    public int notificationFlags = 16;
    public String developerArg0 = "developerArg0";

    public BasicPushNotificationBuilder(Context context) {
        this.statusBarDrawable = 0;
        if (context == null) {
            throw new IllegalArgumentException("NULL context");
        }
        this.f2912a = context;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            if (applicationInfo == null) {
                Logger.ee("BasicPushNotificationBu", "JPush get NULL appInfo.");
            } else {
                this.statusBarDrawable = applicationInfo.icon;
            }
        } catch (Throwable unused) {
            Logger.ww("BasicPushNotificationBu", "[statusBarDrawable] JPush get NULL appInfo.");
        }
    }

    public static PushNotificationBuilder parseFromPreference(Context context, String str) {
        String[] split = str.split("_____");
        String str2 = split[0];
        BasicPushNotificationBuilder basicPushNotificationBuilder = "basic".equals(str2) ? new BasicPushNotificationBuilder(context) : "custom".equals(str2) ? new CustomPushNotificationBuilder(context) : new BasicPushNotificationBuilder(context);
        basicPushNotificationBuilder.a(split);
        return basicPushNotificationBuilder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.notificationDefaults + "_____" + this.notificationFlags + "_____" + this.statusBarDrawable + "_____" + this.developerArg0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String[] strArr) {
        this.notificationDefaults = Integer.parseInt(strArr[1]);
        this.notificationFlags = Integer.parseInt(strArr[2]);
        this.statusBarDrawable = Integer.parseInt(strArr[3]);
        if (strArr.length >= 5) {
            this.developerArg0 = strArr[4];
        }
    }

    @Override // cn.jpush.android.api.DefaultPushNotificationBuilder, cn.jpush.android.api.PushNotificationBuilder
    public String getDeveloperArg0() {
        return this.developerArg0;
    }

    @Override // cn.jpush.android.api.DefaultPushNotificationBuilder
    Notification getNotification(Notification.Builder builder) {
        int i9 = this.notificationDefaults;
        if (i9 != -2) {
            builder.setDefaults(i9);
        }
        builder.setSmallIcon(this.statusBarDrawable);
        Notification build = builder.build();
        build.flags = this.notificationFlags | 1;
        return build;
    }

    @Override // cn.jpush.android.api.DefaultPushNotificationBuilder
    void resetNotificationParams(Notification notification) {
        notification.defaults = this.notificationDefaults;
        notification.flags = this.notificationFlags;
        notification.icon = this.statusBarDrawable;
    }

    @Override // cn.jpush.android.api.DefaultPushNotificationBuilder
    public String toString() {
        return "basic_____" + a();
    }
}
