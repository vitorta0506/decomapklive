package com.tencent.thumbplayer.core.connection;

import java.util.HashMap;
/* loaded from: classes4.dex */
public class TPNativePlayerConnectionNode {
    private HashMap<Integer, HashMap<Integer, Long>> mLongMap;

    public TPNativePlayerConnectionNode() {
        this.mLongMap = null;
        this.mLongMap = new HashMap<>();
    }

    public boolean addAction(int i9) {
        if (this.mLongMap.containsKey(Integer.valueOf(i9))) {
            return false;
        }
        this.mLongMap.put(Integer.valueOf(i9), new HashMap<>());
        return true;
    }

    public void removeAction(int i9) {
        if (this.mLongMap.containsKey(Integer.valueOf(i9))) {
            this.mLongMap.remove(Integer.valueOf(i9));
        }
    }

    public boolean setLongActionConfig(int i9, int i10, long j10) {
        if (this.mLongMap.containsKey(Integer.valueOf(i9))) {
            this.mLongMap.get(Integer.valueOf(i9)).put(Integer.valueOf(i10), Long.valueOf(j10));
            return true;
        }
        return false;
    }
}
