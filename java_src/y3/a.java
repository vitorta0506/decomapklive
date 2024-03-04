package y3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.TelemetryData;
/* loaded from: classes2.dex */
public final class a extends k4.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    public final void G0(TelemetryData telemetryData) throws RemoteException {
        Parcel f10 = f();
        k4.c.c(f10, telemetryData);
        F0(1, f10);
    }
}
