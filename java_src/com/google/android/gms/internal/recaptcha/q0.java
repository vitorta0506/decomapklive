package com.google.android.gms.internal.recaptcha;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    private static final ClassLoader f8991a = q0.class.getClassLoader();

    private q0() {
    }

    public static <T extends Parcelable> T a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }

    public static boolean d(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
