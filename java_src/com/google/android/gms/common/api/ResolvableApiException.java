package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(@NonNull Status status) {
        super(status);
    }

    @NonNull
    public PendingIntent getResolution() {
        return getStatus().K();
    }

    public void startResolutionForResult(@NonNull Activity activity, int i9) throws IntentSender.SendIntentException {
        getStatus().c0(activity, i9);
    }
}
