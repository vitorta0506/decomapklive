package com.guochao.faceshow.aaspring.base.dialog;

import android.content.Context;
import androidx.appcompat.app.AppCompatDialog;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
/* loaded from: classes3.dex */
public class FaceCastDialog extends AppCompatDialog {

    /* renamed from: a  reason: collision with root package name */
    OnBackButtonPressedHandler f16092a;

    public FaceCastDialog(Context context, int i9) {
        super(context, i9);
    }

    public void a(OnBackButtonPressedHandler onBackButtonPressedHandler) {
        this.f16092a = onBackButtonPressedHandler;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        OnBackButtonPressedHandler onBackButtonPressedHandler = this.f16092a;
        if (onBackButtonPressedHandler == null || !onBackButtonPressedHandler.onBack()) {
            super.onBackPressed();
        }
    }
}
