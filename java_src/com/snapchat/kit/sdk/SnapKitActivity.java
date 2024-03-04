package com.snapchat.kit.sdk;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class SnapKitActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    f f29469a;

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        be.b d10 = b.d(this);
        if (d10 == null) {
            finish();
            return;
        }
        d10.c(this);
        Uri data = intent.getData();
        if (data != null && this.f29469a.o(data)) {
            this.f29469a.d(data);
        } else {
            this.f29469a.t();
        }
        finish();
    }
}
