package com.google.android.gms.internal.recaptcha;

import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.recaptcha.RecaptchaResultData;
/* loaded from: classes2.dex */
public interface d extends IInterface {
    void k(Status status, @Nullable zzx zzxVar) throws RemoteException;

    void r(Status status, RecaptchaResultData recaptchaResultData) throws RemoteException;
}
