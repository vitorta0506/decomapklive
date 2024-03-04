package com.guochao.faceshow.aaspring.utils;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveRoomDataObservable {
    private static LiveRoomDataObservable instance;
    private List<LiveRoomDataObserver> observerList = new ArrayList();

    public static LiveRoomDataObservable getInstance() {
        if (instance == null) {
            synchronized (LiveRoomDataObservable.class) {
                if (instance == null) {
                    instance = new LiveRoomDataObservable();
                }
            }
        }
        return instance;
    }

    public void addObserver(LiveRoomDataObserver liveRoomDataObserver) {
        this.observerList.add(liveRoomDataObserver);
    }

    public void notifyRoomItemAdmin(int i9, boolean z10) {
        for (int i10 = 0; i10 < this.observerList.size(); i10++) {
            this.observerList.get(i10).onRoomItemAdminNotify(i9, z10);
        }
    }

    public void notifyRoomItemKick(int i9, boolean z10) {
        for (int i10 = 0; i10 < this.observerList.size(); i10++) {
            this.observerList.get(i10).onRoomItemKickNotify(i9, z10);
        }
    }

    public void notifyRoomItemMute(int i9, boolean z10) {
        for (int i10 = 0; i10 < this.observerList.size(); i10++) {
            this.observerList.get(i10).onRoomItemMuteNotify(i9, z10);
        }
    }

    public void removeAllObserver() {
        this.observerList.clear();
    }

    public void removeObserver(LiveRoomDataObserver liveRoomDataObserver) {
        this.observerList.remove(liveRoomDataObserver);
    }
}
