package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class EndIconDelegate {
    Context context;
    @DrawableRes
    final int customEndIcon;
    CheckableImageButton endIconView;
    TextInputLayout textInputLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EndIconDelegate(@NonNull TextInputLayout textInputLayout, @DrawableRes int i9) {
        this.textInputLayout = textInputLayout;
        this.context = textInputLayout.getContext();
        this.endIconView = textInputLayout.getEndIconView();
        this.customEndIcon = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void initialize();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBoxBackgroundModeSupported(int i9) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSuffixVisibilityChanged(boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldTintIconOnError() {
        return false;
    }
}
