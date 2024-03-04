package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import p7.d;
import p7.g;
/* loaded from: classes3.dex */
public class LiveGameStartBean implements JoinGameUser {
    private int anchorDiamond;
    private int diamond;
    private int idx;
    private int isWinner;
    private String logo;
    private String nickName;
    private long userId;

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    public int getAnchorDiamond() {
        return this.anchorDiamond;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h, p7.c
    public String getAvatarUrl() {
        return this.logo;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
    public String getCountryFlag() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
    public String getCurrentUserId() {
        return String.valueOf(this.userId);
    }

    public int getDiamond() {
        return this.diamond;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
        return q.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h, p7.c
    public int getGender() {
        return 0;
    }

    public int getIdx() {
        return this.idx;
    }

    public int getIsWinner() {
        return this.isWinner;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNickName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
    public String getPendantUrl() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public int getRemovePosition() {
        return this.idx;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public long getUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
    public String getUserName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    public void setAnchorDiamond(int i9) {
        this.anchorDiamond = i9;
    }

    public void setDiamond(int i9) {
        this.diamond = i9;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    public void setIdx(int i9) {
        this.idx = i9;
    }

    public void setImg(String str) {
        this.logo = str;
    }

    public void setIsWinner(int i9) {
        this.isWinner = i9;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public void setRemovePosition(int i9) {
        this.idx = i9;
    }

    public void setUserId(long j10) {
        this.userId = j10;
    }
}
