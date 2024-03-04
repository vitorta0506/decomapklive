package com.google.android.gms.internal.recaptcha;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.RecaptchaHandle;
/* loaded from: classes2.dex */
public interface f extends IInterface {
    void m0(Status status, @Nullable zzai zzaiVar) throws RemoteException;

    @Deprecated
    void z0(Status status, RecaptchaHandle recaptchaHandle) throws RemoteException;
}
