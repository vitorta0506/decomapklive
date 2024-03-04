package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import com.google.android.material.theme.MaterialComponentsViewInflater;
/* loaded from: classes3.dex */
public class FaceCastViewInflater extends MaterialComponentsViewInflater {
    @Override // com.google.android.material.theme.MaterialComponentsViewInflater, androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        try {
            return new MaterialButton(context, attributeSet);
        } catch (Exception unused) {
            return new AppCompatButton(context, attributeSet);
        }
    }

    @Override // com.google.android.material.theme.MaterialComponentsViewInflater, androidx.appcompat.app.AppCompatViewInflater
    @NonNull
    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        try {
            return new MaterialTextView(context, attributeSet);
        } catch (Exception unused) {
            return new AppCompatTextView(context, attributeSet);
        }
    }
}
