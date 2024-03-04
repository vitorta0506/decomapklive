package com.google.android.play.core.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class t1 {

    /* renamed from: a  reason: collision with root package name */
    private static final ClassLoader f10612a = t1.class.getClassLoader();

    private t1() {
    }

    public static Parcelable a(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }
}
