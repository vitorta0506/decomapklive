package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new a();
    public static final int DEVICE_CHARGING = 8;
    public static final int DEVICE_IDLE = 4;
    public static final int DEVICE_STORAGE_NOT_LOW = 16;
    public static final int NETWORK = 1;
    public static final int NETWORK_UNMETERED = 2;
    private final int requirements;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<Requirements> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Requirements[] newArray(int i9) {
            return new Requirements[i9];
        }
    }

    public Requirements(int i9) {
        this.requirements = (i9 & 2) != 0 ? i9 | 1 : i9;
    }

    private int a(Context context) {
        if (h()) {
            ConnectivityManager connectivityManager = (ConnectivityManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("connectivity"));
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && g(connectivityManager)) {
                return (k() && connectivityManager.isActiveNetworkMetered()) ? 2 : 0;
            }
            return this.requirements & 3;
        }
        return 0;
    }

    private boolean d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean e(Context context) {
        PowerManager powerManager = (PowerManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("power"));
        int i9 = l0.f6985a;
        if (i9 >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        if (i9 >= 20) {
            if (!powerManager.isInteractive()) {
                return true;
            }
        } else if (!powerManager.isScreenOn()) {
            return true;
        }
        return false;
    }

    private static boolean g(ConnectivityManager connectivityManager) {
        if (l0.f6985a < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return true;
        }
    }

    private boolean i(Context context) {
        return context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null;
    }

    public int b(Context context) {
        int a10 = a(context);
        if (c() && !d(context)) {
            a10 |= 8;
        }
        if (f() && !e(context)) {
            a10 |= 4;
        }
        return (!j() || i(context)) ? a10 : a10 | 16;
    }

    public boolean c() {
        return (this.requirements & 8) != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Requirements.class == obj.getClass() && this.requirements == ((Requirements) obj).requirements;
    }

    public boolean f() {
        return (this.requirements & 4) != 0;
    }

    public boolean h() {
        return (this.requirements & 1) != 0;
    }

    public int hashCode() {
        return this.requirements;
    }

    public boolean j() {
        return (this.requirements & 16) != 0;
    }

    public boolean k() {
        return (this.requirements & 2) != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.requirements);
    }
}
