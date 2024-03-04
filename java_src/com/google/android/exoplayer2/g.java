package com.google.android.exoplayer2;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.common.collect.ImmutableList;
/* loaded from: classes.dex */
public final class g extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private static final int f5929a;

    static {
        f5929a = com.google.android.exoplayer2.util.l0.f6985a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public static ImmutableList<Bundle> a(IBinder iBinder) {
        int readInt;
        ImmutableList.b builder = ImmutableList.builder();
        int i9 = 1;
        int i10 = 0;
        while (i9 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i10);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        readInt = obtain2.readInt();
                        if (readInt == 1) {
                            builder.a((Bundle) com.google.android.exoplayer2.util.a.e(obtain2.readBundle()));
                            i10++;
                        }
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    i9 = readInt;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th2) {
                obtain2.recycle();
                obtain.recycle();
                throw th2;
            }
        }
        return builder.j();
    }
}
