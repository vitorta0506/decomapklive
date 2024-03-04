package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.ActivityOptionsCompat;
import androidx.fragment.app.Fragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.utils.PushUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class t {

    /* renamed from: d  reason: collision with root package name */
    private static t f19077d;

    /* renamed from: a  reason: collision with root package name */
    private LiveRoomPageData f19078a;

    /* renamed from: b  reason: collision with root package name */
    private int f19079b;

    /* renamed from: c  reason: collision with root package name */
    private final List<RoomItemData> f19080c = new ArrayList();

    public static void a(List<VoiceRoomInfoModel> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            VoiceRoomInfoModel voiceRoomInfoModel = list.get(i9);
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setVoiceRoom(true);
            roomItemData.setUserId(voiceRoomInfoModel.getUserId());
            roomItemData.setLiveRoomId(String.valueOf(voiceRoomInfoModel.getRoomId()));
            roomItemData.setLiveImg(voiceRoomInfoModel.getBackImgUrl());
            roomItemData.setChatGroupId(voiceRoomInfoModel.getChatGroupId());
            roomItemData.setCoverImgUrl(voiceRoomInfoModel.getCoverImgUrl());
            arrayList.add(roomItemData);
        }
        c().l(arrayList);
    }

    public static t c() {
        if (f19077d == null) {
            synchronized (t.class) {
                if (f19077d == null) {
                    f19077d = new t();
                }
            }
        }
        return f19077d;
    }

    public int b() {
        return this.f19079b;
    }

    public LiveRoomPageData d() {
        return this.f19078a;
    }

    public List<RoomItemData> e() {
        return this.f19080c;
    }

    public void f(Context context, LiveRoomPageData liveRoomPageData, int i9, int i10) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        if (!z8.c.o().x(liveRoomPageData.getRoomList().get(i9))) {
            WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
            if (AppManager.getInstance().containActivity(watchLiveRoomActivity)) {
                watchLiveRoomActivity.finish(false);
            }
            Intent intent = new Intent(context, WatchLiveRoomActivity.class);
            intent.addFlags(603979776);
            intent.putExtra("ROOM_POS_KEY", i9);
            if (liveRoomPageData.getRoomList().size() > i9) {
                intent.putExtra("ShowGiftDialog", liveRoomPageData.getRoomList().get(i9).isShowGiftDialog());
            }
            k(liveRoomPageData);
            if (context instanceof Activity) {
                ((Activity) context).startActivityForResult(intent, i10);
                return;
            }
            intent.addFlags(268435456);
            context.startActivity(intent);
            return;
        }
        z8.c.o().u(liveRoomPageData.getRoomList());
    }

    public void g(Context context, List<RoomItemData> list, int i9, int i10, int i11) {
        h(context, list, i9, i10, i11, 1, false);
    }

    public void h(Context context, List<RoomItemData> list, int i9, int i10, int i11, int i12, boolean z10) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        Intent intent = new Intent(context, WatchLiveRoomActivity.class);
        intent.addFlags(603979776);
        intent.putExtra("ROOM_POS_KEY", i9);
        intent.putExtra("ROOM_STATE", i11);
        intent.putExtra("fromFloatLive", z10);
        l(list);
        m(i12);
        if (context instanceof Activity) {
            ((Activity) context).startActivityForResult(intent, i10);
            return;
        }
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public void i(Context context, List<RoomItemData> list, int i9, int i10, int i11, boolean z10) {
        h(context, list, i9, i10, i11, 1, z10);
    }

    public void j(Fragment fragment, LiveRoomPageData liveRoomPageData, int i9, int i10) {
        if (UserStateHolder.checkLiveState(R.string.livenotwatchlive, R.string.onevone_notwatchlive, R.string.livenotwatchlive, R.string.trtc_is_calling_no_live)) {
            return;
        }
        Intent intent = new Intent(fragment.getContext(), WatchLiveRoomActivity.class);
        intent.addFlags(603979776);
        intent.putExtra("ROOM_POS_KEY", i9);
        k(liveRoomPageData);
        fragment.startActivityForResult(intent, i10, ActivityOptionsCompat.makeCustomAnimation(fragment.getContext(), R.anim.bottom_to_top, R.anim.activity_stay).toBundle());
    }

    public void k(LiveRoomPageData liveRoomPageData) {
        this.f19078a = liveRoomPageData;
        l(liveRoomPageData.getRoomList());
    }

    public void l(List<RoomItemData> list) {
        ArrayList<RoomItemData> arrayList = new ArrayList(list);
        ArrayList arrayList2 = new ArrayList();
        for (RoomItemData roomItemData : arrayList) {
            if (!PushUtils.CHAT_PUSH_TYPE.equals(roomItemData.getLiveId()) && !"-2".equals(roomItemData.getLiveId()) && !"-3".equals(roomItemData.getLiveId()) && !"-4".equals(roomItemData.getLiveId())) {
                arrayList2.add(roomItemData);
            }
        }
        this.f19080c.clear();
        this.f19080c.addAll(arrayList2);
    }

    public void m(int i9) {
        this.f19079b = i9;
    }
}
