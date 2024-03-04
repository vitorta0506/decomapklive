package com.guochao.faceshow.aaspring.modulars.live.share;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3.dex */
public class InviteBridgeActivity extends BaseActivity {
    @Deprecated
    public static Intent b0(Context context, Parcelable parcelable) {
        return new Intent(context, InviteBridgeActivity.class).putExtra("data", parcelable);
    }

    public static void d0(Context context, Bundle bundle, boolean z10) {
        Intent intent = new Intent(context, InviteBridgeActivity.class);
        intent.putExtra("pushData", bundle);
        intent.putExtra("voiceRoom", z10);
        context.startActivity(intent);
    }

    private void e0(Bundle bundle) {
        String string = bundle.getString("ids");
        String string2 = bundle.getString("chatGroupIds");
        String string3 = bundle.getString("startTimestamps");
        boolean booleanExtra = getIntent().getBooleanExtra("voiceRoom", false);
        String[] split = string.split(",");
        String[] strArr = new String[0];
        String[] strArr2 = new String[0];
        if (string2 != null) {
            strArr = string2.split(",");
        }
        if (string3 != null) {
            strArr2 = string3.split(",");
        }
        if (split.length == 0) {
            return;
        }
        if (booleanExtra || split.length == strArr2.length) {
            if (!booleanExtra || strArr.length == split.length) {
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 < split.length; i9++) {
                    RoomItemData roomItemData = new RoomItemData();
                    roomItemData.setLiveId(split[i9]);
                    roomItemData.setVoiceRoom(booleanExtra);
                    if (booleanExtra) {
                        roomItemData.setChatGroupId(strArr[i9]);
                    } else {
                        roomItemData.setLiveStartTimestamp(strArr2[i9]);
                    }
                    arrayList.add(roomItemData);
                }
                LiveRoomPageData liveRoomPageData = new LiveRoomPageData();
                liveRoomPageData.setRoomList(arrayList);
                liveRoomPageData.setTypeId(String.valueOf(3));
                t.c().f(this, liveRoomPageData, 0, 0);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        DelayIniter.initTencentConfig();
        DelayIniter.initWhenSplashOrMain();
        super.onCreate(bundle);
        Parcelable parcelableExtra = getIntent().getParcelableExtra("data");
        Bundle bundleExtra = getIntent().getBundleExtra("pushData");
        if (parcelableExtra == null && bundleExtra == null) {
            finish();
        } else if (bundleExtra != null) {
            e0(bundleExtra);
            finish();
        } else {
            if (parcelableExtra instanceof PrivateLiveInviteManager.InviteInfo) {
                RoomItemData roomItemData = new RoomItemData();
                PrivateLiveInviteManager.InviteInfo inviteInfo = (PrivateLiveInviteManager.InviteInfo) parcelableExtra;
                roomItemData.setLiveId(inviteInfo.liveId);
                roomItemData.setStartTime(inviteInfo.startTime);
                roomItemData.setLiveType(inviteInfo.liveType);
                roomItemData.setNickName(inviteInfo.nickName);
                roomItemData.setLiveImg(inviteInfo.liveImg);
                roomItemData.setImg(inviteInfo.userImg);
                roomItemData.setChatGroupId(inviteInfo.groupId);
                roomItemData.setGroupId(inviteInfo.groupId);
                roomItemData.setStatus("0");
                roomItemData.setPrivateType(inviteInfo.privateType);
                Bundle bundle2 = new Bundle();
                bundle2.putString(EventTrackingUtils.CONTENT_TYPE, "from_online_notification");
                int i9 = inviteInfo.from;
                if (i9 == 1) {
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_CLICK_BY_JIGUANG, bundle2);
                } else if (i9 == 2) {
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_CLICK_BY_TIM, bundle2);
                } else if (i9 == 3) {
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.PRIVATE_LIVE_INVITE_CLICK_BY_FCM, bundle2);
                }
                if ("2".equals(roomItemData.getPrivateType())) {
                    t.c().g(this, Collections.singletonList(roomItemData), 0, 0, 1);
                } else {
                    WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
                    if (watchLiveRoomActivity != null && !watchLiveRoomActivity.isFinishing()) {
                        watchLiveRoomActivity.B1(roomItemData);
                    } else {
                        t.c().g(this, Collections.singletonList(roomItemData), 0, 0, 0);
                    }
                }
            } else if (parcelableExtra instanceof Bundle) {
                Intent intent = new Intent(this, SplashActivity.class);
                intent.putExtras((Bundle) parcelableExtra);
                startActivity(intent);
            }
            finish();
        }
    }
}
