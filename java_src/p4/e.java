package p4;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzaw;
import com.google.android.gms.measurement.internal.zzlc;
import com.google.android.gms.measurement.internal.zzq;
import java.util.List;
/* loaded from: classes2.dex */
public interface e extends IInterface {
    void B(long j10, @Nullable String str, @Nullable String str2, String str3) throws RemoteException;

    void B0(zzac zzacVar, zzq zzqVar) throws RemoteException;

    void C(zzlc zzlcVar, zzq zzqVar) throws RemoteException;

    void K(zzq zzqVar) throws RemoteException;

    List L(@Nullable String str, @Nullable String str2, boolean z10, zzq zzqVar) throws RemoteException;

    void O(zzq zzqVar) throws RemoteException;

    void a0(zzq zzqVar) throws RemoteException;

    void c0(Bundle bundle, zzq zzqVar) throws RemoteException;

    List d0(String str, @Nullable String str2, @Nullable String str3, boolean z10) throws RemoteException;

    @Nullable
    byte[] g0(zzaw zzawVar, String str) throws RemoteException;

    @Nullable
    String i0(zzq zzqVar) throws RemoteException;

    List l0(String str, @Nullable String str2, @Nullable String str3) throws RemoteException;

    void m(zzac zzacVar) throws RemoteException;

    @Nullable
    List n(zzq zzqVar, boolean z10) throws RemoteException;

    List s0(@Nullable String str, @Nullable String str2, zzq zzqVar) throws RemoteException;

    void v(zzaw zzawVar, zzq zzqVar) throws RemoteException;

    void x0(zzaw zzawVar, String str, @Nullable String str2) throws RemoteException;

    void y(zzq zzqVar) throws RemoteException;
}
