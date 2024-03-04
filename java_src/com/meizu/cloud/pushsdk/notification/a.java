package com.meizu.cloud.pushsdk.notification;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.GraphResponse;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSettingEx;
import com.meizu.cloud.pushsdk.util.MinSdkChecker;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f28731a;

    /* renamed from: b  reason: collision with root package name */
    protected final PushNotificationBuilder f28732b;

    /* renamed from: c  reason: collision with root package name */
    private final NotificationManager f28733c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f28734d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Context context, PushNotificationBuilder pushNotificationBuilder) {
        this.f28732b = pushNotificationBuilder;
        this.f28731a = context;
        this.f28734d = new Handler(context.getMainLooper());
        this.f28733c = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
    }

    private Notification a(MessageV3 messageV3, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3) {
        Notification.Builder builder = new Notification.Builder(this.f28731a);
        a(builder, messageV3, pendingIntent, pendingIntent2);
        c(builder, messageV3);
        b(builder, messageV3);
        a(builder, messageV3);
        d(builder, messageV3);
        Notification build = MinSdkChecker.isSupportNotificationBuild() ? builder.build() : builder.getNotification();
        b(build, messageV3);
        a(build, messageV3);
        a(build, messageV3, pendingIntent3);
        return build;
    }

    private PendingIntent a(MessageV3 messageV3, String str, boolean z10) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("custom://" + System.currentTimeMillis()));
        if (z10 && MinSdkChecker.isSupportTransmitMessageValue(this.f28731a, str)) {
            intent.putExtra(PushConstants.MZ_MESSAGE_VALUE, com.meizu.cloud.pushsdk.handler.d.a(messageV3));
        } else {
            intent.putExtra(PushConstants.MZ_PUSH_PRIVATE_MESSAGE, messageV3);
        }
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD, PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE);
        intent.setClassName(str, MzSystemUtils.findReceiver(this.f28731a, PushConstants.MZ_PUSH_ON_MESSAGE_ACTION, str));
        intent.setAction(PushConstants.MZ_PUSH_ON_MESSAGE_ACTION);
        intent.setFlags(32);
        return PendingIntent.getBroadcast(this.f28731a, 0, intent, BasicMeasure.EXACTLY);
    }

    private void a(int i9, String str, MessageV3 messageV3) {
        if (messageV3 == null || messageV3.getAdvertisementOption() == null || TextUtils.isEmpty(messageV3.getAdvertisementOption().getAdPackage())) {
            return;
        }
        DebugLogger.e("AbstractPushNotification", "save ad and recovery package, uploadDataPackageName:" + str);
        com.meizu.cloud.pushsdk.handler.a.a.a b10 = com.meizu.cloud.pushsdk.b.a(this.f28731a).b();
        if (b10 != null) {
            int priorityValidTime = messageV3.getAdvertisementOption().getPriorityValidTime();
            b10.a(messageV3);
            b10.a(i9, a(messageV3, c(messageV3), e(messageV3), f(messageV3)), priorityValidTime);
        }
        messageV3.setUploadDataPackageName(str);
    }

    private void a(Notification.Builder builder, MessageV3 messageV3, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        int statusBarIcon;
        builder.setContentTitle(messageV3.getTitle());
        builder.setContentText(messageV3.getContent());
        builder.setTicker(messageV3.getTitle());
        builder.setAutoCancel(true);
        if (MinSdkChecker.isSupportSendNotification()) {
            builder.setVisibility(1);
        }
        if (MinSdkChecker.isSupportSetDrawableSmallIcon()) {
            Icon b10 = b(messageV3.getUploadDataPackageName());
            if (b10 != null) {
                builder.setSmallIcon(b10);
                builder.setContentIntent(pendingIntent);
                builder.setDeleteIntent(pendingIntent2);
            }
            DebugLogger.e("AbstractPushNotification", "cannot get " + messageV3.getUploadDataPackageName() + " smallIcon");
        } else {
            PushNotificationBuilder pushNotificationBuilder = this.f28732b;
            if (pushNotificationBuilder != null && pushNotificationBuilder.getStatusBarIcon() != 0) {
                statusBarIcon = this.f28732b.getStatusBarIcon();
                builder.setSmallIcon(statusBarIcon);
                builder.setContentIntent(pendingIntent);
                builder.setDeleteIntent(pendingIntent2);
            }
        }
        statusBarIcon = com.meizu.cloud.pushsdk.notification.c.c.l(this.f28731a);
        builder.setSmallIcon(statusBarIcon);
        builder.setContentIntent(pendingIntent);
        builder.setDeleteIntent(pendingIntent2);
    }

    private Icon b(String str) {
        try {
            int identifier = this.f28731a.getPackageManager().getResourcesForApplication(str).getIdentifier(PushConstants.MZ_PUSH_NOTIFICATION_SMALL_ICON, "drawable", str);
            if (identifier != 0) {
                DebugLogger.i("AbstractPushNotification", "get " + str + " smallIcon success resId " + identifier);
                return Icon.createWithResource(str, identifier);
            }
            return null;
        } catch (Exception e10) {
            DebugLogger.e("AbstractPushNotification", "cannot load smallIcon form package " + str + " Error message " + e10.getMessage());
            return null;
        }
    }

    private String b(Context context, String str) {
        CharSequence applicationLabel;
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            if (applicationInfo == null || (applicationLabel = packageManager.getApplicationLabel(applicationInfo)) == null) {
                return null;
            }
            return (String) applicationLabel;
        } catch (PackageManager.NameNotFoundException unused) {
            DebugLogger.e("AbstractPushNotification", "can not find " + str + " application info");
            return null;
        }
    }

    private void b(Notification notification, MessageV3 messageV3) {
        com.meizu.cloud.pushsdk.notification.c.b.a(notification, true);
        com.meizu.cloud.pushsdk.notification.c.b.a(notification, g(messageV3));
        notification.extras.putString(PushConstants.EXTRA_ORIGINAL_NOTIFICATION_PACKAGE_NAME, messageV3.getUploadDataPackageName());
        notification.extras.putString(PushConstants.EXTRA_FLYME_GREEN_NOTIFICATION_SETTING, a(messageV3));
        notification.extras.putString(PushConstants.NOTIFICATION_EXTRA_TASK_ID, messageV3.getTaskId());
        notification.extras.putString(PushConstants.NOTIFICATION_EXTRA_SEQ_ID, messageV3.getSeqId());
        notification.extras.putString(PushConstants.NOTIFICATION_EXTRA_DEVICE_ID, messageV3.getDeviceId());
        notification.extras.putString(PushConstants.NOTIFICATION_EXTRA_PUSH_TIMESTAMP, messageV3.getPushTimestamp());
        if (!TextUtils.isEmpty(this.f28732b.getAppLabel())) {
            DebugLogger.e("AbstractPushNotification", "set app label " + this.f28732b.getAppLabel());
            notification.extras.putString(PushConstants.EXTRA_SUBSTITUTE_APP_NAME, this.f28732b.getAppLabel());
            return;
        }
        String b10 = b(this.f28731a, messageV3.getUploadDataPackageName());
        DebugLogger.e("AbstractPushNotification", "current package " + messageV3.getUploadDataPackageName() + " label is " + b10);
        if (TextUtils.isEmpty(b10)) {
            return;
        }
        notification.extras.putString(PushConstants.EXTRA_SUBSTITUTE_APP_NAME, b10);
    }

    private PendingIntent c(MessageV3 messageV3) {
        String uploadDataPackageName;
        boolean z10;
        if (d(messageV3)) {
            uploadDataPackageName = messageV3.getPackageName();
            z10 = false;
        } else {
            uploadDataPackageName = messageV3.getUploadDataPackageName();
            z10 = true;
        }
        return a(messageV3, uploadDataPackageName, z10);
    }

    private void c(Notification.Builder builder, MessageV3 messageV3) {
        boolean isSound;
        AdvanceSetting advanceSetting = messageV3.getAdvanceSetting();
        AdvanceSettingEx advanceSettingEx = messageV3.getAdvanceSettingEx();
        if (advanceSetting == null) {
            return;
        }
        if (advanceSettingEx == null || TextUtils.isEmpty(advanceSettingEx.getSoundTitle())) {
            isSound = advanceSetting.getNotifyType().isSound();
        } else {
            Uri b10 = com.meizu.cloud.pushsdk.notification.c.b.b(this.f28731a, advanceSettingEx.getSoundTitle());
            if (b10 != null) {
                DebugLogger.e("AbstractPushNotification", "advance setting builder, sound:" + b10);
                builder.setSound(b10);
                isSound = false;
            } else {
                isSound = true;
            }
        }
        if (advanceSetting.getNotifyType() != null) {
            boolean isVibrate = advanceSetting.getNotifyType().isVibrate();
            boolean isLights = advanceSetting.getNotifyType().isLights();
            if (isVibrate || isLights || isSound) {
                int i9 = isVibrate ? 2 : 0;
                if (isLights) {
                    i9 |= 4;
                }
                if (isSound) {
                    i9 |= 1;
                }
                DebugLogger.e("AbstractPushNotification", "advance setting builder, defaults:" + i9);
                builder.setDefaults(i9);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("advance setting builder, ongoing:");
        sb2.append(!advanceSetting.isClearNotification());
        DebugLogger.e("AbstractPushNotification", sb2.toString());
        builder.setOngoing(!advanceSetting.isClearNotification());
        if (advanceSettingEx == null || !MinSdkChecker.isSupportNotificationBuild()) {
            return;
        }
        DebugLogger.e("AbstractPushNotification", "advance setting builder, priority:" + advanceSettingEx.getPriorityDisplay());
        builder.setPriority(advanceSettingEx.getPriorityDisplay());
    }

    private void d(Notification.Builder builder, MessageV3 messageV3) {
        String str;
        String str2;
        if (MinSdkChecker.isSupportNotificationChannel()) {
            AdvanceSetting advanceSetting = messageV3.getAdvanceSetting();
            AdvanceSettingEx advanceSettingEx = messageV3.getAdvanceSettingEx();
            int priorityDisplay = advanceSettingEx != null ? advanceSettingEx.getPriorityDisplay() : 0;
            if (Build.VERSION.SDK_INT >= 29 && advanceSetting.isHeadUpNotification() && advanceSettingEx.getPriorityDisplay() < 1) {
                priorityDisplay = 1;
            }
            int i9 = 2;
            if (priorityDisplay == -2) {
                str = "mz_push_notification_channel_min";
                str2 = "MEIZUPUSHMIN";
                i9 = 1;
            } else if (priorityDisplay == -1) {
                str = "mz_push_notification_channel_low";
                str2 = "MEIZUPUSHLOW";
            } else if (priorityDisplay == 1) {
                i9 = 4;
                str = "mz_push_notification_channel_high";
                str2 = "MEIZUPUSHHIGH";
            } else if (priorityDisplay != 2) {
                i9 = 3;
                str = "mz_push_notification_channel";
                str2 = "MEIZUPUSH";
            } else {
                i9 = 5;
                str = "mz_push_notification_channel_max";
                str2 = "MEIZUPUSHMAX";
            }
            Uri b10 = advanceSettingEx.getSoundTitle() != null ? com.meizu.cloud.pushsdk.notification.c.b.b(this.f28731a, advanceSettingEx.getSoundTitle()) : null;
            if (!advanceSetting.getNotifyType().isSound() && advanceSettingEx.getSoundTitle() == null) {
                str = str + "_mute";
                str2 = str2 + "_MUTE";
            } else if (b10 != null) {
                str2 = str2 + "_" + advanceSettingEx.getSoundTitle().toUpperCase();
                str = str + "_" + advanceSettingEx.getSoundTitle().toLowerCase();
            }
            DebugLogger.e("AbstractPushNotification", "notification channel builder, channelId: " + str + ", channelName: " + str2 + ", importance:" + i9 + ", sound: " + b10);
            NotificationChannel notificationChannel = new NotificationChannel(str, str2, i9);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(-16711936);
            notificationChannel.setShowBadge(true);
            if (!advanceSetting.getNotifyType().isSound() && advanceSettingEx.getSoundTitle() == null) {
                notificationChannel.setSound(null, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            } else if (b10 != null) {
                notificationChannel.setSound(b10, Notification.AUDIO_ATTRIBUTES_DEFAULT);
            }
            this.f28733c.createNotificationChannel(notificationChannel);
            builder.setChannelId(str);
        }
    }

    private boolean d(MessageV3 messageV3) {
        if (messageV3.getAdvertisementOption() == null || TextUtils.isEmpty(messageV3.getAdvertisementOption().getAdPackage())) {
            return messageV3.getWhiteList() && !MzSystemUtils.isExistReceiver(this.f28731a, messageV3.getUploadDataPackageName(), PushConstants.MZ_PUSH_ON_MESSAGE_ACTION);
        }
        return true;
    }

    private PendingIntent e(MessageV3 messageV3) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("custom://" + System.currentTimeMillis()));
        intent.putExtra(PushConstants.MZ_PUSH_PRIVATE_MESSAGE, messageV3);
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD, PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_DELETE);
        intent.setClassName(messageV3.getPackageName(), MzSystemUtils.findReceiver(this.f28731a, PushConstants.MZ_PUSH_ON_MESSAGE_ACTION, messageV3.getPackageName()));
        intent.setAction(PushConstants.MZ_PUSH_ON_MESSAGE_ACTION);
        return PendingIntent.getBroadcast(this.f28731a, 0, intent, BasicMeasure.EXACTLY);
    }

    private PendingIntent f(MessageV3 messageV3) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("custom://" + System.currentTimeMillis()));
        intent.putExtra(PushConstants.MZ_PUSH_PRIVATE_MESSAGE, messageV3);
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD, PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_CLOSE);
        intent.setClassName(messageV3.getPackageName(), MzSystemUtils.findReceiver(this.f28731a, PushConstants.MZ_PUSH_ON_MESSAGE_ACTION, messageV3.getPackageName()));
        intent.setAction(PushConstants.MZ_PUSH_ON_MESSAGE_ACTION);
        return PendingIntent.getBroadcast(this.f28731a, 0, intent, BasicMeasure.EXACTLY);
    }

    private PendingIntent g(MessageV3 messageV3) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("custom://" + System.currentTimeMillis()));
        intent.putExtra(PushConstants.MZ_PUSH_NOTIFICATION_STATE_MESSAGE, messageV3.getNotificationMessage());
        intent.putExtra(PushConstants.NOTIFICATION_EXTRA_TASK_ID, messageV3.getTaskId());
        intent.putExtra(PushConstants.NOTIFICATION_EXTRA_SEQ_ID, messageV3.getSeqId());
        intent.putExtra(PushConstants.NOTIFICATION_EXTRA_DEVICE_ID, messageV3.getDeviceId());
        intent.putExtra(PushConstants.NOTIFICATION_EXTRA_PUSH_TIMESTAMP, messageV3.getPushTimestamp());
        intent.putExtra(PushConstants.NOTIFICATION_EXTRA_SHOW_PACKAGE_NAME, messageV3.getUploadDataPackageName());
        intent.putExtra(PushConstants.MZ_PUSH_WHITE_LIST, messageV3.getWhiteList());
        intent.putExtra(PushConstants.MZ_PUSH_DELAYED_REPORT_MILLIS, messageV3.getDelayedReportMillis());
        intent.putExtra(PushConstants.MZ_PUSH_MESSAGE_METHOD, PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_STATE);
        intent.setClassName(messageV3.getPackageName(), MzSystemUtils.findReceiver(this.f28731a, PushConstants.MZ_PUSH_ON_MESSAGE_ACTION, messageV3.getPackageName()));
        intent.setAction(PushConstants.MZ_PUSH_ON_MESSAGE_ACTION);
        return PendingIntent.getBroadcast(this.f28731a, 0, intent, BasicMeasure.EXACTLY);
    }

    private String h(MessageV3 messageV3) {
        if (messageV3 == null || messageV3.getAdvertisementOption() == null || TextUtils.isEmpty(messageV3.getAdvertisementOption().getAdPackage())) {
            return null;
        }
        String uploadDataPackageName = messageV3.getUploadDataPackageName();
        String adPackage = messageV3.getAdvertisementOption().getAdPackage();
        DebugLogger.e("AbstractPushNotification", "again show old ad and replace package, uploadDataPackageName:" + uploadDataPackageName + ", adPackageName:" + adPackage);
        com.meizu.cloud.pushsdk.handler.a.a.a b10 = com.meizu.cloud.pushsdk.b.a(this.f28731a).b();
        if (b10 != null) {
            b10.a();
        }
        messageV3.setUploadDataPackageName(adPackage);
        return uploadDataPackageName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap a(Context context, String str) {
        BitmapDrawable bitmapDrawable;
        try {
            Drawable applicationIcon = context.getPackageManager().getApplicationIcon(str);
            Bitmap bitmap = null;
            if (Build.VERSION.SDK_INT < 26 || (applicationIcon instanceof BitmapDrawable)) {
                bitmapDrawable = (BitmapDrawable) applicationIcon;
            } else if (applicationIcon instanceof AdaptiveIconDrawable) {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                bitmapDrawable = null;
                bitmap = createBitmap;
            } else {
                bitmapDrawable = null;
            }
            return bitmap == null ? bitmapDrawable.getBitmap() : bitmap;
        } catch (Exception e10) {
            DebugLogger.i("AbstractPushNotification", "get app icon error " + e10.getMessage());
            return ((BitmapDrawable) context.getApplicationInfo().loadIcon(context.getPackageManager())).getBitmap();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap a(String str) {
        com.meizu.cloud.pushsdk.c.a.c b10 = com.meizu.cloud.pushsdk.c.a.a(str).a().b();
        if (!b10.b() || b10.a() == null) {
            DebugLogger.i("AbstractPushNotification", "ANRequest On other Thread down load largeIcon " + str + "image fail");
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ANRequest On other Thread down load largeIcon ");
        sb2.append(str);
        sb2.append("image ");
        sb2.append(b10.a() != null ? GraphResponse.SUCCESS_KEY : "fail");
        DebugLogger.i("AbstractPushNotification", sb2.toString());
        return (Bitmap) b10.a();
    }

    protected String a(MessageV3 messageV3) {
        String str = null;
        try {
            if (!TextUtils.isEmpty(messageV3.getNotificationMessage())) {
                str = new JSONObject(messageV3.getNotificationMessage()).getJSONObject("data").getJSONObject(PushConstants.EXTRA).getString("fns");
            }
        } catch (Exception e10) {
            DebugLogger.e("AbstractPushNotification", "parse flyme notification setting error " + e10.getMessage());
        }
        DebugLogger.i("AbstractPushNotification", "current FlymeGreen notification setting is " + str);
        return str;
    }

    protected void a(Notification.Builder builder, MessageV3 messageV3) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Notification notification, MessageV3 messageV3) {
    }

    protected void a(Notification notification, MessageV3 messageV3, PendingIntent pendingIntent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a() {
        return Thread.currentThread() == this.f28731a.getMainLooper().getThread();
    }

    protected void b(Notification.Builder builder, MessageV3 messageV3) {
    }

    @Override // com.meizu.cloud.pushsdk.notification.c
    public void b(MessageV3 messageV3) {
        String h10 = (messageV3.getAdvertisementOption() == null || TextUtils.isEmpty(messageV3.getAdvertisementOption().getAdPackage())) ? null : h(messageV3);
        Notification a10 = a(messageV3, c(messageV3), e(messageV3), f(messageV3));
        int abs = Math.abs((int) System.currentTimeMillis());
        com.meizu.cloud.pushsdk.notification.model.a a11 = com.meizu.cloud.pushsdk.notification.model.a.a(messageV3);
        if (a11 != null && a11.a() != 0) {
            abs = a11.a();
            DebugLogger.e("AbstractPushNotification", "server notify id " + abs);
            if (!TextUtils.isEmpty(a11.b())) {
                int i9 = com.meizu.cloud.pushsdk.util.b.i(this.f28731a, messageV3.getUploadDataPackageName(), a11.b());
                DebugLogger.e("AbstractPushNotification", "notifyKey " + a11.b() + " preference notifyId is " + i9);
                if (i9 != 0) {
                    DebugLogger.e("AbstractPushNotification", "use preference notifyId " + i9 + " and cancel it");
                    this.f28733c.cancel(i9);
                }
                DebugLogger.e("AbstractPushNotification", "store new notifyId " + abs + " by notifyKey " + a11.b());
                com.meizu.cloud.pushsdk.util.b.b(this.f28731a, messageV3.getUploadDataPackageName(), a11.b(), abs);
            }
        }
        DebugLogger.e("AbstractPushNotification", "current notify id " + abs);
        if (messageV3.isDiscard()) {
            if (com.meizu.cloud.pushsdk.util.b.c(this.f28731a, messageV3.getPackageName()) == 0) {
                com.meizu.cloud.pushsdk.util.b.a(this.f28731a, messageV3.getPackageName(), abs);
                DebugLogger.i("AbstractPushNotification", "no notification show so put notification id " + abs);
            }
            if (!TextUtils.isEmpty(messageV3.getTaskId())) {
                if (com.meizu.cloud.pushsdk.util.b.d(this.f28731a, messageV3.getPackageName()) == 0) {
                    com.meizu.cloud.pushsdk.util.b.b(this.f28731a, messageV3.getPackageName(), Integer.valueOf(messageV3.getTaskId()).intValue());
                } else if (Integer.valueOf(messageV3.getTaskId()).intValue() < com.meizu.cloud.pushsdk.util.b.d(this.f28731a, messageV3.getPackageName())) {
                    DebugLogger.i("AbstractPushNotification", "current package " + messageV3.getPackageName() + " task id " + messageV3.getTaskId() + " don't show notification");
                    return;
                } else {
                    com.meizu.cloud.pushsdk.util.b.b(this.f28731a, messageV3.getPackageName(), Integer.valueOf(messageV3.getTaskId()).intValue());
                    abs = com.meizu.cloud.pushsdk.util.b.c(this.f28731a, messageV3.getPackageName());
                }
            }
            DebugLogger.i("AbstractPushNotification", "current package " + messageV3.getPackageName() + " notificationId=" + abs + " taskId=" + messageV3.getTaskId());
        }
        if (messageV3.getAdvertisementOption() != null && !TextUtils.isEmpty(messageV3.getAdvertisementOption().getAdPackage())) {
            a(abs, h10, messageV3);
        }
        this.f28733c.notify(abs, a10);
    }
}
