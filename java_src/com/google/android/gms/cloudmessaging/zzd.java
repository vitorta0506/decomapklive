package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class zzd implements Parcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    Messenger f7448a;

    /* renamed from: b  reason: collision with root package name */
    a f7449b;

    public zzd(IBinder iBinder) {
        this.f7448a = new Messenger(iBinder);
    }

    public final IBinder a() {
        Messenger messenger = this.f7448a;
        return messenger != null ? messenger.getBinder() : this.f7449b.asBinder();
    }

    public final void b(Message message) throws RemoteException {
        Messenger messenger = this.f7448a;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f7449b.f0(message);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((zzd) obj).a());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        Messenger messenger = this.f7448a;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f7449b.asBinder());
        }
    }
}
