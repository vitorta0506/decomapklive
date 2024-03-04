package me.leolin.shortcutbadger.impl;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import org.light.utils.FileUtils;
@Deprecated
/* loaded from: classes7.dex */
public class XiaomiHomeBadger implements ii.a {

    /* renamed from: a  reason: collision with root package name */
    private ResolveInfo f55071a;

    private void c(Context context, int i9) throws ShortcutBadgeException {
        if (this.f55071a == null) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            this.f55071a = context.getPackageManager().resolveActivity(intent, 65536);
        }
        if (this.f55071a != null) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            Notification build = new Notification.Builder(context).setContentTitle("").setContentText("").setSmallIcon(this.f55071a.getIconResource()).build();
            try {
                Object obj = build.getClass().getDeclaredField("extraNotification").get(build);
                obj.getClass().getDeclaredMethod("setMessageCount", Integer.TYPE).invoke(obj, Integer.valueOf(i9));
                notificationManager.notify(0, build);
            } catch (Exception e10) {
                throw new ShortcutBadgeException("not able to set badge", e10);
            }
        }
    }

    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.miui.miuilite", "com.miui.home", "com.miui.miuihome", "com.miui.miuihome2", "com.miui.mihome", "com.miui.mihome2", "com.i.miui.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Integer valueOf;
        try {
            Object newInstance = Class.forName("android.app.MiuiNotification").newInstance();
            Field declaredField = newInstance.getClass().getDeclaredField("messageCount");
            declaredField.setAccessible(true);
            if (i9 == 0) {
                valueOf = "";
            } else {
                try {
                    valueOf = Integer.valueOf(i9);
                } catch (Exception unused) {
                    declaredField.set(newInstance, Integer.valueOf(i9));
                }
            }
            declaredField.set(newInstance, String.valueOf(valueOf));
        } catch (Exception unused2) {
            Intent intent = new Intent("android.intent.action.APPLICATION_MESSAGE_UPDATE");
            intent.putExtra("android.intent.extra.update_application_component_name", componentName.getPackageName() + FileUtils.RES_PREFIX_STORAGE + componentName.getClassName());
            intent.putExtra("android.intent.extra.update_application_message_text", String.valueOf(i9 != 0 ? Integer.valueOf(i9) : ""));
            try {
                ki.a.c(context, intent);
            } catch (ShortcutBadgeException unused3) {
            }
        }
        if (Build.MANUFACTURER.equalsIgnoreCase("Xiaomi")) {
            c(context, i9);
        }
    }
}
