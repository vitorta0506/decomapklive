package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public abstract class d0 implements DialogInterface.OnClickListener {
    public static d0 b(Activity activity, @Nullable Intent intent, int i9) {
        return new b0(intent, activity, i9);
    }

    public static d0 c(@NonNull v3.e eVar, @Nullable Intent intent, int i9) {
        return new c0(intent, eVar, 2);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i9) {
        try {
            a();
        } catch (ActivityNotFoundException e10) {
            Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e10);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
