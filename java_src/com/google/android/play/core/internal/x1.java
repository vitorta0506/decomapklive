package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class x1 extends s1 implements y1 {
    public x1() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.s1
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i9) {
            case 2:
                C0(parcel.readInt(), (Bundle) t1.a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                e(parcel.readInt(), (Bundle) t1.a(parcel, Bundle.CREATOR));
                return true;
            case 4:
                V(parcel.readInt(), (Bundle) t1.a(parcel, Bundle.CREATOR));
                return true;
            case 5:
                h(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Parcelable.Creator creator = Bundle.CREATOR;
                Y((Bundle) t1.a(parcel, creator), (Bundle) t1.a(parcel, creator));
                return true;
            case 7:
                a((Bundle) t1.a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Parcelable.Creator creator2 = Bundle.CREATOR;
                H((Bundle) t1.a(parcel, creator2), (Bundle) t1.a(parcel, creator2));
                return true;
            case 9:
            default:
                return false;
            case 10:
                Parcelable.Creator creator3 = Bundle.CREATOR;
                N((Bundle) t1.a(parcel, creator3), (Bundle) t1.a(parcel, creator3));
                return true;
            case 11:
                Parcelable.Creator creator4 = Bundle.CREATOR;
                S((Bundle) t1.a(parcel, creator4), (Bundle) t1.a(parcel, creator4));
                return true;
            case 12:
                Parcelable.Creator creator5 = Bundle.CREATOR;
                Z((Bundle) t1.a(parcel, creator5), (Bundle) t1.a(parcel, creator5));
                return true;
            case 13:
                Parcelable.Creator creator6 = Bundle.CREATOR;
                x((Bundle) t1.a(parcel, creator6), (Bundle) t1.a(parcel, creator6));
                return true;
            case 14:
                Parcelable.Creator creator7 = Bundle.CREATOR;
                s((Bundle) t1.a(parcel, creator7), (Bundle) t1.a(parcel, creator7));
                return true;
            case 15:
                t0((Bundle) t1.a(parcel, Bundle.CREATOR));
                return true;
        }
    }
}
