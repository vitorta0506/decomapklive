package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ZzMulitStyleAlertDialogBinding implements ViewBinding {
    @NonNull
    public final EditText editTv;
    @NonNull
    public final LinearLayout lineParent;
    @NonNull
    public final TextView numberChange;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView save;

    private ZzMulitStyleAlertDialogBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.editTv = editText;
        this.lineParent = linearLayout2;
        this.numberChange = textView;
        this.save = textView2;
    }

    @NonNull
    public static ZzMulitStyleAlertDialogBinding bind(@NonNull View view) {
        int i9 = R.id.edit_tv;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edit_tv);
        if (editText != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.numberChange;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.numberChange);
            if (textView != null) {
                i9 = R.id.save;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.save);
                if (textView2 != null) {
                    return new ZzMulitStyleAlertDialogBinding(linearLayout, editText, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ZzMulitStyleAlertDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ZzMulitStyleAlertDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.zz_mulit_style_alert_dialog, viewGroup, false);
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
