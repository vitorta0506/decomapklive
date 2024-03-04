package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class v1 extends s1 implements w1 {
    public static w1 f(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof w1 ? (w1) queryLocalInterface : new u1(iBinder);
    }
}
