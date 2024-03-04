package com.google.android.play.core.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class PlayCoreDialogWrapperActivity extends Activity {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f10564a;

    @Override // android.app.Activity
    protected final void onActivityResult(int i9, int i10, Intent intent) {
        ResultReceiver resultReceiver;
        super.onActivityResult(i9, i10, intent);
        if (i9 == 0 && (resultReceiver = this.f10564a) != null) {
            if (i10 == -1) {
                resultReceiver.send(1, new Bundle());
            } else if (i10 == 0) {
                resultReceiver.send(2, new Bundle());
            }
        }
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        Intent intent;
        int intExtra = getIntent().getIntExtra("window_flags", 0);
        if (intExtra != 0) {
            getWindow().getDecorView().setSystemUiVisibility(intExtra);
            intent = new Intent();
            intent.putExtra("window_flags", intExtra);
        } else {
            intent = null;
        }
        Intent intent2 = intent;
        super.onCreate(bundle);
        if (bundle == null) {
            this.f10564a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            try {
                startIntentSenderForResult(((PendingIntent) getIntent().getExtras().get("confirmation_intent")).getIntentSender(), 0, intent2, 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException unused) {
                ResultReceiver resultReceiver = this.f10564a;
                if (resultReceiver != null) {
                    resultReceiver.send(3, new Bundle());
                }
                finish();
                return;
            }
        }
        this.f10564a = (ResultReceiver) bundle.getParcelable("result_receiver");
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("result_receiver", this.f10564a);
    }
}
