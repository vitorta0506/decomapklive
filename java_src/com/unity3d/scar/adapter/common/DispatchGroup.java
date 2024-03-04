package com.unity3d.scar.adapter.common;
/* loaded from: classes4.dex */
public class DispatchGroup {
    private Runnable _runnable;
    private int _threadCount = 0;

    private void notifyGroup() {
        Runnable runnable;
        if (this._threadCount > 0 || (runnable = this._runnable) == null) {
            return;
        }
        runnable.run();
    }

    public synchronized void enter() {
        this._threadCount++;
    }

    public synchronized void leave() {
        this._threadCount--;
        notifyGroup();
    }

    public void notify(Runnable runnable) {
        this._runnable = runnable;
        notifyGroup();
    }
}
