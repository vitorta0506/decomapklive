package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.p;
@KeepName
/* loaded from: classes2.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    protected int f7465a = 0;

    @NonNull
    public static Intent a(@NonNull Context context, @NonNull PendingIntent pendingIntent, int i9, boolean z10) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i9);
        intent.putExtra("notify_manager", z10);
        return intent;
    }

    private final void b() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
        } else if (pendingIntent != null) {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.f7465a = 1;
            } catch (ActivityNotFoundException e10) {
                if (extras.getBoolean("notify_manager", true)) {
                    com.google.android.gms.common.api.internal.c.y(this).H(new ConnectionResult(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String str = "Activity not found while launching " + pendingIntent.toString() + ".";
                    if (Build.FINGERPRINT.contains("generic")) {
                        str = str.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", str, e10);
                }
                this.f7465a = 1;
                finish();
            } catch (IntentSender.SendIntentException e11) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e11);
                finish();
            }
        } else {
            com.google.android.gms.common.a.m().n(this, ((Integer) p.j(num)).intValue(), 2, this);
            this.f7465a = 1;
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i9, int i10, @NonNull Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f7465a = 0;
            setResult(i10, intent);
            if (booleanExtra) {
                com.google.android.gms.common.api.internal.c y10 = com.google.android.gms.common.api.internal.c.y(this);
                if (i10 == -1) {
                    y10.b();
                } else if (i10 == 0) {
                    y10.H(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i9 == 2) {
            this.f7465a = 0;
            setResult(i10, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        this.f7465a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f7465a = bundle.getInt("resolution");
        }
        if (this.f7465a != 1) {
            b();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putInt("resolution", this.f7465a);
        super.onSaveInstanceState(bundle);
    }
}
