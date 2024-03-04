package com.xiaomi.push.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.xiaomi.push.di;
import com.xiaomi.push.q3;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f37308a = Log.isLoggable("NCHelper", 3);

    private static int a(NotificationChannel notificationChannel) {
        int i9 = 0;
        try {
            i9 = ((Integer) q3.n(notificationChannel, "getUserLockedFields", new Object[0])).intValue();
            if (f37308a) {
                j("isUserLockedChannel:" + i9 + " " + notificationChannel);
            }
        } catch (Exception e10) {
            tf.c.m("NCHelper", "is user locked error" + e10);
        }
        return i9;
    }

    private static NotificationChannel b(String str, NotificationChannel notificationChannel) {
        NotificationChannel notificationChannel2 = new NotificationChannel(str, notificationChannel.getName(), notificationChannel.getImportance());
        notificationChannel2.setDescription(notificationChannel.getDescription());
        notificationChannel2.enableVibration(notificationChannel.shouldVibrate());
        notificationChannel2.enableLights(notificationChannel.shouldShowLights());
        notificationChannel2.setSound(notificationChannel.getSound(), notificationChannel.getAudioAttributes());
        notificationChannel2.setLockscreenVisibility(notificationChannel.getLockscreenVisibility());
        return notificationChannel2;
    }

    private static SharedPreferences c(Context context) {
        return context.getSharedPreferences("mipush_channel_copy_sp", 0);
    }

    public static String d(r rVar, String str, CharSequence charSequence, String str2, int i9, int i10, String str3, String str4) {
        String i11 = rVar.i(str);
        boolean z10 = f37308a;
        if (z10) {
            j("createChannel: appChannelId:" + i11 + " serverChannelId:" + str + " serverChannelName:" + ((Object) charSequence) + " serverChannelDesc:" + str2 + " serverChannelNotifyType:" + i9 + " serverChannelName:" + ((Object) charSequence) + " serverChannelImportance:" + i10 + " channelSoundStr:" + str3 + " channelPermissions:" + str4);
        }
        NotificationChannel notificationChannel = new NotificationChannel(i11, charSequence, i10);
        notificationChannel.setDescription(str2);
        notificationChannel.enableVibration((i9 & 2) != 0);
        notificationChannel.enableLights((i9 & 4) != 0);
        if ((i9 & 1) == 0) {
            notificationChannel.setSound(null, null);
        } else if (!TextUtils.isEmpty(str3)) {
            if (str3.startsWith("android.resource://" + rVar.h())) {
                notificationChannel.setSound(Uri.parse(str3), Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
        }
        if (z10) {
            j("create channel:" + notificationChannel);
        }
        i(rVar, notificationChannel, str4);
        return i11;
    }

    static void e(Context context, r rVar, NotificationChannel notificationChannel, int i9, String str) {
        if (i9 <= 0) {
            rVar.o(notificationChannel);
            return;
        }
        int a10 = com.xiaomi.channel.commonutils.android.a.a(context) >= 2 ? n1.a(context.getPackageName(), str) : 0;
        NotificationChannel b10 = b(notificationChannel.getId(), notificationChannel);
        if ((i9 & 32) != 0) {
            if (notificationChannel.getSound() != null) {
                b10.setSound(null, null);
            } else {
                b10.setSound(Settings.System.DEFAULT_NOTIFICATION_URI, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
        }
        if ((i9 & 16) != 0) {
            if (notificationChannel.shouldVibrate()) {
                b10.enableVibration(false);
            } else {
                b10.enableVibration(true);
            }
        }
        if ((i9 & 8) != 0) {
            if (notificationChannel.shouldShowLights()) {
                b10.enableLights(false);
            } else {
                b10.enableLights(true);
            }
        }
        if ((i9 & 4) != 0) {
            int importance = notificationChannel.getImportance() - 1;
            if (importance <= 0) {
                importance = 2;
            }
            b10.setImportance(importance);
        }
        if ((i9 & 2) != 0) {
            b10.setLockscreenVisibility(notificationChannel.getLockscreenVisibility() - 1);
        }
        rVar.o(b10);
        rVar.p(notificationChannel, true);
        n1.i(rVar.h(), notificationChannel.getId(), a10, 0);
    }

    public static void f(Context context, String str) {
        if (!sf.e.i(context) || TextUtils.isEmpty(str)) {
            return;
        }
        n(context, str);
        n1.c(context, str);
    }

    private static void g(Context context, List<String> list) {
        if (f37308a) {
            j("deleteCopiedChannelRecord:" + list);
        }
        if (list.isEmpty()) {
            return;
        }
        SharedPreferences.Editor edit = c(context).edit();
        for (String str : list) {
            edit.remove(str);
        }
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(di diVar) {
        Map<String, String> map;
        if (diVar == null || (map = diVar.f77a) == null || !map.containsKey("REMOVE_CHANNEL_MARK")) {
            return;
        }
        diVar.f73a = 0;
        diVar.f77a.remove("channel_id");
        diVar.f77a.remove("channel_importance");
        diVar.f77a.remove("channel_name");
        diVar.f77a.remove("channel_description");
        diVar.f77a.remove("channel_perm");
        tf.c.l("delete channel info by:" + diVar.f77a.get("REMOVE_CHANNEL_MARK"));
        diVar.f77a.remove("REMOVE_CHANNEL_MARK");
    }

    private static void i(r rVar, NotificationChannel notificationChannel, String str) {
        int i9;
        char c10;
        int i10;
        Context d10 = rVar.d();
        String id2 = notificationChannel.getId();
        String j10 = r.j(id2, rVar.h());
        boolean z10 = f37308a;
        if (z10) {
            j("appChannelId:" + id2 + " oldChannelId:" + j10);
        }
        if (!sf.e.i(d10) || TextUtils.equals(id2, j10)) {
            NotificationChannel b10 = rVar.b(id2);
            if (z10) {
                j("elseLogic getNotificationChannel:" + b10);
            }
            if (b10 == null) {
                rVar.o(notificationChannel);
            }
            i9 = 0;
            c10 = 0;
        } else {
            NotificationManager notificationManager = (NotificationManager) d10.getSystemService(RemoteMessageConst.NOTIFICATION);
            NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel(j10);
            NotificationChannel b11 = rVar.b(id2);
            if (z10) {
                j("xmsfChannel:" + notificationChannel2);
                j("appChannel:" + b11);
            }
            if (notificationChannel2 != null) {
                NotificationChannel b12 = b(id2, notificationChannel2);
                if (z10) {
                    j("copyXmsf copyXmsfChannel:" + b12);
                }
                if (b11 != null) {
                    i10 = a(b11);
                    rVar.p(b12, i10 == 0);
                    c10 = 3;
                } else {
                    i10 = a(notificationChannel2);
                    e(d10, rVar, b12, i10, notificationChannel2.getId());
                    c10 = 4;
                }
                m(d10, id2);
                notificationManager.deleteNotificationChannel(j10);
            } else if (b11 == null) {
                if (z10) {
                    j("appHack createNotificationChannel:" + notificationChannel);
                }
                rVar.o(notificationChannel);
                i10 = 0;
                c10 = 1;
            } else if (l(d10, id2) || !k(notificationChannel, b11)) {
                i10 = 0;
                c10 = 0;
            } else {
                if (z10) {
                    j("appHack updateNotificationChannel:" + notificationChannel);
                }
                i10 = a(b11);
                rVar.p(notificationChannel, i10 == 0);
                c10 = 2;
            }
            i9 = i10;
        }
        n1.d(rVar.d(), rVar.h(), id2, notificationChannel.getImportance(), str, c10 == 1 || c10 == 4 || c10 == 3, i9);
    }

    private static void j(String str) {
        tf.c.m("NCHelper", str);
    }

    private static boolean k(NotificationChannel notificationChannel, NotificationChannel notificationChannel2) {
        boolean z10;
        if (notificationChannel == null || notificationChannel2 == null) {
            return false;
        }
        boolean z11 = true;
        if (TextUtils.equals(notificationChannel.getName(), notificationChannel2.getName())) {
            z10 = false;
        } else {
            if (f37308a) {
                j("appHack channelConfigLowerCompare:getName");
            }
            z10 = true;
        }
        if (!TextUtils.equals(notificationChannel.getDescription(), notificationChannel2.getDescription())) {
            if (f37308a) {
                j("appHack channelConfigLowerCompare:getDescription");
            }
            z10 = true;
        }
        if (notificationChannel.getImportance() != notificationChannel2.getImportance()) {
            notificationChannel.setImportance(Math.min(notificationChannel.getImportance(), notificationChannel2.getImportance()));
            if (f37308a) {
                j("appHack channelConfigLowerCompare:getImportance  " + notificationChannel.getImportance() + " " + notificationChannel2.getImportance());
            }
            z10 = true;
        }
        if (notificationChannel.shouldVibrate() != notificationChannel2.shouldVibrate()) {
            notificationChannel.enableVibration(false);
            if (f37308a) {
                j("appHack channelConfigLowerCompare:enableVibration");
            }
            z10 = true;
        }
        if (notificationChannel.shouldShowLights() != notificationChannel2.shouldShowLights()) {
            notificationChannel.enableLights(false);
            if (f37308a) {
                j("appHack channelConfigLowerCompare:enableLights");
            }
            z10 = true;
        }
        if ((notificationChannel.getSound() != null) != (notificationChannel2.getSound() != null)) {
            notificationChannel.setSound(null, null);
            if (f37308a) {
                j("appHack channelConfigLowerCompare:setSound");
            }
        } else {
            z11 = z10;
        }
        if (f37308a) {
            j("appHack channelConfigLowerCompare:isDifferent:" + z11);
        }
        return z11;
    }

    private static boolean l(Context context, String str) {
        if (f37308a) {
            j("checkCopeidChannel:newFullChannelId:" + str + "  " + c(context).getBoolean(str, false));
        }
        return c(context).getBoolean(str, false);
    }

    private static void m(Context context, String str) {
        if (f37308a) {
            j("recordCopiedChannel:" + str);
        }
        c(context).edit().putBoolean(str, true).apply();
    }

    private static void n(Context context, String str) {
        try {
            r e10 = r.e(context, str);
            Set<String> keySet = c(context).getAll().keySet();
            ArrayList arrayList = new ArrayList();
            for (String str2 : keySet) {
                if (e10.u(str2)) {
                    arrayList.add(str2);
                    if (f37308a) {
                        j("delete channel copy record:" + str2);
                    }
                }
            }
            g(context, arrayList);
        } catch (Exception unused) {
        }
    }
}
