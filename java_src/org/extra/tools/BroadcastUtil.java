package org.extra.tools;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.extra.tools.ScreenBroadcastReceiver;
/* loaded from: classes7.dex */
public class BroadcastUtil implements ScreenBroadcastReceiver.ScreenStateListener {
    private static List<WeakReference<ScreenBroadcastReceiver.ScreenStateListener>> mDataList = new ArrayList();
    private final Object mSync = new Object();
    private ScreenBroadcastReceiver receiver = null;

    /* loaded from: classes7.dex */
    private static class Factory {
        private static final BroadcastUtil INSTANCE = new BroadcastUtil();

        private Factory() {
        }
    }

    public static BroadcastUtil getInstance() {
        return Factory.INSTANCE;
    }

    private void removeUnUse() {
        synchronized (this.mSync) {
            ArrayList<WeakReference> arrayList = new ArrayList();
            for (WeakReference<ScreenBroadcastReceiver.ScreenStateListener> weakReference : mDataList) {
                if (weakReference.get() == null) {
                    arrayList.add(weakReference);
                }
            }
            for (WeakReference weakReference2 : arrayList) {
                mDataList.remove(weakReference2);
            }
        }
    }

    @Override // org.extra.tools.ScreenBroadcastReceiver.ScreenStateListener
    public void onScreenOff() {
        removeUnUse();
        synchronized (this.mSync) {
            for (int size = mDataList.size() - 1; size >= 0; size--) {
                ScreenBroadcastReceiver.ScreenStateListener screenStateListener = mDataList.get(size).get();
                if (screenStateListener != null) {
                    screenStateListener.onScreenOff();
                }
            }
        }
    }

    @Override // org.extra.tools.ScreenBroadcastReceiver.ScreenStateListener
    public void onScreenOn() {
        removeUnUse();
        synchronized (this.mSync) {
            for (int size = mDataList.size() - 1; size >= 0; size--) {
                ScreenBroadcastReceiver.ScreenStateListener screenStateListener = mDataList.get(size).get();
                if (screenStateListener != null) {
                    screenStateListener.onScreenOn();
                }
            }
        }
    }

    public void registerScreenBroadcast() {
        if (this.receiver != null) {
            return;
        }
        ScreenBroadcastReceiver screenBroadcastReceiver = new ScreenBroadcastReceiver(this);
        this.receiver = screenBroadcastReceiver;
        screenBroadcastReceiver.register();
    }

    public void unregisterScreenBroadcast() {
        ScreenBroadcastReceiver screenBroadcastReceiver = this.receiver;
        if (screenBroadcastReceiver != null) {
            screenBroadcastReceiver.unregister();
            this.receiver = null;
        }
    }

    public void registerScreenBroadcast(ScreenBroadcastReceiver.ScreenStateListener screenStateListener) {
        if (this.receiver == null) {
            return;
        }
        removeUnUse();
        if (screenStateListener == null) {
            return;
        }
        synchronized (this.mSync) {
            for (WeakReference<ScreenBroadcastReceiver.ScreenStateListener> weakReference : mDataList) {
                if (screenStateListener == weakReference.get()) {
                    return;
                }
            }
            mDataList.add(new WeakReference<>(screenStateListener));
        }
    }

    public void unregisterScreenBroadcast(ScreenBroadcastReceiver.ScreenStateListener screenStateListener) {
        if (this.receiver == null) {
            return;
        }
        removeUnUse();
        if (screenStateListener == null) {
            return;
        }
        synchronized (this.mSync) {
            WeakReference<ScreenBroadcastReceiver.ScreenStateListener> weakReference = null;
            for (WeakReference<ScreenBroadcastReceiver.ScreenStateListener> weakReference2 : mDataList) {
                if (screenStateListener == weakReference2.get()) {
                    weakReference = weakReference2;
                }
            }
            if (weakReference != null) {
                mDataList.remove(weakReference);
            }
        }
    }
}
