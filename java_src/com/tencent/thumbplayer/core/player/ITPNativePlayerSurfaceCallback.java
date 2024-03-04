package com.tencent.thumbplayer.core.player;

import com.tencent.thumbplayer.core.common.TPVideoPacket;
/* loaded from: classes4.dex */
public interface ITPNativePlayerSurfaceCallback {
    void onFlush();

    void onRenderInfo(TPNativePlayerSurfaceRenderInfo tPNativePlayerSurfaceRenderInfo);

    void onVideoPacket(TPVideoPacket tPVideoPacket);
}
