package com.guochao.faceshow.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cn.jpush.android.api.JPushInterface;
import com.facebook.AccessToken;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LiveOperationVo;
import com.guochao.faceshow.aaspring.beans.LivePkInvite;
import com.guochao.faceshow.aaspring.beans.PushBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.beans.UpdateActivityBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.beans.VipCombo;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.cardvideo.SuperLikeNotificationManager;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.SystemNotifyMessage;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarGiftDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBridgeActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.CommonDisplayer;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.FirstRechargeDisplayer;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.LiveRoomDisplayer;
import com.guochao.faceshow.aaspring.modulars.push.messagehandler.PrivateLiveRoomDisplayer;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastCallService;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.aaspring.modulars.welcome.SplashFragment;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.bean.JMessageExtra;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.WebViewActivity;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONException;
import org.json.JSONObject;
import y7.r;
/* loaded from: classes4.dex */
public class PushUtils {
    public static final String CHAT_PUSH_TYPE = "-1";
    public static final String J_PUSH_TIP = "jPushTip";
    public static final String J_PUSH_TIP_SHOW = "J_PUSH_TIP_SHOW";
    public static final String KEY_FROM_PUSH = "TAG_KEY_FORM_PUSH";
    private static final String TAG = "PushUtils";
    public static final int sSequence = 33101;
    private static int time;
    private static final HashMap<String, List<OnPushCustomMessageHandler<?>>> sHandlerMap = new HashMap<>();
    private static final Handler handler = new Handler(Looper.getMainLooper());
    public static Runnable sRunnable = new Runnable() { // from class: com.guochao.faceshow.utils.PushUtils.9
        @Override // java.lang.Runnable
        public void run() {
            PushUtils.setJPushAlias(b8.e.g().getUserId());
        }
    };

    /* loaded from: classes4.dex */
    public static class LiveInfo {
        public String liveId;
        public String startTime;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            LiveInfo liveInfo = (LiveInfo) obj;
            return Objects.equals(this.startTime, liveInfo.startTime) && Objects.equals(this.liveId, liveInfo.liveId);
        }

        public int hashCode() {
            return Objects.hash(this.liveId, this.startTime);
        }
    }

    /* loaded from: classes4.dex */
    public interface OnPushCustomMessageHandler<T> {
        void onPushCustomMessage(@Nullable T t10, @NonNull String str, @NonNull Map<String, Object> map, @Nullable String str2);
    }

    private static void frozenAccountAction(final Context context, final String str) {
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        Intent intent = new Intent(LOCAL_EVENT_MSG.LIVE_END);
        intent.putExtra(KEY_FROM_PUSH, true);
        intent.putExtra(J_PUSH_TIP_SHOW, false);
        localBroadcastManager.sendBroadcast(intent);
        handler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.utils.PushUtils.8
            @Override // java.lang.Runnable
            public void run() {
                Intent intent2 = new Intent(context, ChooseLoginTypeActivity.class);
                intent2.putExtra(PushUtils.KEY_FROM_PUSH, true);
                intent2.putExtra(PushUtils.J_PUSH_TIP, str);
                intent2.setFlags(268468224);
                context.startActivity(intent2);
            }
        }, 300L);
    }

    private static <T> T getDataFromMap(Map<String, Object> map, Class<T> cls) {
        Field[] declaredFields;
        if (map != null && !map.isEmpty()) {
            try {
                T newInstance = cls.newInstance();
                for (Field field : newInstance.getClass().getDeclaredFields()) {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isStatic(modifiers) && !Modifier.isFinal(modifiers)) {
                        field.setAccessible(true);
                        if (map.containsKey(field.getName())) {
                            field.set(newInstance, map.get(field.getName()));
                        }
                    }
                }
                return newInstance;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static String getValueFromJSONObject(JSONObject jSONObject, String str) {
        return (jSONObject == null || TextUtils.isEmpty(str)) ? "" : jSONObject.optString(str);
    }

    public static String getValueFromMap(Map<String, Object> map, String str) {
        Object obj;
        return (map == null || TextUtils.isEmpty(str) || (obj = map.get(str)) == null) ? "" : obj.toString();
    }

    public static void handleOpenClick(Context context, Intent intent) {
        try {
            String uri = intent.getData() != null ? intent.getData().toString() : null;
            if (TextUtils.isEmpty(uri) && intent.getExtras() != null) {
                uri = intent.getExtras().getString("JMessageExtra");
            }
            if (TextUtils.isEmpty(uri)) {
                return;
            }
            JMessageExtra jMessageExtra = (JMessageExtra) GsonGetter.getGson().fromJson(uri, (Class<Object>) JMessageExtra.class);
            JPushInterface.reportNotificationOpened(context, jMessageExtra.getMsg_id(), jMessageExtra.getRom_type());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.JPUSH_NOTIFICATION_CLICK);
        } catch (Exception unused) {
        }
    }

    public static boolean isWithDataSplash() {
        PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
        return pushBean != null && (pushBean.pushData != null || pushBean.shareData != null || pushBean.withChat || pushBean.withEmptyChat);
    }

    private static void jumpDefault(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        launchIntentForPackage.setFlags(270532608);
        context.startActivity(launchIntentForPackage);
    }

    private static void jumpLiveActivity(Context context, String str) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        if (!n7.c.c()) {
            jumpDefault(context);
        } else {
            LiveInfoUtils.getLiveInfoAndJumpIfNeed(str, context);
        }
    }

    public static void jumpToChat(JSONObject jSONObject) {
        try {
            LogUtils.i(TAG, "jumpToChat: " + jSONObject.toString());
            if (!jSONObject.has("type_id") && !jSONObject.has("type")) {
                PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
                if (pushBean == null) {
                    pushBean = new PushBean();
                    pushBean.withChat = true;
                }
                MemoryCache.getInstance().put(pushBean);
                if (jSONObject.has(NativeProtocol.WEB_DIALOG_ACTION) && jSONObject.getBoolean(NativeProtocol.WEB_DIALOG_ACTION)) {
                    return;
                }
                com.guochao.faceshow.aaspring.manager.im.b.l0().D(jSONObject.getString("fromUserId"), jSONObject.getString("fromNickName"));
                return;
            }
            String optString = jSONObject.optString("type_id");
            if (TextUtils.isEmpty(optString)) {
                optString = jSONObject.optString("type");
            }
            openByIMOfflinePush(jSONObject, optString);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$liveOrF2fBanned$4(Activity activity, String str, String str2) {
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(activity, new e.a() { // from class: com.guochao.faceshow.utils.c
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.j();
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        eVar.f(str);
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$navLiveActivity$2(RoomItemData roomItemData, Context context) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) currTopActivity).B1(roomItemData);
        } else {
            LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$receiveCustomMessage$1(Activity activity, String str, String str2) {
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(activity, new e.a() { // from class: com.guochao.faceshow.utils.b
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.j();
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        eVar.f(str);
        eVar.show();
    }

    private static void liveOrF2fBanned(Map<String, Object> map) {
        Object obj = map.get("hour");
        final String str = (String) map.get("tip");
        final String str2 = (String) map.get("reasonMsgLang");
        String str3 = (String) map.get("reasonMsg");
        Object obj2 = map.get("startLiveTime");
        Object obj3 = map.get("reasonCode");
        final Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        FaceToFaceFloatWindowManager.getInstance().closeFaceToFacePerformClick(currTopActivity);
        if ((currTopActivity instanceof LiveBroadCastActivity) && UserStateHolder.isLiving()) {
            y7.b bVar = new y7.b();
            bVar.f60128g = map;
            bVar.f60122a = obj3 instanceof String ? (String) obj3 : "";
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    bVar.f60123b = str4;
                }
            }
            try {
                if (obj2 instanceof String) {
                    bVar.f60125d = Long.parseLong((String) obj2);
                }
            } catch (Exception unused) {
            }
            bVar.f60124c = str == null ? "" : str;
            EventBus.getDefault().post(bVar);
        } else if (currTopActivity != null) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.utils.e
                @Override // java.lang.Runnable
                public final void run() {
                    PushUtils.lambda$liveOrF2fBanned$4(currTopActivity, str2, str);
                }
            });
        }
        F2fMatchActivity f2fMatchActivity = (F2fMatchActivity) AppManager.getInstance().getActivity(F2fMatchActivity.class);
        if (f2fMatchActivity != null && !f2fMatchActivity.isFinishing()) {
            f2fMatchActivity.finish(false);
            ((MainActivity) AppManager.getInstance().getActivity(MainActivity.class)).t1(TextUtils.isEmpty(str2) ? str : str2);
        }
        ServerConfig s10 = i.u().s();
        s10.setUserLiveBanned(1);
        LiveOperationVo liveOperationVo = new LiveOperationVo();
        try {
            if (obj instanceof String) {
                liveOperationVo.setHour(Integer.parseInt((String) obj));
                liveOperationVo.setRestartLiveTimeStamp(LiveOperationVo.getLiveBannedEndTime(Integer.parseInt((String) obj)));
            }
            liveOperationVo.setReasonId(Integer.parseInt(obj3 instanceof String ? (String) obj3 : ""));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = str;
        }
        liveOperationVo.setReasonMsg(str3);
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        liveOperationVo.setReasonMsgLang(str);
        s10.setLiveOperationVo(liveOperationVo);
    }

    public static void moveToFront() {
        ActivityManager activityManager;
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || (activityManager = (ActivityManager) currTopActivity.getSystemService(PushConstants.INTENT_ACTIVITY_NAME)) == null) {
            return;
        }
        activityManager.moveTaskToFront(currTopActivity.getTaskId(), 1);
    }

    private static void navLiveActivity(final Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        if (!n7.c.c()) {
            jumpDefault(context);
            return;
        }
        final RoomItemData roomItemData = new RoomItemData();
        roomItemData.setLiveId(str);
        roomItemData.setLiveType(str2);
        roomItemData.setChatGroupId(str);
        roomItemData.setLiveImg(str3);
        roomItemData.setImg(str4);
        roomItemData.setStartTime(str5);
        roomItemData.setGroupId(str6);
        HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.utils.f
            @Override // java.lang.Runnable
            public final void run() {
                PushUtils.lambda$navLiveActivity$2(RoomItemData.this, context);
            }
        }, 300L);
    }

    public static void openByIMOfflinePush(JSONObject jSONObject, String str) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        str.hashCode();
        if (str.equals("58")) {
            String valueFromJSONObject = getValueFromJSONObject(jSONObject, "live_id", "liveId");
            String valueFromJSONObject2 = getValueFromJSONObject(jSONObject, EventTrackingUtils.LIVE_TYPE, "liveType");
            String valueFromJSONObject3 = getValueFromJSONObject(jSONObject, "live_img", "liveImg");
            String valueFromJSONObject4 = getValueFromJSONObject(jSONObject, "user_img", "userImg");
            String valueFromJSONObject5 = getValueFromJSONObject(jSONObject, "start_time", "liveStartTime");
            String valueFromJSONObject6 = getValueFromJSONObject(jSONObject, "group_id", "groupId");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_CLICK_BY_TIM);
            navLiveActivity(baseApplication, valueFromJSONObject, valueFromJSONObject2, valueFromJSONObject3, valueFromJSONObject4, valueFromJSONObject5, valueFromJSONObject6);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void openNotification(Context context, Map<String, Object> map, boolean z10) {
        try {
            String valueFromMap = getValueFromMap(map, "type_id", "type");
            char c10 = 65535;
            switch (valueFromMap.hashCode()) {
                case 52:
                    if (valueFromMap.equals("4")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 1569:
                    if (valueFromMap.equals("12")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 1600:
                    if (valueFromMap.equals("22")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 1692:
                    if (valueFromMap.equals("51")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1699:
                    if (valueFromMap.equals("58")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1723:
                    if (valueFromMap.equals("61")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 1820:
                    if (valueFromMap.equals("95")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1822:
                    if (valueFromMap.equals("97")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 48625:
                    if (valueFromMap.equals("100")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 48634:
                    if (valueFromMap.equals("109")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 49586:
                    if (valueFromMap.equals(BasicPushStatus.SUCCESS_CODE)) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 49617:
                    if (valueFromMap.equals("210")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 49648:
                    if (valueFromMap.equals("220")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 49679:
                    if (valueFromMap.equals("230")) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case 49710:
                    if (valueFromMap.equals("240")) {
                        c10 = 14;
                        break;
                    }
                    break;
                case 50610:
                    if (valueFromMap.equals("321")) {
                        c10 = 15;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                case 2:
                    String valueFromMap2 = getValueFromMap(map, "live_id", "liveId");
                    String valueFromMap3 = getValueFromMap(map, EventTrackingUtils.LIVE_TYPE, "liveId");
                    String valueFromMap4 = getValueFromMap(map, "live_img", "liveImg");
                    String valueFromMap5 = getValueFromMap(map, "user_img", "userImg");
                    String valueFromMap6 = getValueFromMap(map, "start_time", "liveStartTime");
                    String valueFromMap7 = getValueFromMap(map, "group_id", "groupId");
                    if ("58".equals(valueFromMap)) {
                        EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_CLICK_BY_JIGUANG);
                    }
                    navLiveActivity(context, valueFromMap2, valueFromMap3, valueFromMap4, valueFromMap5, valueFromMap6, valueFromMap7);
                    return;
                case 3:
                    String valueFromMap8 = getValueFromMap(map, Contants.USER_ID);
                    String valueFromMap9 = getValueFromMap(map, "videoId");
                    if (TextUtils.isEmpty(valueFromMap9)) {
                        return;
                    }
                    playVideo(context, valueFromMap9, valueFromMap8, z10);
                    return;
                case 4:
                    WebViewActivity.createBuilder().m(getValueFromMap(map, "url")).a(context);
                    return;
                case 5:
                    LivePkInvite livePkInvite = (LivePkInvite) getDataFromMap(map, LivePkInvite.class);
                    if (livePkInvite != null) {
                        com.guochao.faceshow.aaspring.modulars.live.pk.a.o().h(livePkInvite);
                        return;
                    }
                    return;
                case 6:
                    CallModel callModel = (CallModel) GsonGetter.getGson().fromJson(((UpdateActivityBean) getDataFromMap(map, UpdateActivityBean.class)).getResult(), (Class<Object>) CallModel.class);
                    if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().u()) {
                        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().j(callModel);
                        return;
                    } else {
                        FaceCastCallService.g(callModel);
                        return;
                    }
                case 7:
                    String obj = map.get("accountNickName").toString();
                    if (b8.e.g().getUserId().equals(map.get(Contants.USER_ID).toString())) {
                        com.guochao.faceshow.aaspring.manager.im.b.l0().D(map.get("accountId").toString(), obj);
                        return;
                    }
                    return;
                case '\b':
                    String valueFromMap10 = getValueFromMap(map, "account");
                    if (TextUtils.isEmpty(valueFromMap10)) {
                        jumpDefault(context);
                        return;
                    } else {
                        UserHomePageAct.start(context, valueFromMap10);
                        return;
                    }
                case '\t':
                    Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                    ChatActivity.navToChat(currTopActivity != null ? currTopActivity : context, getValueFromMap(map, Contants.USER_ID), 1, "");
                    return;
                case '\n':
                    playVideo(context, getValueFromMap(map, TCConstants.PLAYER_VIDEO_ID), getValueFromMap(map, AccessToken.USER_ID_KEY), true);
                    return;
                case 11:
                    WebViewActivity.createBuilder().m(getValueFromMap(map, "url")).l(getValueFromMap(map, "title")).a(context);
                    return;
                case '\f':
                    UserHomePageAct.start(context, getValueFromMap(map, AccessToken.USER_ID_KEY));
                    return;
                case '\r':
                    PrivateLiveInviteManager.InviteInfo b10 = PrivateLiveInviteManager.c().b(new JSONObject(GsonGetter.getGson().toJson(map)));
                    b10.from = 3;
                    b10.privateType = "1";
                    context.startActivity(InviteBridgeActivity.b0(context, b10));
                    return;
                case 14:
                    jumpDefault(context);
                    return;
                case 15:
                    Activity currTopActivity2 = BaseApplication.getInstance().getCurrTopActivity();
                    if ((currTopActivity2 instanceof FragmentActivity) && ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2")) {
                        ja.a.b().e("KEY_HELLO_HOUR_SHOW_V2");
                        EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT_SECEND);
                        HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                        HelloStarGiftDialog.getInstance(1, helloStarHelp.getHelloConfigData().getFirstNum(), helloStarHelp.getHelloConfigData().getLockNum()).show(((FragmentActivity) currTopActivity2).getSupportFragmentManager(), "HelloStarGiftDialog");
                        break;
                    }
                    break;
            }
            jumpDefault(context);
        } catch (Exception e10) {
            e10.printStackTrace();
            LogUtils.e("tag", "Unexpected: extras is not a valid json");
        }
    }

    public static void openShareActivity(Context context, Map<String, Object> map, boolean z10) {
        String str = (String) map.get("type");
        if ("1".equals(str)) {
            playVideo(context, (String) map.get("videoId"), (String) map.get(Contants.USER_ID), z10);
        } else if ("3".equals(str)) {
            jumpLiveActivity(context, !TextUtils.isEmpty((CharSequence) map.get("live_id")) ? (String) map.get("live_id") : "");
        } else if ("4".equals(str)) {
            Intent intent = new Intent(context, VideoTopicsActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("topic_id", (String) map.get("id"));
            intent.putExtra("titleName", "#" + ((String) map.get("name")));
            context.startActivity(intent);
        } else if ("5".equals(str)) {
            String str2 = (String) map.get("url");
            WebViewActivity.createBuilder().m(str2 + StringUtils.getUrlFromType() + SpUtils.getStr(context, Contants.USER_TOKEN)).g(true).k(str2).a(context);
        } else if (ReportController.REPORT_TYPE_ONE_V_ONE.equals(str)) {
            UgcTopicBean ugcTopicBean = new UgcTopicBean();
            ugcTopicBean.setTopicId((String) map.get("id"));
            ugcTopicBean.setTopicName((String) map.get("name"));
            TopicHomePageActivity.r0(context, ugcTopicBean);
        } else if ("100".equals(str)) {
            new WebViewActivity.e().m((String) map.get("url")).a(context);
        } else if (ThirdPushHelper.TYPE_XIAOMI_CHINA.equals(str)) {
            Bundle bundle = new Bundle();
            bundle.putString("groupId", (String) map.get("groupId"));
            new ARouterNavigator(context, RouterPath.ROUTER_GUILD_MY_LIVE_ACTIVITY).withParams(bundle).go();
        } else if (TextUtils.isEmpty((CharSequence) map.get("live_id"))) {
        } else {
            jumpLiveActivity(context, (String) map.get("live_id"));
        }
    }

    public static void playVideo(Context context, String str, String str2, boolean z10) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchvideo, R.string.onevone_notwatchvideo, R.string.livenotwatchvideo, R.string.trtc_is_calling_no_video)) {
            return;
        }
        if (!n7.c.c()) {
            jumpDefault(context);
        } else {
            VideoPlayActivity.start(context, str);
        }
    }

    public static void pushByIM(SystemNotifyMessage systemNotifyMessage) {
        LogUtils.i("PushHelper: ", "PushIm = " + systemNotifyMessage.getMessageContent().toString());
        if (com.guochao.faceshow.aaspring.manager.im.b.l0().m0() > systemNotifyMessage.getTimestamp()) {
            return;
        }
        Map<String, Object> messageMap = systemNotifyMessage.getMessageMap();
        String typeId = systemNotifyMessage.getTypeId();
        typeId.hashCode();
        char c10 = 65535;
        switch (typeId.hashCode()) {
            case 1569:
                if (typeId.equals("12")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1630:
                if (typeId.equals("31")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1699:
                if (typeId.equals("58")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1816:
                if (typeId.equals("91")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1817:
                if (typeId.equals("92")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1823:
                if (typeId.equals("98")) {
                    c10 = 5;
                    break;
                }
                break;
            case 49586:
                if (typeId.equals(BasicPushStatus.SUCCESS_CODE)) {
                    c10 = 6;
                    break;
                }
                break;
            case 49617:
                if (typeId.equals("210")) {
                    c10 = 7;
                    break;
                }
                break;
            case 49648:
                if (typeId.equals("220")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 49679:
                if (typeId.equals("230")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 49710:
                if (typeId.equals("240")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 50547:
                if (typeId.equals("300")) {
                    c10 = 11;
                    break;
                }
                break;
            case 50610:
                if (typeId.equals("321")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case '\t':
                LiveRoomDisplayer.INSTANCE.showNotification(BaseApplication.getInstance(), messageMap);
                return;
            case 1:
                liveOrF2fBanned(messageMap);
                return;
            case 2:
                StringBuilder sb2 = new StringBuilder();
                sb2.append("被邀请的次数 = ");
                int i9 = time + 1;
                time = i9;
                sb2.append(i9);
                LogUtils.i("zune:", sb2.toString());
                PrivateLiveRoomDisplayer.INSTANCE.showNotification(BaseApplication.getInstance(), messageMap);
                return;
            case 3:
            case 4:
            case 6:
            case 7:
            case '\b':
            case '\n':
                CommonDisplayer.INSTANCE.showNotification(BaseApplication.getInstance(), messageMap);
                return;
            case 5:
                FirstRechargeDisplayer.INSTANCE.showNotification(BaseApplication.getInstance(), messageMap);
                return;
            case 11:
                if (AppManager.getInstance().containActivity(F2fMatchActivity.class)) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.single_yellow_alert);
                    return;
                }
                return;
            case '\f':
                Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                if ((currTopActivity instanceof FragmentActivity) && ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2")) {
                    ja.a.b().e("KEY_HELLO_HOUR_SHOW_V2");
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.HELLO_STAR_HELLO_GIFT_SECEND);
                    HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                    HelloStarGiftDialog.getInstance(1, helloStarHelp.getHelloConfigData().getFirstNum(), helloStarHelp.getHelloConfigData().getLockNum()).show(((FragmentActivity) currTopActivity).getSupportFragmentManager(), "HelloStarGiftDialog");
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0448 A[Catch: Exception -> 0x084e, TRY_LEAVE, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04b1 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x04db A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0515 A[Catch: Exception -> 0x084e, TRY_LEAVE, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x054b A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x056c A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0575 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x058a A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x059c A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05ae A[Catch: Exception -> 0x084e, TRY_LEAVE, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0638 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0652 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x066c A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0690 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:317:0x06bd A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x06e1 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x0707 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x072b A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:330:0x073c A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x082f A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0839 A[Catch: Exception -> 0x084e, TryCatch #2 {Exception -> 0x084e, blocks: (B:3:0x000f, B:6:0x0022, B:8:0x002c, B:42:0x007f, B:175:0x0287, B:177:0x028d, B:178:0x02a5, B:180:0x02ab, B:181:0x02c5, B:182:0x02d3, B:185:0x02de, B:186:0x02e9, B:188:0x030a, B:190:0x0310, B:191:0x0316, B:197:0x032f, B:199:0x0339, B:201:0x0341, B:196:0x032c, B:202:0x0346, B:220:0x03ae, B:225:0x03c3, B:227:0x03d9, B:228:0x03f1, B:230:0x03f7, B:232:0x0403, B:234:0x040b, B:237:0x0412, B:239:0x041d, B:240:0x0435, B:241:0x043a, B:219:0x03a7, B:242:0x0448, B:257:0x04b1, B:260:0x04c5, B:262:0x04cf, B:263:0x04d2, B:264:0x04db, B:265:0x0515, B:272:0x0534, B:274:0x053c, B:275:0x0542, B:271:0x0531, B:276:0x054b, B:277:0x056c, B:278:0x0575, B:279:0x058a, B:280:0x059c, B:281:0x05ae, B:294:0x0618, B:297:0x061f, B:300:0x0629, B:293:0x0615, B:301:0x0638, B:303:0x0646, B:304:0x0649, B:305:0x0652, B:307:0x0660, B:308:0x0663, B:309:0x066c, B:311:0x0674, B:312:0x067c, B:313:0x0690, B:315:0x0698, B:316:0x06a0, B:317:0x06bd, B:319:0x06c5, B:320:0x06cd, B:321:0x06e1, B:323:0x06eb, B:324:0x06f3, B:325:0x0707, B:327:0x0711, B:328:0x0719, B:329:0x072b, B:330:0x073c, B:332:0x0776, B:334:0x077c, B:336:0x0787, B:338:0x078d, B:340:0x0793, B:342:0x079c, B:351:0x07b5, B:354:0x07cd, B:356:0x07d5, B:368:0x0817, B:371:0x081e, B:375:0x0829, B:367:0x0814, B:353:0x07c1, B:376:0x082f, B:378:0x0839, B:379:0x083d, B:381:0x0843, B:256:0x04aa, B:45:0x008b, B:48:0x0097, B:51:0x00a3, B:54:0x00af, B:57:0x00bb, B:60:0x00c7, B:63:0x00d1, B:66:0x00db, B:69:0x00e7, B:72:0x00f3, B:75:0x00ff, B:78:0x010b, B:81:0x0117, B:84:0x0123, B:87:0x012f, B:90:0x013b, B:93:0x0147, B:96:0x0153, B:99:0x015f, B:102:0x016b, B:105:0x0177, B:108:0x0183, B:111:0x018f, B:114:0x019b, B:117:0x01a7, B:120:0x01b3, B:123:0x01be, B:126:0x01c9, B:129:0x01d4, B:132:0x01df, B:135:0x01eb, B:138:0x01f7, B:141:0x0203, B:144:0x020e, B:147:0x0219, B:150:0x0224, B:153:0x022f, B:156:0x023a, B:159:0x0243, B:162:0x024d, B:165:0x0257, B:168:0x0261, B:266:0x051c, B:268:0x0525, B:193:0x031c, B:244:0x045d, B:246:0x0465, B:248:0x046c, B:250:0x0489, B:252:0x0491, B:253:0x04a0, B:204:0x0360, B:207:0x0376, B:216:0x0398, B:214:0x038f, B:215:0x0393, B:282:0x05ec, B:284:0x05f2, B:285:0x05f9, B:287:0x05ff, B:288:0x0606, B:290:0x060c, B:357:0x07e6, B:359:0x07ea, B:360:0x0801, B:362:0x0805, B:364:0x080b), top: B:390:0x000f, inners: #0, #3, #4, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x045d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:403:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void receiveCustomMessage(final android.content.Context r20, final java.util.Map<java.lang.String, java.lang.Object> r21, final java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 2298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.utils.PushUtils.receiveCustomMessage(android.content.Context, java.util.Map, java.lang.String):void");
    }

    @Deprecated
    public static void receiveNotification(Context context, Map<String, Object> map) {
        LogUtils.i(TAG, "receiveNotification: ");
    }

    public static void registerCustomMessageHandler(OnPushCustomMessageHandler<?> onPushCustomMessageHandler, String... strArr) {
        for (String str : strArr) {
            HashMap<String, List<OnPushCustomMessageHandler<?>>> hashMap = sHandlerMap;
            List<OnPushCustomMessageHandler<?>> list = hashMap.get(str);
            if (list == null) {
                list = new ArrayList<>();
                hashMap.put(str, list);
            }
            if (!list.contains(onPushCustomMessageHandler)) {
                list.add(onPushCustomMessageHandler);
            }
        }
    }

    public static void removeAliasRunnable() {
        HandlerGetter.getMainHandler().removeCallbacks(sRunnable);
    }

    public static void savePushTag(Context context, Map<String, Object> map) {
        Boolean bool = (Boolean) MemoryCache.getInstance().get(MainActivity.class.getSimpleName());
        if (bool != null && bool.booleanValue()) {
            openNotification(context, map, true);
            return;
        }
        PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
        if (pushBean == null) {
            pushBean = new PushBean();
        }
        pushBean.pushData = map;
        MemoryCache.getInstance().put(pushBean);
        Boolean bool2 = (Boolean) MemoryCache.getInstance().get(SplashFragment.class.getSimpleName());
        if (bool2 == null || !bool2.booleanValue()) {
            jumpDefault(context);
        }
    }

    public static boolean saveShareTag(Context context, String str) {
        String format = String.format("%s://%s?", context.getResources().getString(R.string.share_scheme), "com.guochao.faceshow");
        String unescape = StringUtils.unescape(str);
        Boolean bool = (Boolean) MemoryCache.getInstance().get(MainActivity.class.getSimpleName());
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(unescape) && unescape.contains(format)) {
            String replace = unescape.replace(format, "");
            if (!TextUtils.isEmpty(replace)) {
                for (String str2 : replace.split(ContainerUtils.FIELD_DELIMITER)) {
                    String[] split = str2.split(ContainerUtils.KEY_VALUE_DELIMITER);
                    hashMap.put(split[0], split.length == 1 ? split[0] : split[1]);
                }
            }
        }
        if (bool != null && bool.booleanValue()) {
            openShareActivity(context, hashMap, true);
            return true;
        }
        PushBean pushBean = new PushBean();
        pushBean.shareData = hashMap;
        MemoryCache.getInstance().put(pushBean);
        return false;
    }

    public static void setJPushAlias(String str) {
        JPushInterface.setAlias(BaseApplication.getInstance(), (int) sSequence, str);
        removeAliasRunnable();
        HandlerGetter.getMainHandler().postDelayed(sRunnable, 180000L);
    }

    public static void showPkInviteNotification(Context context, LivePkInvite livePkInvite) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
        if (notificationManager == null) {
            return;
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, ReportController.REPORT_TYPE_DYNAMIC_COMMENT);
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setContentTitle(eb.b.y());
        builder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher));
        int i9 = 0;
        builder.setContentText(context.getString(R.string.pk_invite_name, livePkInvite.getNick_name()));
        builder.setDefaults(-1);
        builder.setAutoCancel(true);
        builder.setContentIntent(PendingIntent.getActivity(context, 1000, context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()), DensityUtil.getNotificationFlag()));
        try {
            i9 = Integer.parseInt(livePkInvite.getUser_id());
        } catch (Exception unused) {
        }
        notificationManager.notify(livePkInvite.getUser_id(), i9 + 39234, builder.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showSuperLikeNotification(final Context context, final Map<String, Object> map) {
        String format;
        if (!Foreground.get().isForeground()) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                return;
            }
            SuperLikeNotificationManager.SuperLikeInfo a10 = SuperLikeNotificationManager.b().a(map);
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "12");
            builder.setSmallIcon(R.drawable.jpush_notification_icon);
            builder.setContentTitle(context.getString("1".equalsIgnoreCase(a10.superLike) ? R.string.zaime_receive_super_like : R.string.zaime_receive_like));
            builder.setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.mipmap.ic_launcher));
            if ("1".equalsIgnoreCase(a10.superLike)) {
                format = TextUtils.isEmpty(a10.likeWord) ? context.getString(R.string.zaime_receive_super_like_content) : a10.likeWord;
            } else {
                format = String.format(context.getString(R.string.zaime_receive_like_content), map.get("userNick"));
            }
            builder.setContentText(format);
            builder.setDefaults(-1);
            builder.setAutoCancel(true);
            Intent intent = new Intent(context, UserHomePageAct.class);
            String str = (String) map.get("account");
            intent.putExtra(Contants.USER_ID, str);
            builder.setContentIntent(PendingIntent.getActivity(context, 1000, intent, DensityUtil.getNotificationFlag()));
            notificationManager.notify(a10.userId, Integer.parseInt(str), builder.build());
            return;
        }
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.utils.PushUtils.7
            @Override // java.lang.Runnable
            public void run() {
                SuperLikeNotificationManager.b().d(context, map);
            }
        });
    }

    public static void unregisterCustomMessageHandler(OnPushCustomMessageHandler<?> onPushCustomMessageHandler, String... strArr) {
        for (String str : strArr) {
            List<OnPushCustomMessageHandler<?>> list = sHandlerMap.get(str);
            if (list != null) {
                list.remove(onPushCustomMessageHandler);
            }
        }
    }

    private static void updateVipMsg(Map<String, Object> map) {
        String obj;
        Object obj2 = map.get("type_id");
        if (obj2 == null) {
            return;
        }
        String obj3 = obj2.toString();
        map.get("subState");
        Object obj4 = map.get("vipGrade");
        Object obj5 = map.get("vipSign");
        Object obj6 = map.get("thirdEndTime");
        Object obj7 = map.get("platform");
        Object obj8 = map.get("publicFontColor");
        Object obj9 = map.get("dressHead");
        Object obj10 = map.get("dressCarId");
        Object obj11 = map.get("dressCarSource");
        Object obj12 = map.get("dressCarSourceV2");
        Object obj13 = map.get("arDressCarSource");
        Object obj14 = map.get("arDressCarSourceV2");
        Object obj15 = map.get("restCount");
        Object obj16 = map.get("restBrowseCount");
        if (obj16 instanceof String) {
            h8.a.a(Integer.valueOf(Integer.parseInt((String) obj16)));
        }
        if (obj15 instanceof String) {
            try {
                b8.e.g().c().setRestCount(Integer.parseInt((String) obj15));
            } catch (Exception unused) {
            }
        }
        if (obj4 == null || TextUtils.isEmpty(obj4.toString())) {
            return;
        }
        UserVipData userVipMsg = b8.e.g().c().getUserVipMsg();
        if (userVipMsg == null) {
            userVipMsg = new UserVipData();
        }
        if (obj8 != null) {
            userVipMsg.setPublicFontColor(obj8.toString());
        }
        if (obj9 != null) {
            userVipMsg.setDressHead(obj9.toString());
        }
        try {
            userVipMsg.setDressHeadType(Integer.parseInt(obj4.toString()));
        } catch (Exception unused2) {
        }
        if (obj10 != null) {
            userVipMsg.setDressCarId(obj10.toString());
        }
        if (obj11 != null) {
            userVipMsg.setDressCarSource(obj11.toString());
        }
        if (obj12 != null) {
            userVipMsg.setDressCarSourceV2(obj12.toString());
        }
        if (obj13 != null) {
            userVipMsg.setArDressCarSource(obj13.toString());
        }
        if (obj14 != null) {
            userVipMsg.setArDressCarSourceV2(obj14.toString());
        }
        String obj17 = obj4.toString();
        obj17.hashCode();
        char c10 = 65535;
        switch (obj17.hashCode()) {
            case 48:
                if (obj17.equals("0")) {
                    c10 = 0;
                    break;
                }
                break;
            case 49:
                if (obj17.equals("1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 50:
                if (obj17.equals("2")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if ("87".equals(obj3)) {
                    userVipMsg.setIsVip(0);
                    break;
                }
                break;
            case 1:
                userVipMsg.setIsVip(1);
                userVipMsg.setVipSign(obj5 == null ? com.guochao.faceshow.aaspring.modulars.googlepay.d.f17930w : obj5.toString());
                break;
            case 2:
                userVipMsg.setIsVip(2);
                if (obj5 == null) {
                    obj = NotifyType.VIBRATE + com.guochao.faceshow.aaspring.modulars.googlepay.d.f17930w;
                } else {
                    obj = obj5.toString();
                }
                userVipMsg.setVipSign(obj);
                break;
        }
        if (obj7 != null && !TextUtils.isEmpty(obj7.toString())) {
            try {
                userVipMsg.setPlatform(Integer.parseInt(obj7.toString()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        b8.e.g().c().setUserVipMsg(userVipMsg);
        if (obj6 != null) {
            b8.e.g().c().getUserVipMsg().setThirdEndTime(Long.parseLong(obj6.toString()));
        }
        if (BaseConfig.isChinese() && "101".equals(obj3)) {
            EventBus.getDefault().post(new VipCombo());
        }
        if (!"0".equals(obj4.toString()) || "87".equals(obj3) || "102".equals(obj3)) {
            EventBus.getDefault().post(new r(userVipMsg.getIsVip()));
        }
    }

    public static String getValueFromJSONObject(JSONObject jSONObject, String str, String str2) {
        if (jSONObject != null && (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2))) {
            if (str != null) {
                return jSONObject.optString(str);
            }
            if (str2 != null) {
                return jSONObject.optString(str2);
            }
        }
        return "";
    }

    public static String getValueFromMap(Map<String, Object> map, String str, String str2) {
        Object obj;
        if (map != null && (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2))) {
            if (str == null) {
                return (str2 == null || (obj = map.get(str2)) == null) ? "" : obj.toString();
            }
            Object obj2 = map.get(str);
            return obj2 == null ? "" : obj2.toString();
        }
        return "";
    }
}
