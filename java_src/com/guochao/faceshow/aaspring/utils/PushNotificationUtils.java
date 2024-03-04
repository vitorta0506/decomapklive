package com.guochao.faceshow.aaspring.utils;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.facebook.AccessToken;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBridgeActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ReportController;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.bugly.BuglyStrategy;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eJ\b\u0010\u0011\u001a\u00020\tH\u0002J$\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0003J\"\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\tH\u0007J\u001c\u0010\u001d\u001a\u00020\f2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\u001fH\u0007J2\u0010 \u001a\u00020\f2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\u001f2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#Jv\u0010%\u001a\u00020\f2\b\b\u0002\u0010&\u001a\u00020\u000e2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)2\b\b\u0002\u0010*\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\t2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010#2\b\b\u0002\u0010\n\u001a\u00020\tH\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006,"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/PushNotificationUtils;", "", "()V", "manager", "Landroidx/core/app/NotificationManagerCompat;", "getManager$app_GooglePlayRelease$annotations", "getManager$app_GooglePlayRelease", "()Landroidx/core/app/NotificationManagerCompat;", "considerPriority", "", RemoteMessageConst.Notification.PRIORITY, "createVoiceRoomInviteNotification", "", "roomId", "", "groupChatId", "nickName", "getRandomRequestCode", "notify", "notificationId", "notificationTag", "builder", "Landroidx/core/app/NotificationCompat$Builder;", "showInviteNotification", "context", "Landroid/content/Context;", "jsonObject", "Lorg/json/JSONObject;", "from", "showLiveNotification", PushConstants.EXTRA, "", "showNormalNotification", "map", "largeIcon", "Landroid/graphics/Bitmap;", "largeImage", "showNotification", "title", "content", "pendingIntent", "Landroid/app/PendingIntent;", RemoteMessageConst.Notification.CHANNEL_ID, "imageUrl", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PushNotificationUtils {
    @NotNull
    public static final PushNotificationUtils INSTANCE = new PushNotificationUtils();
    @NotNull
    private static final NotificationManagerCompat manager;

    static {
        BaseApplication baseApplication = BaseApplication.getInstance();
        Intrinsics.checkNotNull(baseApplication, "null cannot be cast to non-null type android.app.Application");
        NotificationManagerCompat from = NotificationManagerCompat.from(baseApplication);
        Intrinsics.checkNotNullExpressionValue(from, "from(BaseApplication.getInstance() as Application)");
        manager = from;
    }

    private PushNotificationUtils() {
    }

    private final int considerPriority(int i9) {
        if (PhoneUtils.isLowMemoryDevice()) {
            return 0;
        }
        return i9;
    }

    @NotNull
    public static final NotificationManagerCompat getManager$app_GooglePlayRelease() {
        return manager;
    }

    @JvmStatic
    public static /* synthetic */ void getManager$app_GooglePlayRelease$annotations() {
    }

    private final int getRandomRequestCode() {
        return new Random().nextInt(BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH) + BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
    }

    @JvmStatic
    public static final void notify(int i9, String str, NotificationCompat.Builder builder) {
        if (str != null) {
            manager.notify(str, i9, builder.build());
        } else {
            manager.notify(i9, builder.build());
        }
    }

    static /* synthetic */ void notify$default(int i9, String str, NotificationCompat.Builder builder, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        notify(i9, str, builder);
    }

    @JvmStatic
    public static final void showInviteNotification(@NotNull Context context, @Nullable JSONObject jSONObject, int i9) {
        Intrinsics.checkNotNullParameter(context, "context");
        PrivateLiveInviteManager.InviteInfo b10 = PrivateLiveInviteManager.c().b(jSONObject);
        b10.from = i9;
        int size = PushNotificationUtilsKt.getSLiveInfos().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (Intrinsics.areEqual(b10.liveId, PushNotificationUtilsKt.getSLiveInfos().get(i10).liveId) && Intrinsics.areEqual(b10.startTime, PushNotificationUtilsKt.getSLiveInfos().get(i10).startTime)) {
                return;
            }
        }
        PushUtils.LiveInfo liveInfo = new PushUtils.LiveInfo();
        liveInfo.startTime = b10.startTime;
        liveInfo.liveId = b10.liveId;
        PushNotificationUtilsKt.getSLiveInfos().add(liveInfo);
        if (i9 == 1) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_BY_JIGUANG);
        } else if (i9 == 2) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_BY_TIM);
        } else if (i9 == 3) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_BY_FCM);
        }
        int notificationFlag = DensityUtil.getNotificationFlag();
        String string = context.getString(R.string.live_invite_title);
        String string2 = context.getString(R.string.live_somebody_invite_you, b10.nickName);
        PushNotificationUtils pushNotificationUtils = INSTANCE;
        int randomRequestCode = pushNotificationUtils.getRandomRequestCode();
        String str = b10.liveImg;
        int considerPriority = pushNotificationUtils.considerPriority(2);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.live_invite_title)");
        showNotification$default(string, string2, PendingIntent.getActivity(context, pushNotificationUtils.getRandomRequestCode(), InviteBridgeActivity.b0(BaseApplication.getInstance(), b10), notificationFlag), ReportController.REPORT_TYPE_DYNAMIC_COMMENT, randomRequestCode, "private_invite_" + b10 + ".userId", str, null, null, considerPriority, 384, null);
        PrivateLiveInviteManager.c().e(true);
    }

    @JvmStatic
    public static final void showLiveNotification(@NotNull Map<String, ? extends Object> extra) {
        Intrinsics.checkNotNullParameter(extra, "extra");
        String valueFromMap = PushUtils.getValueFromMap(extra, Contants.USER_ID, AccessToken.USER_ID_KEY);
        String valueFromMap2 = PushUtils.getValueFromMap(extra, "liveId", "live_id");
        String valueFromMap3 = PushUtils.getValueFromMap(extra, "liveType", EventTrackingUtils.LIVE_TYPE);
        String valueFromMap4 = PushUtils.getValueFromMap(extra, "liveImg", "live_img");
        String valueFromMap5 = PushUtils.getValueFromMap(extra, "userImg", "user_img");
        String valueFromMap6 = PushUtils.getValueFromMap(extra, "liveStartTime", "live_start_time");
        String valueFromMap7 = PushUtils.getValueFromMap(extra, "groupId", "group_id");
        String title = PushUtils.getValueFromMap(extra, "title");
        String valueFromMap8 = PushUtils.getValueFromMap(extra, "content");
        PrivateLiveInviteManager.InviteInfo inviteInfo = new PrivateLiveInviteManager.InviteInfo();
        inviteInfo.userId = valueFromMap;
        inviteInfo.liveId = valueFromMap2;
        inviteInfo.liveType = valueFromMap3;
        inviteInfo.liveImg = valueFromMap4;
        inviteInfo.userImg = valueFromMap5;
        inviteInfo.startTime = valueFromMap6;
        inviteInfo.groupId = valueFromMap7;
        PendingIntent activity = PendingIntent.getActivity(BaseApplication.getInstance(), INSTANCE.getRandomRequestCode(), InviteBridgeActivity.b0(BaseApplication.getInstance(), inviteInfo), DensityUtil.getNotificationFlag());
        TextUtils.isEmpty(valueFromMap8);
        Intrinsics.checkNotNullExpressionValue(title, "title");
        showNotification$default(title, valueFromMap8, activity, null, 1005, valueFromMap2, valueFromMap4, null, null, 0, TypedValues.Custom.TYPE_BOOLEAN, null);
    }

    public static /* synthetic */ void showNormalNotification$default(PushNotificationUtils pushNotificationUtils, Map map, Bitmap bitmap, Bitmap bitmap2, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bitmap = null;
        }
        if ((i9 & 4) != 0) {
            bitmap2 = null;
        }
        pushNotificationUtils.showNormalNotification(map, bitmap, bitmap2);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(int i9) {
        showNotification$default(null, null, null, null, i9, null, null, null, null, 0, 1007, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, int i9) {
        Intrinsics.checkNotNullParameter(title, "title");
        showNotification$default(title, null, null, null, i9, null, null, null, null, 0, 1006, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, int i9) {
        Intrinsics.checkNotNullParameter(title, "title");
        showNotification$default(title, str, null, null, i9, null, null, null, null, 0, 1004, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, int i9) {
        Intrinsics.checkNotNullParameter(title, "title");
        showNotification$default(title, str, pendingIntent, null, i9, null, null, null, null, 0, 1000, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, int i9) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        showNotification$default(title, str, pendingIntent, channelId, i9, null, null, null, null, 0, 992, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, int i9, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        showNotification$default(title, str, pendingIntent, channelId, i9, str2, null, null, null, 0, VKApiCodes.CODE_CALL_REQUIRES_AUTH, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, int i9, @Nullable String str2, @Nullable String str3) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        showNotification$default(title, str, pendingIntent, channelId, i9, str2, str3, null, null, 0, 896, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, int i9, @Nullable String str2, @Nullable String str3, @Nullable Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        showNotification$default(title, str, pendingIntent, channelId, i9, str2, str3, bitmap, null, 0, 768, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, int i9, @Nullable String str2, @Nullable String str3, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        showNotification$default(title, str, pendingIntent, channelId, i9, str2, str3, bitmap, bitmap2, 0, 512, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void showNotification(@NotNull String title, @Nullable String str, @Nullable PendingIntent pendingIntent, @NotNull String channelId, final int i9, @Nullable final String str2, @Nullable String str3, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2, int i10) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(channelId, "channelId");
        final NotificationCompat.Builder builder = new NotificationCompat.Builder(BaseApplication.getInstance(), channelId);
        builder.setContentTitle(title).setContentText(str);
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setDefaults(-1);
        if (pendingIntent != null) {
            builder.setContentIntent(pendingIntent);
        }
        builder.setPriority(i10);
        builder.setAutoCancel(true);
        builder.setVibrate(PushNotificationUtilsKt.getVibratorPattern());
        if (bitmap2 != null) {
            builder.setStyle(new NotificationCompat.BigPictureStyle().bigLargeIcon(bitmap).bigPicture(bitmap2));
        } else {
            builder.setStyle(new NotificationCompat.BigTextStyle().bigText(str).setBigContentTitle(title));
        }
        if (str3 != null) {
            Resources resources = BaseApplication.getInstance().getResources();
            Intrinsics.checkNotNullExpressionValue(resources, "getInstance().resources");
            int dimension = (int) resources.getDimension(17104901);
            com.bumptech.glide.c.u(BaseApplication.getInstance()).b().Z0(str3).a0(dimension, (int) resources.getDimension(17104902)).M0(new s0.c<Bitmap>() { // from class: com.guochao.faceshow.aaspring.utils.PushNotificationUtils$showNotification$1
                @Override // s0.k
                public void onLoadCleared(@Nullable Drawable drawable) {
                }

                @Override // s0.c, s0.k
                public void onLoadFailed(@Nullable Drawable drawable) {
                    super.onLoadFailed(drawable);
                    PushNotificationUtils.notify(i9, str2, NotificationCompat.Builder.this);
                }

                @Override // s0.k
                public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                    onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
                }

                public void onResourceReady(@NotNull Bitmap resource, @Nullable t0.f<? super Bitmap> fVar) {
                    Intrinsics.checkNotNullParameter(resource, "resource");
                    NotificationCompat.Builder.this.setLargeIcon(resource);
                    PushNotificationUtils.notify(i9, str2, NotificationCompat.Builder.this);
                }
            });
            return;
        }
        if (bitmap != null) {
            builder.setLargeIcon(bitmap);
        }
        notify(i9, str2, builder);
    }

    public static /* synthetic */ void showNotification$default(String str, String str2, PendingIntent pendingIntent, String str3, int i9, String str4, String str5, Bitmap bitmap, Bitmap bitmap2, int i10, int i11, Object obj) {
        showNotification((i11 & 1) != 0 ? "BuzzCast" : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : pendingIntent, (i11 & 8) != 0 ? "12" : str3, i9, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : bitmap, (i11 & 256) != 0 ? null : bitmap2, (i11 & 512) != 0 ? INSTANCE.considerPriority(1) : i10);
    }

    public final void createVoiceRoomInviteNotification(@NotNull String roomId, @NotNull String groupChatId, @NotNull String nickName) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(groupChatId, "groupChatId");
        Intrinsics.checkNotNullParameter(nickName, "nickName");
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel(0, null, null, null, null, null, null, null, null, null, 0, 0, 0L, 0, null, 0, 0, 0L, 0L, null, 0L, 0, null, 0, null, null, 0, 0, null, null, null, null, 0, -1, 1, null);
        voiceRoomInfoModel.setRoomId(roomId);
        voiceRoomInfoModel.setUserId(roomId);
        voiceRoomInfoModel.setId(Integer.parseInt(roomId));
        voiceRoomInfoModel.setChatGroupId(groupChatId);
        arrayList.add(voiceRoomInfoModel);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(BaseApplication.getInstance(), "12");
        builder.setContentTitle(eb.b.y());
        builder.setContentText(nickName + ' ' + BaseApplication.getInstance().getString(R.string.voice_room_notification_tips_invite));
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher));
        Intent intent = new Intent(BaseApplication.getInstance(), WatchLiveRoomActivity.class);
        intent.putParcelableArrayListExtra("voice_room", arrayList);
        intent.putExtra("ROOM_POS_KEY", 0);
        intent.putExtra("isFromNotification", true);
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(BaseApplication.getInstance(), 100, intent, DensityUtil.getNotificationFlag()));
        builder.setAutoCancel(true);
        notify(getRandomRequestCode(), null, builder);
    }

    public final void showNormalNotification(@NotNull Map<String, ? extends Object> map, @Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        PendingIntent activity;
        Intrinsics.checkNotNullParameter(map, "map");
        String title = PushUtils.getValueFromMap(map, "title");
        String valueFromMap = PushUtils.getValueFromMap(map, "content");
        if (title == null && valueFromMap == null) {
            return;
        }
        int notificationFlag = DensityUtil.getNotificationFlag();
        if (Intrinsics.areEqual(map.get("type"), "240")) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            Intent launchIntentForPackage = BaseApplication.getInstance().getPackageManager().getLaunchIntentForPackage(BaseApplication.getInstance().getPackageName());
            activity = PendingIntent.getActivity(baseApplication, 200, launchIntentForPackage != null ? launchIntentForPackage.addFlags(268435456) : null, notificationFlag);
        } else {
            activity = PendingIntent.getActivity(BaseApplication.getInstance(), getRandomRequestCode(), InviteBridgeActivity.b0(BaseApplication.getInstance(), MapUtils.toBundle(map)), notificationFlag);
        }
        Intrinsics.checkNotNullExpressionValue(title, "title");
        showNotification$default(title, valueFromMap, activity, null, getRandomRequestCode(), null, null, bitmap, bitmap2, 0, 616, null);
    }
}
