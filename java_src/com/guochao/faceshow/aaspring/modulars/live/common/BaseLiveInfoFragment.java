package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.component.liveroom.model.GCVoiceLiveRoomModel;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import d9.e;
/* loaded from: classes3.dex */
public class BaseLiveInfoFragment extends BaseFragment implements d9.e {
    protected d9.g mILiveRoomManager;

    @OnClick
    @Optional
    public void empty(View view) {
    }

    @Override // d9.e
    public LiveRoomModel getCurrentLiveRoom() {
        d9.g gVar = this.mILiveRoomManager;
        if (gVar != null) {
            return gVar.getCurrentLiveRoom();
        }
        return null;
    }

    public GCVoiceLiveRoomModel getCurrentVoiceRoomModel() {
        return (GCVoiceLiveRoomModel) getCurrentLiveRoom();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // d9.e
    public void onAtSomebody(String str, String str2) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof d9.g) {
            this.mILiveRoomManager = (d9.g) parentFragment;
        }
    }

    public void onEnterRoom(String str) {
    }

    public void onLinkMicResponse(boolean z10) {
    }

    @Override // d9.e
    public void onLinkMicStatusChanged(boolean z10) {
    }

    @Override // d9.e
    public void onLiveFinish(int i9, String str) {
    }

    @Override // d9.e
    public void onNetworkLose(int i9) {
    }

    @Override // d9.e
    public void onNetworkResume(int i9) {
    }

    public /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    public /* synthetic */ void onPlaySuccess() {
        d9.d.b(this);
    }

    @Override // d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
    }

    @Override // d9.e
    public void onReceiveFaceGift(GiftLiveMessage giftLiveMessage) {
    }

    @Override // d9.e
    public void onReceiveHugeGift(LiveMessageModel liveMessageModel) {
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void onReceiveLiveMessage(LiveMessageModel<T> liveMessageModel) {
    }

    public void onRefreshLiveInfo() {
    }

    @Override // d9.e
    public void onSelfMute(boolean z10) {
    }

    @Override // d9.e
    public void onUserTypeChanged(int i9) {
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar) {
        d9.g gVar = this.mILiveRoomManager;
        if (gVar != null) {
            gVar.sendC2CLiveMessage(str, liveMessageModel, aVar);
        }
    }

    @Override // d9.e
    public <T extends BaseLiveMessage> void sendLiveMessage(@NonNull LiveMessageModel<T> liveMessageModel, e.a<Boolean> aVar) {
        d9.g gVar = this.mILiveRoomManager;
        if (gVar != null) {
            gVar.sendLiveMessage(liveMessageModel, aVar);
        }
    }

    @Override // d9.e
    public void sendLiveMessageCmd(@NonNull String str, e.a<Boolean> aVar) {
        d9.g gVar = this.mILiveRoomManager;
        if (gVar != null) {
            gVar.sendLiveMessageCmd(str, aVar);
        }
    }

    @Override // d9.e
    public void sendLiveMessage(@NonNull String str, e.a<Boolean> aVar) {
        d9.g gVar = this.mILiveRoomManager;
        if (gVar != null) {
            gVar.sendLiveMessage(str, aVar);
        }
    }
}
