package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.user.RoomInfo;
import d9.n;
import java.util.List;
import p7.g;
/* loaded from: classes3.dex */
public class LiveLaunchResponse extends BroadCasterLiveModel {
    private String fcoin;
    private String reasonMsgLang;
    private String streamId;
    private String userLiveBanned;

    public LiveLaunchResponse(UserBean userBean) {
        super(userBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ RoomInfo buildRoomInfo() {
        return n.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean canMakeVideoOrAudioCall() {
        return n.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ List getBigGiftBeans() {
        return n.i(this);
    }

    public String getFcoin() {
        return this.fcoin;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
        return q.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getReasonMsgLang() {
        return this.reasonMsgLang;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ String getStatus() {
        return n.p(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getStreamId() {
        if (TextUtils.isEmpty(this.streamId)) {
            return getBroadCasterUserId();
        }
        return this.streamId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ String getStream_id() {
        return n.r(this);
    }

    public String getUserLiveBanned() {
        return this.userLiveBanned;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ boolean isBanTalk() {
        return n.w(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isFocused() {
        return n.x(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isLaunchFromFloatWindow() {
        return n.C(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isMute() {
        return n.F(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isPkModeWhenFloatWindow() {
        return n.G(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ boolean isShowedFloatFromLiveRoom() {
        return n.J(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setBanTalk(boolean z10) {
        n.R(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ void setBigGiftBeans(List list) {
        n.S(this, list);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setBroadCasterUserName(String str) {
        n.T(this, str);
    }

    public void setFcoin(String str) {
        this.fcoin = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setFocused(boolean z10) {
        n.V(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ void setGameInfoList(List list) {
        n.X(this, list);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel
    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setKickedOut(boolean z10) {
        n.c0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setLaunchFromFloatWindow(boolean z10) {
        n.d0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setMute(boolean z10) {
        n.i0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setPkModeWhenFloatWindow(boolean z10) {
        n.k0(this, z10);
    }

    public void setReasonMsgLang(String str) {
        this.reasonMsgLang = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setShowedFloatFromLiveRoom(boolean z10) {
        n.n0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setStatus(String str) {
        n.o0(this, str);
    }

    public void setStreamId(String str) {
        this.streamId = str;
    }

    public void setUserLiveBanned(String str) {
        this.userLiveBanned = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setUserType(int i9) {
        n.p0(this, i9);
    }
}
