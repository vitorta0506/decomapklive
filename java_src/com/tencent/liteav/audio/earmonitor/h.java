package com.tencent.liteav.audio.earmonitor;

import android.content.Context;
import android.media.AudioManager;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.liteav.audio.LiteavAudioTrack;
import com.tencent.liteav.base.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.StringTokenizer;
/* loaded from: classes4.dex */
public final class h extends SystemAudioKit {

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f30802a;

    /* renamed from: b  reason: collision with root package name */
    private a f30803b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f30804a = false;

        /* renamed from: b  reason: collision with root package name */
        private final SystemAudioKit f30805b;

        public a(SystemAudioKit systemAudioKit) {
            this.f30805b = systemAudioKit;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            LiteavAudioTrack liteavAudioTrack = new LiteavAudioTrack();
            liteavAudioTrack.startPlayout(3, 48000, 12, 3840);
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(3840);
            byte[] bArr = new byte[3840];
            Arrays.fill(bArr, (byte) 0);
            allocateDirect.put(bArr);
            while (!this.f30804a && !isInterrupted()) {
                try {
                    liteavAudioTrack.write(allocateDirect, 0, 3840);
                } catch (Exception unused) {
                    this.f30805b.notifySystemError(this.f30805b);
                }
            }
            liteavAudioTrack.stopPlayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(long j10, Context context) {
        super(j10);
        this.f30802a = (AudioManager) context.getSystemService("audio");
    }

    private boolean a() {
        try {
            String parameters = this.f30802a.getParameters("vivo_ktv_mic_type");
            if (parameters == null) {
                return false;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(parameters, ContainerUtils.KEY_VALUE_DELIMITER);
            if (stringTokenizer.countTokens() == 2 && stringTokenizer.nextToken().equals("vivo_ktv_mic_type")) {
                try {
                    int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                    return parseInt == 0 || parseInt == 1;
                } catch (NumberFormatException unused) {
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            Log.e("VivoSystemAudioKit", "getParameters failed. ".concat(String.valueOf(th2)), new Object[0]);
            return false;
        }
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void initialize() {
        if (!a()) {
            Log.w("VivoSystemAudioKit", "initialize failed. current device dose not support system ear monitoring.", new Object[0]);
            notifyEarMonitoringInitialized(this, false);
            return;
        }
        try {
            this.f30802a.setParameters("vivo_ktv_mode=1");
            this.f30802a.setParameters("vivo_ktv_rec_source=0");
            this.f30802a.setParameters("vivo_ktv_play_source=0");
            notifyEarMonitoringInitialized(this, true);
        } catch (Throwable th2) {
            Log.d("VivoSystemAudioKit", "initialize failed. ".concat(String.valueOf(th2)), new Object[0]);
            notifyEarMonitoringInitialized(this, false);
        }
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void setEarMonitoringVolume(int i9) {
        a("vivo_ktv_volume_mic=".concat(String.valueOf(Math.min(com.tencent.liteav.base.util.g.a(i9, 0, 100) / 6, 15))));
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void startEarMonitoring() {
        if (this.f30803b != null) {
            return;
        }
        a("vivo_ktv_play_source=1");
        a aVar = new a(this);
        this.f30803b = aVar;
        aVar.start();
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void stopEarMonitoring() {
        if (this.f30803b == null) {
            return;
        }
        a("vivo_ktv_play_source=0");
        this.f30803b.f30804a = true;
        this.f30803b = null;
    }

    @Override // com.tencent.liteav.audio.earmonitor.SystemAudioKit
    public final void terminate() {
        a("vivo_ktv_mode=0");
        stopEarMonitoring();
    }

    private void a(String str) {
        try {
            this.f30802a.setParameters(str);
        } catch (Throwable th2) {
            Log.e("VivoSystemAudioKit", "setParameters failed. ".concat(String.valueOf(th2)), new Object[0]);
            notifySystemError(this);
        }
    }
}
