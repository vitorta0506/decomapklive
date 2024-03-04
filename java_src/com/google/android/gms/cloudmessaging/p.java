package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
final class p {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Messenger f7426a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final zzd f7427b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f7426a = new Messenger(iBinder);
            this.f7427b = null;
        } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
            this.f7427b = new zzd(iBinder);
            this.f7426a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Message message) throws RemoteException {
        Messenger messenger = this.f7426a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzd zzdVar = this.f7427b;
        if (zzdVar != null) {
            zzdVar.b(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
