package com.tencent.liteav.audio.route;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.facebook.internal.ServerProtocol;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.List;
/* loaded from: classes4.dex */
public final class o extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    final Context f30864a;

    /* renamed from: b  reason: collision with root package name */
    b f30865b = null;

    /* renamed from: c  reason: collision with root package name */
    private final a f30866c;

    /* loaded from: classes4.dex */
    public static class a {
        public void onBluetoothConnectionChanged(boolean z10) {
        }

        public void onBluetoothSCOConnected(boolean z10) {
        }

        public void onWiredHeadsetConnectionChanged(boolean z10) {
        }
    }

    /* loaded from: classes4.dex */
    static class b implements BluetoothProfile.ServiceListener {

        /* renamed from: a  reason: collision with root package name */
        final BluetoothAdapter f30867a;

        /* renamed from: b  reason: collision with root package name */
        BluetoothProfile f30868b = null;

        /* renamed from: c  reason: collision with root package name */
        final Object f30869c = new Object();

        /* renamed from: d  reason: collision with root package name */
        private final Context f30870d;

        public b(Context context) {
            this.f30870d = context;
            BluetoothAdapter c10 = c();
            this.f30867a = c10;
            if (c10 != null) {
                try {
                    c10.getProfileProxy(context, this, 1);
                    return;
                } catch (Throwable th2) {
                    Log.w("AudioSystemBroadcastReceiver", "getProfileProxy " + th2.getMessage(), new Object[0]);
                    return;
                }
            }
            Log.i("AudioSystemBroadcastReceiver", "bluetooth adapter is null", new Object[0]);
        }

        private static BluetoothAdapter c() {
            try {
                return BluetoothAdapter.getDefaultAdapter();
            } catch (Throwable th2) {
                Log.w("AudioSystemBroadcastReceiver", "getDefaultAdapter exception " + th2.getMessage(), new Object[0]);
                return null;
            }
        }

        private List<BluetoothDevice> d() {
            try {
                return this.f30868b.getConnectedDevices();
            } catch (Throwable th2) {
                Log.w("AudioSystemBroadcastReceiver", "getConnectedDevices exception " + th2.getMessage(), new Object[0]);
                return null;
            }
        }

        private boolean e() {
            try {
                return this.f30867a.isEnabled();
            } catch (Throwable th2) {
                Log.w("AudioSystemBroadcastReceiver", "isEnabled exception " + th2.getMessage(), new Object[0]);
                return false;
            }
        }

        public final boolean a() {
            boolean z10 = false;
            if (this.f30867a == null || !e()) {
                return false;
            }
            synchronized (this.f30869c) {
                if (this.f30868b == null) {
                    try {
                        Log.i("AudioSystemBroadcastReceiver", "mBluetoothHeadsetProfile is null ,wait for 1000ms", new Object[0]);
                        this.f30869c.wait(1000L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                    if (this.f30868b == null) {
                        return false;
                    }
                    Log.i("AudioSystemBroadcastReceiver", "mBluetoothHeadsetProfile service is connected now", new Object[0]);
                }
                try {
                    List<BluetoothDevice> d10 = o.a(this.f30870d) ? d() : null;
                    if (d10 != null) {
                        if (d10.size() > 0) {
                            z10 = true;
                        }
                    }
                } catch (Exception e11) {
                    Log.e("AudioSystemBroadcastReceiver", "get connected bluetooth devices failed." + e11.getMessage(), new Object[0]);
                }
                return z10;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b() {
            try {
                this.f30867a.closeProfileProxy(1, this.f30868b);
            } catch (Throwable th2) {
                Log.w("AudioSystemBroadcastReceiver", "closeProfileProxy exception " + th2.getMessage(), new Object[0]);
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceConnected(int i9, BluetoothProfile bluetoothProfile) {
            BluetoothProfile bluetoothProfile2;
            if (i9 != 1) {
                return;
            }
            synchronized (this.f30869c) {
                if (this.f30867a != null && (bluetoothProfile2 = this.f30868b) != null) {
                    Log.i("AudioSystemBroadcastReceiver", "BluetoohHeadset proxy changed from %s to %s", bluetoothProfile2, bluetoothProfile);
                    b();
                    this.f30868b = null;
                }
                this.f30868b = bluetoothProfile;
                this.f30869c.notifyAll();
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceDisconnected(int i9) {
            if (i9 != 1) {
                return;
            }
            synchronized (this.f30869c) {
                if (this.f30867a != null && this.f30868b != null) {
                    b();
                    this.f30868b = null;
                }
            }
        }
    }

    public o(Context context, a aVar) {
        this.f30864a = context;
        this.f30866c = aVar;
    }

    private static int a(Intent intent, String str, int i9) {
        try {
            return intent.getIntExtra(str, i9);
        } catch (Exception e10) {
            LiteavLog.e("AudioSystemBroadcastReceiver", "getIntentIntExtra ".concat(String.valueOf(e10)));
            return i9;
        }
    }

    private static String a(int i9) {
        switch (i9) {
            case 10:
                return "STATE_OFF";
            case 11:
                return "STATE_TURNING_ON";
            case 12:
                return "STATE_ON";
            case 13:
                return "STATE_TURNING_OFF";
            default:
                return "unknown";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        char c10;
        if (intent != null && context != null) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            Log.i("AudioSystemBroadcastReceiver", "receive Action: %s", action);
            switch (action.hashCode()) {
                case -1676458352:
                    if (action.equals("android.intent.action.HEADSET_PLUG")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1530327060:
                    if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1435586571:
                    if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 545516589:
                    if (action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                    int a10 = a(intent, ServerProtocol.DIALOG_PARAM_STATE, -1);
                    if (a10 == -1) {
                        Log.e("AudioSystemBroadcastReceiver", "unknown headset state, ignore...", new Object[0]);
                        return;
                    } else {
                        this.f30866c.onWiredHeadsetConnectionChanged(a10 != 0);
                        return;
                    }
                case 1:
                    int a11 = a(intent, "android.bluetooth.adapter.extra.STATE", 0);
                    Log.i("AudioSystemBroadcastReceiver", "receive ACTION_STATE_CHANGED, EXTRA_STATE: %s, EXTRA_PREVIOUS_STATE: %s", a(a11), a(a(intent, "android.bluetooth.adapter.extra.PREVIOUS_STATE", 0)));
                    if (a11 == 10) {
                        this.f30866c.onBluetoothConnectionChanged(false);
                        return;
                    }
                    return;
                case 2:
                    int a12 = a(intent, "android.bluetooth.profile.extra.STATE", 10);
                    if (a12 == 12) {
                        Log.i("AudioSystemBroadcastReceiver", "receive bluetooth audio state changed to STATE_AUDIO_CONNECTED", new Object[0]);
                        this.f30866c.onBluetoothSCOConnected(true);
                        return;
                    } else if (a12 == 10) {
                        Log.i("AudioSystemBroadcastReceiver", "receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED", new Object[0]);
                        this.f30866c.onBluetoothSCOConnected(false);
                        return;
                    } else {
                        return;
                    }
                case 3:
                    int a13 = a(intent, "android.bluetooth.profile.extra.STATE", -1);
                    Object[] objArr = new Object[1];
                    objArr[0] = a13 != 0 ? a13 != 1 ? a13 != 2 ? a13 != 3 ? "unknown" : "STATE_DISCONNECTING" : "STATE_CONNECTED" : "STATE_CONNECTING" : "STATE_DISCONNECTED";
                    Log.i("AudioSystemBroadcastReceiver", "receive bluetooth headset connection state changed: %s", objArr);
                    if (a13 == 0) {
                        this.f30866c.onBluetoothConnectionChanged(false);
                        return;
                    } else if (a13 != 2) {
                        return;
                    } else {
                        this.f30866c.onBluetoothConnectionChanged(true);
                        return;
                    }
                default:
                    Log.w("AudioSystemBroadcastReceiver", "ignore unknow Action: %s", action);
                    return;
            }
        }
        Log.e("AudioSystemBroadcastReceiver", "onReceive intent or context is null!", new Object[0]);
    }

    static /* synthetic */ boolean a(Context context) {
        return context == null || LiteavSystemInfo.getSystemOSVersionInt() < 31 || context.checkPermission("android.permission.BLUETOOTH_CONNECT", Process.myPid(), Process.myUid()) == 0;
    }
}
