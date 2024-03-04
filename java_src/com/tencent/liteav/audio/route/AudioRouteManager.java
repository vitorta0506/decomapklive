package com.tencent.liteav.audio.route;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioRecordingConfiguration;
import android.os.HandlerThread;
import androidx.annotation.RequiresApi;
import com.tencent.liteav.audio.route.b;
import com.tencent.liteav.audio.route.n;
import com.tencent.liteav.audio.route.o;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import java.util.List;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
public class AudioRouteManager extends o.a {
    private static final int BLUETOOTH_SCO_RECONNECT_INTERVAL = 1000;
    private static final long IN_CALL_DETECTION_TIME = 500;
    private static final int RECORDING_CONFIGS_LIMIT = 10;
    private static final String TAG = "AudioRouteManager";
    private final AudioManager mAudioManager;
    private AudioManager.AudioRecordingCallback mAudioRecordingCallback;
    private final m mAudioRouteSupervisor;
    private final o mBroadcastReceiver;
    private a mCurrentAudioIOScene;
    private String mCurrentRouteConfig;
    private b.a mCurrentRouteType;
    private a mExpectedAudioIOScene;
    private final Runnable mForceUpdateRouteRunnable;
    private CustomHandler mHandler = null;
    private boolean mIsServiceStarted = false;
    private final long mNativeAudioRouteManager;
    private n.a mSwitcher;
    private n.a.InterfaceC0316a mSwitcherListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.audio.route.AudioRouteManager$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass2 extends AudioManager.AudioRecordingCallback {
        AnonymousClass2() {
        }

        @Override // android.media.AudioManager.AudioRecordingCallback
        public final void onRecordingConfigChanged(List<AudioRecordingConfiguration> list) {
            AudioRouteManager.this.runOnWorkThread(l.a(this, list));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class RecordingConfig {

        /* renamed from: a  reason: collision with root package name */
        int f30808a;

        /* renamed from: b  reason: collision with root package name */
        boolean f30809b;

        @CalledByNative("RecordingConfig")
        public int getSessionId() {
            return this.f30808a;
        }

        @CalledByNative("RecordingConfig")
        public boolean isSilenced() {
            return this.f30809b;
        }
    }

    @CalledByNative
    public AudioRouteManager(long j10) {
        a aVar = a.STOPPED;
        this.mCurrentAudioIOScene = aVar;
        this.mExpectedAudioIOScene = aVar;
        this.mCurrentRouteType = b.a.NONE;
        this.mSwitcher = null;
        this.mCurrentRouteConfig = "";
        this.mAudioRecordingCallback = null;
        this.mForceUpdateRouteRunnable = c.a(this);
        this.mSwitcherListener = new n.a.InterfaceC0316a() { // from class: com.tencent.liteav.audio.route.AudioRouteManager.1
            @Override // com.tencent.liteav.audio.route.n.a.InterfaceC0316a
            public final void a(b.a aVar2) {
                AudioRouteManager.nativeNotifyAudioRouteChangedFromJava(AudioRouteManager.this.mNativeAudioRouteManager, aVar2.ordinal());
            }

            @Override // com.tencent.liteav.audio.route.n.a.InterfaceC0316a
            public final void b(b.a aVar2) {
                b.a aVar3 = b.a.BLUETOOTH_HEADSET;
                if (aVar2 == aVar3) {
                    Log.w(AudioRouteManager.TAG, "switch to bluetooth failed, set it unavailable and update route again", new Object[0]);
                    AudioRouteManager.this.mAudioRouteSupervisor.a(aVar3, false);
                    AudioRouteManager.this.autoCheckRouteUpdate(false);
                    return;
                }
                Log.w(AudioRouteManager.TAG, "switch to %s failed, do nothing", aVar2);
            }
        };
        this.mNativeAudioRouteManager = j10;
        Context applicationContext = ContextUtils.getApplicationContext();
        this.mAudioRouteSupervisor = new m();
        this.mAudioManager = (AudioManager) applicationContext.getSystemService("audio");
        this.mBroadcastReceiver = new o(applicationContext, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void autoCheckRouteUpdate(boolean r7) {
        /*
            r6 = this;
            com.tencent.liteav.audio.route.a r0 = r6.mCurrentAudioIOScene
            com.tencent.liteav.audio.route.a r1 = com.tencent.liteav.audio.route.a.STOPPED
            if (r0 != r1) goto Le
            com.tencent.liteav.audio.route.b$a r7 = com.tencent.liteav.audio.route.b.a.NONE
            r6.mCurrentRouteType = r7
            r6.destroySwitcher()
            return
        Le:
            com.tencent.liteav.audio.route.m r0 = r6.mAudioRouteSupervisor
            boolean r1 = r0.f30846c
            r2 = 0
            if (r1 != 0) goto L20
            r0 = 0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.String r1 = "AudioRouteSupervisor"
            java.lang.String r3 = "err in getHighestPriorityRoute(), it's not been initialized yet"
            com.tencent.liteav.base.Log.e(r1, r3, r0)
            goto L52
        L20:
            java.util.HashMap<com.tencent.liteav.audio.route.b$a, com.tencent.liteav.audio.route.b> r0 = r0.f30845b
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r1 = r2
        L2b:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L4d
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r3 = r3.getValue()
            com.tencent.liteav.audio.route.b r3 = (com.tencent.liteav.audio.route.b) r3
            if (r3 == 0) goto L2b
            boolean r4 = r3.f30818b
            if (r4 == 0) goto L2b
            if (r1 == 0) goto L4b
            int r4 = r3.f30819c
            int r5 = r1.f30819c
            if (r4 < r5) goto L2b
        L4b:
            r1 = r3
            goto L2b
        L4d:
            if (r1 == 0) goto L52
            com.tencent.liteav.audio.route.b$a r0 = r1.f30817a
            goto L54
        L52:
            com.tencent.liteav.audio.route.b$a r0 = com.tencent.liteav.audio.route.m.f30844a
        L54:
            com.tencent.liteav.audio.route.b$a r1 = r6.mCurrentRouteType
            if (r1 != r0) goto L5a
            if (r7 == 0) goto L9d
        L5a:
            r6.mCurrentRouteType = r0
            r6.destroySwitcher()
            android.media.AudioManager r7 = r6.mAudioManager
            com.tencent.liteav.base.util.CustomHandler r1 = r6.mHandler
            com.tencent.liteav.audio.route.a r3 = r6.mCurrentAudioIOScene
            int[] r4 = com.tencent.liteav.audio.route.n.AnonymousClass1.f30847a
            int r0 = r0.ordinal()
            r0 = r4[r0]
            r4 = 1
            if (r0 == r4) goto L8c
            r4 = 2
            if (r0 == r4) goto L86
            r4 = 3
            if (r0 == r4) goto L80
            r4 = 4
            if (r0 == r4) goto L7a
            goto L91
        L7a:
            com.tencent.liteav.audio.route.n$b r2 = new com.tencent.liteav.audio.route.n$b
            r2.<init>(r7, r1, r3)
            goto L91
        L80:
            com.tencent.liteav.audio.route.n$e r2 = new com.tencent.liteav.audio.route.n$e
            r2.<init>(r7, r1, r3)
            goto L91
        L86:
            com.tencent.liteav.audio.route.n$d r2 = new com.tencent.liteav.audio.route.n$d
            r2.<init>(r7, r1, r3)
            goto L91
        L8c:
            com.tencent.liteav.audio.route.n$c r2 = new com.tencent.liteav.audio.route.n$c
            r2.<init>(r7, r1, r3)
        L91:
            r6.mSwitcher = r2
            com.tencent.liteav.audio.route.n$a$a r7 = r6.mSwitcherListener
            r2.a(r7)
            com.tencent.liteav.audio.route.n$a r7 = r6.mSwitcher
            r7.a()
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.route.AudioRouteManager.autoCheckRouteUpdate(boolean):void");
    }

    @RequiresApi(api = 24)
    private void buildAudioRecordingCallback() {
        if (this.mAudioRecordingCallback != null) {
            return;
        }
        this.mAudioRecordingCallback = new AnonymousClass2();
    }

    private void destroySwitcher() {
        n.a aVar = this.mSwitcher;
        if (aVar == null) {
            return;
        }
        aVar.b();
        this.mSwitcher = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBluetoothHeadsetChangedInternal(boolean z10) {
        if (!this.mIsServiceStarted) {
            Log.i(TAG, "ignore bluetooth headset changing, AudioRouteManager is not started", new Object[0]);
        } else if (this.mAudioRouteSupervisor.a(b.a.BLUETOOTH_HEADSET, z10)) {
            autoCheckRouteUpdate(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBluetoothSCOChangedInternal(boolean z10) {
        n.a aVar = this.mSwitcher;
        if (aVar != null) {
            aVar.a(z10);
        }
        removeCallbacksOnWorkThread(this.mForceUpdateRouteRunnable);
        if (z10 || !this.mIsServiceStarted || this.mCurrentAudioIOScene == a.STOPPED) {
            return;
        }
        runOnWorkThread(this.mForceUpdateRouteRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 24)
    public void handleRecordingConfigChanged(List<AudioRecordingConfiguration> list) {
        if (list.isEmpty()) {
            return;
        }
        int min = Math.min(list.size(), 10);
        RecordingConfig[] recordingConfigArr = new RecordingConfig[min];
        for (int i9 = 0; i9 < min; i9++) {
            recordingConfigArr[i9] = new RecordingConfig();
            AudioRecordingConfiguration audioRecordingConfiguration = list.get(i9);
            recordingConfigArr[i9].f30808a = audioRecordingConfiguration.getClientAudioSessionId();
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 29) {
                recordingConfigArr[i9].f30809b = audioRecordingConfiguration.isClientSilenced();
            } else {
                recordingConfigArr[i9].f30809b = false;
            }
        }
        nativeNotifyAudioRecordingConfigChangedFromJava(this.mNativeAudioRouteManager, recordingConfigArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWiredHeadsetChangedInternal(boolean z10) {
        if (!this.mIsServiceStarted) {
            Log.i(TAG, "ignore wired headset changing, AudioRouteManager is not started", new Object[0]);
        } else if (this.mAudioRouteSupervisor.a(b.a.WIRED_HEADSET, z10)) {
            autoCheckRouteUpdate(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$notifyAudioIOSceneChanged$2(AudioRouteManager audioRouteManager, int i9) {
        audioRouteManager.mExpectedAudioIOScene = a.a(i9);
        audioRouteManager.notifyAudioIOSceneChangedInternal();
    }

    private static native void nativeNotifyAudioRecordingConfigChangedFromJava(long j10, RecordingConfig[] recordingConfigArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeNotifyAudioRouteChangedFromJava(long j10, int i9);

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAudioIOSceneChangedInternal() {
        a aVar = this.mCurrentAudioIOScene;
        a aVar2 = this.mExpectedAudioIOScene;
        if (aVar == aVar2) {
            return;
        }
        Log.i(TAG, "notify audio io scene changed, %s -> %s", aVar, aVar2);
        if (this.mAudioManager.getMode() == 2) {
            runOnWorkThread(k.a(this), 500L);
            return;
        }
        int a10 = a.a(this.mExpectedAudioIOScene);
        Log.i(TAG, "setMode to ".concat(String.valueOf(a10)), new Object[0]);
        try {
            if (this.mAudioManager.getMode() == a10 && a10 == 3) {
                Log.w(TAG, "set communication mode repeatedly, maybe can't be the mode owner", new Object[0]);
            }
            this.mAudioManager.setMode(a10);
        } catch (Exception unused) {
            Log.w(TAG, "AudioManager setMode failed, ignore it", new Object[0]);
        }
        a aVar3 = this.mExpectedAudioIOScene;
        this.mCurrentAudioIOScene = aVar3;
        n.a aVar4 = this.mSwitcher;
        if (aVar4 != null) {
            aVar4.a(aVar3);
        } else {
            autoCheckRouteUpdate(false);
        }
    }

    private void registerAudioRecordingCallback() {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 24) {
            return;
        }
        if (this.mAudioRecordingCallback == null) {
            buildAudioRecordingCallback();
        }
        this.mAudioManager.registerAudioRecordingCallback(this.mAudioRecordingCallback, null);
    }

    private void removeCallbacksOnWorkThread(Runnable runnable) {
        CustomHandler customHandler = this.mHandler;
        if (customHandler != null) {
            customHandler.removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnWorkThread(Runnable runnable) {
        CustomHandler customHandler = this.mHandler;
        if (customHandler != null) {
            customHandler.post(runnable);
        }
    }

    private void runOnWorkThreadAndWaitDone(Runnable runnable, long j10) {
        CustomHandler customHandler = this.mHandler;
        if (customHandler != null) {
            customHandler.a(runnable, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setHandFreeModeEnabledInternal(boolean r7) {
        /*
            r6 = this;
            boolean r0 = r6.mIsServiceStarted
            r1 = 0
            if (r0 != 0) goto Lf
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r0 = "AudioRouteManager"
            java.lang.String r1 = "set handfree mode failed, AudioRouteManager is not started"
            com.tencent.liteav.base.Log.w(r0, r1, r7)
            return
        Lf:
            com.tencent.liteav.audio.route.m r0 = r6.mAudioRouteSupervisor
            boolean r2 = r0.f30846c
            java.lang.String r3 = "AudioRouteSupervisor"
            if (r2 != 0) goto L20
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r0 = "error in setHandFreeModeEnabled(), it's not been initialized yet"
            com.tencent.liteav.base.Log.e(r3, r0, r7)
        L1e:
            r7 = 0
            goto L60
        L20:
            java.util.HashMap<com.tencent.liteav.audio.route.b$a, com.tencent.liteav.audio.route.b> r2 = r0.f30845b
            com.tencent.liteav.audio.route.b$a r4 = com.tencent.liteav.audio.route.b.a.SPEAKERPHONE
            java.lang.Object r2 = r2.get(r4)
            com.tencent.liteav.audio.route.b r2 = (com.tencent.liteav.audio.route.b) r2
            java.util.HashMap<com.tencent.liteav.audio.route.b$a, com.tencent.liteav.audio.route.b> r0 = r0.f30845b
            com.tencent.liteav.audio.route.b$a r4 = com.tencent.liteav.audio.route.b.a.EARPHONE
            java.lang.Object r0 = r0.get(r4)
            com.tencent.liteav.audio.route.b r0 = (com.tencent.liteav.audio.route.b) r0
            if (r2 == 0) goto L58
            if (r0 != 0) goto L39
            goto L58
        L39:
            int r3 = r2.f30819c
            int r4 = r0.f30819c
            int r3 = java.lang.Math.min(r3, r4)
            int r4 = r2.f30819c
            int r5 = r0.f30819c
            int r4 = java.lang.Math.max(r4, r5)
            if (r7 == 0) goto L4d
            r5 = r4
            goto L4e
        L4d:
            r5 = r3
        L4e:
            r2.f30819c = r5
            if (r7 == 0) goto L53
            goto L54
        L53:
            r3 = r4
        L54:
            r0.f30819c = r3
            r7 = 1
            goto L60
        L58:
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r0 = "setHandFreeModeEnabled failed, speakerphone or earphone not existed"
            com.tencent.liteav.base.Log.e(r3, r0, r7)
            goto L1e
        L60:
            if (r7 == 0) goto L65
            r6.autoCheckRouteUpdate(r1)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.route.AudioRouteManager.setHandFreeModeEnabledInternal(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b9 A[LOOP:0: B:24:0x005f->B:43:0x00b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x002a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startInternal(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.route.AudioRouteManager.startInternal(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        Log.i(TAG, "stopInternal", new Object[0]);
        if (!this.mIsServiceStarted) {
            Log.e(TAG, "AudioRouteManager is not started", new Object[0]);
            return;
        }
        unregisterAudioRecordingCallback();
        destroySwitcher();
        try {
            this.mAudioManager.setMode(0);
        } catch (Exception unused) {
            Log.w(TAG, "AudioManager setMode failed, ignore it", new Object[0]);
        }
        this.mCurrentRouteType = b.a.NONE;
        a aVar = a.STOPPED;
        this.mCurrentAudioIOScene = aVar;
        this.mExpectedAudioIOScene = aVar;
        o oVar = this.mBroadcastReceiver;
        Context context = oVar.f30864a;
        if (context != null) {
            try {
                context.unregisterReceiver(oVar);
            } catch (Exception unused2) {
            }
            o.b bVar = oVar.f30865b;
            if (bVar != null) {
                synchronized (bVar.f30869c) {
                    if (bVar.f30867a != null && bVar.f30868b != null) {
                        bVar.b();
                        bVar.f30868b = null;
                    }
                }
                oVar.f30865b = null;
            }
        }
        m mVar = this.mAudioRouteSupervisor;
        if (!mVar.f30846c) {
            Log.w("AudioRouteSupervisor", "error in uninitialize(), it's not been initialized yet", new Object[0]);
        } else {
            mVar.f30845b.clear();
            mVar.f30846c = false;
        }
        this.mCurrentRouteConfig = "";
        this.mIsServiceStarted = false;
    }

    private void unregisterAudioRecordingCallback() {
        AudioManager.AudioRecordingCallback audioRecordingCallback;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 24 && (audioRecordingCallback = this.mAudioRecordingCallback) != null) {
            this.mAudioManager.unregisterAudioRecordingCallback(audioRecordingCallback);
        }
    }

    private void updateAudioRouteStatus() {
        o oVar = this.mBroadcastReceiver;
        if (oVar == null) {
            this.mAudioRouteSupervisor.a(b.a.BLUETOOTH_HEADSET, false);
        } else {
            m mVar = this.mAudioRouteSupervisor;
            b.a aVar = b.a.BLUETOOTH_HEADSET;
            o.b bVar = oVar.f30865b;
            mVar.a(aVar, bVar == null ? false : bVar.a());
        }
        this.mAudioRouteSupervisor.a(b.a.WIRED_HEADSET, this.mAudioManager.isWiredHeadsetOn());
        this.mAudioRouteSupervisor.a(b.a.SPEAKERPHONE, true);
        this.mAudioRouteSupervisor.a(b.a.EARPHONE, true);
        autoCheckRouteUpdate(false);
    }

    @CalledByNative
    public void initialize() {
        HandlerThread handlerThread = new HandlerThread("AudioRouteManagerLooper");
        handlerThread.start();
        this.mHandler = new CustomHandler(handlerThread.getLooper());
    }

    @CalledByNative
    public void notifyAudioIOSceneChanged(int i9, long j10) {
        runOnWorkThreadAndWaitDone(f.a(this, i9), j10);
    }

    @Override // com.tencent.liteav.audio.route.o.a
    public void onBluetoothConnectionChanged(boolean z10) {
        runOnWorkThread(i.a(this, z10));
    }

    @Override // com.tencent.liteav.audio.route.o.a
    public void onBluetoothSCOConnected(boolean z10) {
        runOnWorkThread(j.a(this, z10));
    }

    @Override // com.tencent.liteav.audio.route.o.a
    public void onWiredHeadsetConnectionChanged(boolean z10) {
        runOnWorkThread(h.a(this, z10));
    }

    @CalledByNative
    public void setHandFreeModeEnabled(boolean z10) {
        runOnWorkThread(g.a(this, z10));
    }

    @CalledByNative
    public void start(String str) {
        runOnWorkThread(d.a(this, str));
    }

    @CalledByNative
    public void stop() {
        runOnWorkThread(e.a(this));
    }

    @CalledByNative
    public void uninitialize() {
        CustomHandler customHandler = this.mHandler;
        this.mHandler = null;
        if (customHandler != null) {
            customHandler.a();
            try {
                customHandler.getLooper().getThread().join();
            } catch (InterruptedException unused) {
            }
        }
    }

    private void runOnWorkThread(Runnable runnable, long j10) {
        CustomHandler customHandler = this.mHandler;
        if (customHandler != null) {
            customHandler.postDelayed(runnable, j10);
        }
    }
}
