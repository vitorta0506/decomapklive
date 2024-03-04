package com.guochao.faceshow.utils;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class LiveInfoUtils {
    public static void getLiveInfoAndJumpIfNeed(String str, Context context) {
        RoomItemData roomItemData = new RoomItemData();
        roomItemData.setLiveRoomId(str);
        jumpToBaseLiveRoomAct(roomItemData, context);
    }

    public static void jumpToBaseLiveRoomAct(LiveRoomModel liveRoomModel, Context context) {
        jumpToBaseLiveRoomAct(liveRoomModel, context, false);
    }

    public static void jumpToBaseLiveRoomAct(LiveRoomModel liveRoomModel, Context context, boolean z10) {
        LiveRoomPageData liveRoomPageData = new LiveRoomPageData();
        liveRoomPageData.setRoomList(new ArrayList<RoomItemData>() { // from class: com.guochao.faceshow.utils.LiveInfoUtils.1
            {
                add((RoomItemData) LiveRoomModel.this);
            }
        });
        liveRoomPageData.setCurrentPage("0");
        liveRoomPageData.setTypeId(String.valueOf(1));
        t.c().f(context, liveRoomPageData, 0, 0);
    }

    public static void jumpToBaseLiveRoomAct(LiveRoomModel liveRoomModel, Fragment fragment, int i9) {
        LiveRoomPageData liveRoomPageData = new LiveRoomPageData();
        liveRoomPageData.setRoomList(new ArrayList<RoomItemData>() { // from class: com.guochao.faceshow.utils.LiveInfoUtils.2
            {
                add((RoomItemData) LiveRoomModel.this);
            }
        });
        liveRoomPageData.setCurrentPage("0");
        liveRoomPageData.setTypeId(String.valueOf(1));
        t.c().j(fragment, liveRoomPageData, 0, i9);
    }
}
