package p4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.o0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzaw;
import com.google.android.gms.measurement.internal.zzlc;
import com.google.android.gms.measurement.internal.zzq;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class d extends o0 implements e {
    public d() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i9) {
            case 1:
                p0.c(parcel);
                v((zzaw) p0.a(parcel, zzaw.CREATOR), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                p0.c(parcel);
                C((zzlc) p0.a(parcel, zzlc.CREATOR), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                p0.c(parcel);
                y((zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                p0.c(parcel);
                x0((zzaw) p0.a(parcel, zzaw.CREATOR), readString, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                p0.c(parcel);
                a0((zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                boolean g10 = p0.g(parcel);
                p0.c(parcel);
                List n9 = n((zzq) p0.a(parcel, zzq.CREATOR), g10);
                parcel2.writeNoException();
                parcel2.writeTypedList(n9);
                return true;
            case 9:
                String readString3 = parcel.readString();
                p0.c(parcel);
                byte[] g02 = g0((zzaw) p0.a(parcel, zzaw.CREATOR), readString3);
                parcel2.writeNoException();
                parcel2.writeByteArray(g02);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                p0.c(parcel);
                B(readLong, readString4, readString5, readString6);
                parcel2.writeNoException();
                return true;
            case 11:
                p0.c(parcel);
                String i02 = i0((zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(i02);
                return true;
            case 12:
                p0.c(parcel);
                B0((zzac) p0.a(parcel, zzac.CREATOR), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                p0.c(parcel);
                m((zzac) p0.a(parcel, zzac.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                p0.c(parcel);
                List L = L(parcel.readString(), parcel.readString(), p0.g(parcel), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(L);
                return true;
            case 15:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                boolean g11 = p0.g(parcel);
                p0.c(parcel);
                List d02 = d0(readString7, readString8, readString9, g11);
                parcel2.writeNoException();
                parcel2.writeTypedList(d02);
                return true;
            case 16:
                p0.c(parcel);
                List s02 = s0(parcel.readString(), parcel.readString(), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(s02);
                return true;
            case 17:
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                p0.c(parcel);
                List l02 = l0(readString10, readString11, readString12);
                parcel2.writeNoException();
                parcel2.writeTypedList(l02);
                return true;
            case 18:
                p0.c(parcel);
                O((zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                p0.c(parcel);
                c0((Bundle) p0.a(parcel, Bundle.CREATOR), (zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                p0.c(parcel);
                K((zzq) p0.a(parcel, zzq.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
