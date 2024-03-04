package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IProviderGroup;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.chat.models.MemberLeaveMessage;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveBannedListDialogHelper;
import com.guochao.faceshow.aaspring.modulars.massage.ThirdPushTokenMgr;
import com.guochao.faceshow.aaspring.utils.GCEventTracker;
import com.guochao.faceshow.aaspring.utils.PushNotificationUtilsProxy;
import com.guochao.faceshow.component.f2fmatch.proxy.impl.F2fProxyImpl;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.SensitiveWordFilterProxy;
import com.guochao.faceshow.utils.TimeUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Providers$$app implements IProviderGroup {
    @Override // com.alibaba.android.arouter.facade.template.IProviderGroup
    public void loadInto(Map<String, RouteMeta> map) {
        RouteType routeType = RouteType.PROVIDER;
        map.put("com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy", RouteMeta.build(routeType, F2fProxyImpl.class, RouterPath.ROUTER_F2F_PROXY, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.eventtracker.IGCEventTracker", RouteMeta.build(routeType, GCEventTracker.class, RouterPath.ROUTER_GC_EVENT_TRACKER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.report.service.ReportProxy", RouteMeta.build(routeType, ReportController.class, RouterPath.ROUTER_GC_GC_REPORT, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy", RouteMeta.build(routeType, LiveBannedListDialogHelper.class, RouterPath.ROUTER_LIVE_BANNED_LIST, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.util.service.ISensitiveWordFilter", RouteMeta.build(routeType, SensitiveWordFilterProxy.class, RouterPath.ROUTER_SENSITIVE_WORD_FILTER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.push.service.ThirdPushTokenManager", RouteMeta.build(routeType, ThirdPushTokenMgr.PushManager.class, RouterPath.ROUTER_THIRD_PUSH_TOKEN_MANAGER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.util.service.TimeFormatter", RouteMeta.build(routeType, TimeUtil.class, RouterPath.ROUTER_TIME_FORMATTER, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage", RouteMeta.build(routeType, MemberLeaveMessage.class, RouterPath.ROUTER_USER_LEAVE_GROUP, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
        map.put("com.guochao.lib_service_center.push.notification.IVoiceRoomNotification", RouteMeta.build(routeType, PushNotificationUtilsProxy.class, RouterPath.ROUTER_VOICE_ROOM_INVITE, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, null, -1, Integer.MIN_VALUE));
    }
}
