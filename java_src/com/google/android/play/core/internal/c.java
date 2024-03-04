package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class c extends s1 implements d {
    public static d f(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        return queryLocalInterface instanceof d ? (d) queryLocalInterface : new b(iBinder);
    }
}
