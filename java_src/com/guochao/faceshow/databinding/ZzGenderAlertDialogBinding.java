package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ZzGenderAlertDialogBinding implements ViewBinding {
    @NonNull
    public final LinearLayout lineParent;
    @NonNull
    public final RadioButton rbMan;
    @NonNull
    public final RadioButton rbWoman;
    @NonNull
    public final RadioGroup rgSexGroup;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;

    private ZzGenderAlertDialogBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioGroup radioGroup, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.lineParent = linearLayout2;
        this.rbMan = radioButton;
        this.rbWoman = radioButton2;
        this.rgSexGroup = radioGroup;
        this.save = textView;
    }

    @NonNull
    public static ZzGenderAlertDialogBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i9 = R.id.rbMan;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbMan);
        if (radioButton != null) {
            i9 = R.id.rbWoman;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rbWoman);
            if (radioButton2 != null) {
                i9 = R.id.rgSexGroup;
                RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rgSexGroup);
                if (radioGroup != null) {
                    i9 = R.id.save;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                    if (textView != null) {
                        return new ZzGenderAlertDialogBinding(linearLayout, linearLayout, radioButton, radioButton2, radioGroup, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ZzGenderAlertDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ZzGenderAlertDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.zz_gender_alert_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
