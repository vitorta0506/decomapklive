package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.guochao.faceshow.aaspring.base.im_messages.GCIMMessageDispatcherRegister;
import com.guochao.faceshow.aaspring.base.im_messages.GCIMMessageFactoryRegister;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.chat.activity.MvpChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.models.MemberLeaveMessage;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveBannedListDialogHelper;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveSoundDialogFragment;
import com.guochao.faceshow.aaspring.modulars.massage.ThirdPushTokenMgr;
import com.guochao.faceshow.aaspring.modulars.share.fragment.VoiceRoomShareFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.SimpleMediaActivity;
import com.guochao.faceshow.aaspring.utils.GCEventTracker;
import com.guochao.faceshow.aaspring.utils.PushNotificationUtilsProxy;
import com.guochao.faceshow.component.f2fmatch.proxy.impl.F2fProxyImpl;
import com.guochao.faceshow.dialog.VoiceRoomPhotoDialogFragment;
import com.guochao.faceshow.mine.view.MyLiveVideoActivity;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.SensitiveWordFilterProxy;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.web.WebViewActivity;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$app implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        RouteType routeType = RouteType.PROVIDER;
        map.put(RouterPath.ROUTER_F2F_PROXY, RouteMeta.build(routeType, F2fProxyImpl.class, RouterPath.ROUTER_F2F_PROXY, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_EVENT_TRACKER, RouteMeta.build(routeType, GCEventTracker.class, RouterPath.ROUTER_GC_EVENT_TRACKER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS, RouteMeta.build(routeType, GCIMMessageDispatcherRegister.class, RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_MESSAGE_FACTORIES, RouteMeta.build(routeType, GCIMMessageFactoryRegister.class, RouterPath.ROUTER_GC_MESSAGE_FACTORIES, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_GC_REPORT, RouteMeta.build(routeType, ReportController.class, RouterPath.ROUTER_GC_GC_REPORT, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_LIVE_BANNED_LIST, RouteMeta.build(routeType, LiveBannedListDialogHelper.class, RouterPath.ROUTER_LIVE_BANNED_LIST, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        RouteType routeType2 = RouteType.ACTIVITY;
        map.put(RouterPath.ROUTER_LIVE_ROOM, RouteMeta.build(routeType2, WatchLiveRoomActivity.class, RouterPath.ROUTER_LIVE_ROOM, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        RouteType routeType3 = RouteType.FRAGMENT;
        map.put(RouterPath.ROUTER_LIVE_ROOM_SELECT_COVER, RouteMeta.build(routeType3, VoiceRoomPhotoDialogFragment.class, RouterPath.ROUTER_LIVE_ROOM_SELECT_COVER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_LIVE_ROOM_SOUND, RouteMeta.build(routeType3, LiveSoundDialogFragment.class, RouterPath.ROUTER_LIVE_ROOM_SOUND, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_APP_MY_LIVE_VIDEO_ACTIVITY, RouteMeta.build(routeType2, MyLiveVideoActivity.class, "/app/mylivevideoactivity", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_MY_WALLET, RouteMeta.build(routeType2, MyWalletActivity.class, RouterPath.ROUTER_GC_MY_WALLET, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_APP_SELECT_PHOTOACTIVITY, RouteMeta.build(routeType2, PhotoActivity.class, "/app/photoactivity", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_SENSITIVE_WORD_FILTER, RouteMeta.build(routeType, SensitiveWordFilterProxy.class, RouterPath.ROUTER_SENSITIVE_WORD_FILTER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_APP_SERVICE, RouteMeta.build(routeType2, MvpChatActivity.class, RouterPath.ROUTER_APP_SERVICE, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_APP_SIMPLE_MEDIA_ACTIVITY, RouteMeta.build(routeType2, SimpleMediaActivity.class, "/app/simplemediaactivity", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_THIRD_PUSH_TOKEN_MANAGER, RouteMeta.build(routeType, ThirdPushTokenMgr.PushManager.class, RouterPath.ROUTER_THIRD_PUSH_TOKEN_MANAGER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_TIME_FORMATTER, RouteMeta.build(routeType, TimeUtil.class, RouterPath.ROUTER_TIME_FORMATTER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_USER_HOMEPAGE, RouteMeta.build(routeType2, UserHomePageAct.class, RouterPath.ROUTER_USER_HOMEPAGE, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_USER_INFO_CARD, RouteMeta.build(routeType3, LivePeopleInfoCardFragmentV2.class, RouterPath.ROUTER_USER_INFO_CARD, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_USER_LEAVE_GROUP, RouteMeta.build(routeType, MemberLeaveMessage.class, RouterPath.ROUTER_USER_LEAVE_GROUP, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_VOICE_ROOM_INVITE, RouteMeta.build(routeType, PushNotificationUtilsProxy.class, RouterPath.ROUTER_VOICE_ROOM_INVITE, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_GC_VOICE_ROOM_SHARE, RouteMeta.build(routeType3, VoiceRoomShareFragment.class, RouterPath.ROUTER_GC_VOICE_ROOM_SHARE, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put(RouterPath.ROUTER_WEBVIEW_ACTIVITY, RouteMeta.build(routeType2, WebViewActivity.class, RouterPath.ROUTER_WEBVIEW_ACTIVITY, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
    }
}
