package com.tencent.thumbplayer.core.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.RequiresApi;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
/* loaded from: classes4.dex */
public class TPHeadsetPluginDetector {
    private static final int AUDIO_TYPE_BLUETOOTH_A2DP = 2;
    private static final int AUDIO_TYPE_BUILTIN_OTHERS = 99;
    private static final int AUDIO_TYPE_BUILTIN_SPEAKER = 0;
    private static final int AUDIO_TYPE_HEADPHONES = 1;
    private static final String TAG = "TPHeadsetPluginDetector";
    private static boolean hasRegisterReceiver = false;
    private static boolean isInitted = false;
    private static WeakReference<Context> mContextRef;
    private static BroadcastReceiver mReceiver;
    private static List<HeadsetPluginListener> listeners = new LinkedList();
    private static Set<Integer> mCurOutputs = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface HeadsetPluginListener {
        void onHeadsetPlugin(Set<Integer> set, Set<Integer> set2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class HeadsetPluginReceiver extends BroadcastReceiver {
        private HeadsetPluginReceiver() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
            if (r7 != null) goto L8;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onReceive(android.content.Context r7, android.content.Intent r8) {
            /*
                r6 = this;
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                java.lang.String r0 = "onReceive: "
                r7.<init>(r0)
                java.lang.String r0 = r8.getAction()
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r0 = 2
                java.lang.Integer r1 = java.lang.Integer.valueOf(r0)
                java.lang.String r2 = "TPHeadsetPluginDetector"
                com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r0, r2, r7)
                java.util.Set r7 = com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$100()
                java.lang.String r2 = r8.getAction()
                java.lang.String r3 = "android.intent.action.HEADSET_PLUG"
                boolean r2 = r3.equals(r2)
                r3 = 0
                r4 = 1
                java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
                if (r2 == 0) goto L54
                java.lang.String r0 = "state"
                boolean r1 = r8.hasExtra(r0)
                if (r1 == 0) goto L3f
                int r3 = r8.getIntExtra(r0, r3)
            L3f:
                if (r7 == 0) goto L4c
                if (r3 != 0) goto L47
            L43:
                r7.remove(r5)
                goto L4c
            L47:
                if (r3 != r4) goto L4c
                r7.add(r5)
            L4c:
                java.util.Set r8 = com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$000()
                com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$200(r8, r7)
                return
            L54:
                java.lang.String r2 = r8.getAction()
                java.lang.String r4 = "android.media.AUDIO_BECOMING_NOISY"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L63
                if (r7 == 0) goto L4c
                goto L43
            L63:
                java.lang.String r2 = r8.getAction()
                java.lang.String r4 = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L89
                java.lang.String r2 = "android.bluetooth.profile.extra.STATE"
                int r8 = r8.getIntExtra(r2, r3)
                if (r7 == 0) goto L82
                if (r8 != r0) goto L7d
                r7.add(r1)
                goto L82
            L7d:
                if (r8 != 0) goto L82
                r7.remove(r1)
            L82:
                java.util.Set r8 = com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$000()
                com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$200(r8, r7)
            L89:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.HeadsetPluginReceiver.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    static /* synthetic */ Set access$100() {
        return getAudioOutputs();
    }

    public static void addHeadsetPluginListener(HeadsetPluginListener headsetPluginListener) {
        synchronized (TPHeadsetPluginDetector.class) {
            if (listeners.add(headsetPluginListener) && !hasRegisterReceiver) {
                registerReceiver();
                hasRegisterReceiver = true;
            }
        }
    }

    public static void deinit() {
        WeakReference<Context> weakReference;
        synchronized (TPHeadsetPluginDetector.class) {
            if (isInitted && (weakReference = mContextRef) != null) {
                weakReference.clear();
                isInitted = false;
                TPNativeLog.printLog(2, TAG, "HeadsetPluginDetector deinit succeed!");
            }
        }
    }

    private static AudioManager getAudioManager() {
        String str;
        WeakReference<Context> weakReference;
        if (!isInitted || (weakReference = mContextRef) == null) {
            str = "getAudioManager failed, HeadsetPluginDetector is not init yet!";
        } else {
            Context context = weakReference.get();
            if (context == null) {
                str = "getAudioManager failed, context is null, maybe is invalid!";
            } else {
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                if (audioManager != null) {
                    return audioManager;
                }
                str = "getAudioManager failed, audioMgr is null!";
            }
        }
        TPNativeLog.printLog(4, TAG, str);
        return null;
    }

    private static Set<Integer> getAudioOutputs() {
        int i9;
        HashSet hashSet = new HashSet();
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return hashSet;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            AudioDeviceInfo[] devices = audioManager.getDevices(2);
            if (devices != null) {
                for (AudioDeviceInfo audioDeviceInfo : devices) {
                    if (audioDeviceInfo.getType() == 2) {
                        i9 = 0;
                    } else if (audioDeviceInfo.getType() == 8) {
                        i9 = 2;
                    } else if (audioDeviceInfo.getType() == 3) {
                        i9 = 1;
                    }
                    hashSet.add(i9);
                }
            }
        } else {
            hashSet.add(0);
            if (isHeadsetPlugin()) {
                hashSet.add(1);
            }
            if (isBluetoothPlugin()) {
                hashSet.add(2);
            }
        }
        return hashSet;
    }

    @TPMethodCalledByNative
    public static Set<Integer> getCurrentRoutes() {
        return mCurOutputs;
    }

    public static void init(Context context) {
        synchronized (TPHeadsetPluginDetector.class) {
            if (isInitted) {
                return;
            }
            mContextRef = new WeakReference<>(context.getApplicationContext());
            isInitted = true;
            initCurrentOutputs();
            TPNativeLog.printLog(2, TAG, "HeadsetPluginDetector init succeed!");
        }
    }

    private static void initCurrentOutputs() {
        mCurOutputs = getAudioOutputs();
    }

    @TPMethodCalledByNative
    public static boolean isAudioRouteTypeOn(int i9) {
        Set<Integer> set = mCurOutputs;
        if (set == null) {
            return false;
        }
        return set.contains(Integer.valueOf(i9));
    }

    @TPMethodCalledByNative
    public static boolean isBluetoothPlugin() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        return audioManager.isBluetoothA2dpOn();
    }

    @TPMethodCalledByNative
    public static boolean isHeadsetPlugin() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        return audioManager.isWiredHeadsetOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyAudioOutputStateChange(Set<Integer> set, Set<Integer> set2) {
        if (set == null || set2 == null || set.size() != set2.size() || !set2.containsAll(set)) {
            mCurOutputs = set2;
            synchronized (TPHeadsetPluginDetector.class) {
                for (HeadsetPluginListener headsetPluginListener : listeners) {
                    headsetPluginListener.onHeadsetPlugin(set, set2);
                }
            }
        }
    }

    @RequiresApi(api = 23)
    private static boolean registerDeviceCallback() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        audioManager.registerAudioDeviceCallback(new AudioDeviceCallback() { // from class: com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.1
            @Override // android.media.AudioDeviceCallback
            public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                TPNativeLog.printLog(2, TPHeadsetPluginDetector.TAG, "onAudioDevicesAdded!");
                TPHeadsetPluginDetector.notifyAudioOutputStateChange(TPHeadsetPluginDetector.mCurOutputs, TPHeadsetPluginDetector.access$100());
            }

            @Override // android.media.AudioDeviceCallback
            public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                TPNativeLog.printLog(2, TPHeadsetPluginDetector.TAG, "onAudioDevicesRemoved!");
                TPHeadsetPluginDetector.notifyAudioOutputStateChange(TPHeadsetPluginDetector.mCurOutputs, TPHeadsetPluginDetector.access$100());
            }
        }, null);
        return true;
    }

    private static void registerReceiver() {
        WeakReference<Context> weakReference;
        if (Build.VERSION.SDK_INT < 23 || !registerDeviceCallback()) {
            if (mReceiver == null) {
                mReceiver = new HeadsetPluginReceiver();
            }
            if (!isInitted || (weakReference = mContextRef) == null) {
                TPNativeLog.printLog(4, TAG, "registerReceiver failed, TPHeadsetPluginDetector is not init yet!");
                return;
            }
            Context context = weakReference.get();
            if (context == null) {
                TPNativeLog.printLog(4, TAG, "registerReceiver failed, context is null, maybe is invalid!");
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.HEADSET_PLUG");
            intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
            intentFilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
            context.registerReceiver(mReceiver, intentFilter);
        }
    }

    public static void removeHeadsetPluginListener(HeadsetPluginListener headsetPluginListener) {
        synchronized (TPHeadsetPluginDetector.class) {
            listeners.remove(headsetPluginListener);
            if (listeners.isEmpty() && hasRegisterReceiver) {
                unregisterReceiver();
                hasRegisterReceiver = false;
            }
        }
    }

    private static void unregisterReceiver() {
        WeakReference<Context> weakReference;
        if (!isInitted || (weakReference = mContextRef) == null) {
            TPNativeLog.printLog(4, TAG, "registerReceiver failed, HeadsetPluginDetector is not init yet!");
            return;
        }
        Context context = weakReference.get();
        if (context == null) {
            TPNativeLog.printLog(4, TAG, "registerReceiver failed, context is null, maybe is invalid!");
        } else {
            context.unregisterReceiver(mReceiver);
        }
    }
}
