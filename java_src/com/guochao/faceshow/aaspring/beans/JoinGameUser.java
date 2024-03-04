package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import b8.g;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer;
/* loaded from: classes3.dex */
public interface JoinGameUser extends LiveGamePlayer {
    @Override // p7.b
    /* bridge */ /* synthetic */ int getAge();

    @Override // p7.h, p7.c
    /* synthetic */ String getAvatarUrl();

    @Override // p7.h
    /* synthetic */ String getCountryFlag();

    @Override // p7.h
    /* synthetic */ String getCurrentUserId();

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition();

    @Override // p7.h, p7.c
    /* synthetic */ int getGender();

    @Override // p7.e
    /* bridge */ /* synthetic */ int getLevel();

    @Override // p7.h
    /* bridge */ /* synthetic */ String getMVPUrl();

    @Override // p7.h
    /* synthetic */ String getPendantUrl();

    int getRemovePosition();

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    /* bridge */ /* synthetic */ long getRestActiveTime();

    @Override // p7.h
    /* bridge */ /* synthetic */ String getUserName();

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    @Nullable
    /* bridge */ /* synthetic */ g getVipInfo();

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    /* bridge */ /* synthetic */ boolean isActive();

    /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9);

    void setRemovePosition(int i9);
}
