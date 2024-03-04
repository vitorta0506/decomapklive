package com.tencent.thumbplayer.api.connection;

import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.connection.TPPlayerConnectionConstant;
import com.tencent.thumbplayer.core.connection.TPNativePlayerConnectionNode;
/* loaded from: classes4.dex */
public class TPPlayerConnectionNode {
    private TPNativePlayerConnectionNode nativeNode = new TPNativePlayerConnectionNode();

    public boolean addAction(@TPPlayerConnectionConstant.Action int i9) {
        return this.nativeNode.addAction(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i9));
    }

    public TPNativePlayerConnectionNode getNativeNode() {
        return this.nativeNode;
    }

    public void removeAction(@TPPlayerConnectionConstant.Action int i9) {
        this.nativeNode.removeAction(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i9));
    }

    public boolean setLongActionConfig(@TPPlayerConnectionConstant.Action int i9, int i10, long j10) {
        return this.nativeNode.setLongActionConfig(TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionAction.class, i9), TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapConnectionConfig.class, i10), j10);
    }
}
