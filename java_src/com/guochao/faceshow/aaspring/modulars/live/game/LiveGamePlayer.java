package com.guochao.faceshow.aaspring.modulars.live.game;

import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public interface LiveGamePlayer extends p7.h {
    int getGameSeatCurrentPlayerPosition();

    long getRestActiveTime();

    @Override // p7.h
    @Nullable
    /* bridge */ /* synthetic */ b8.g getVipInfo();

    boolean isActive();
}
