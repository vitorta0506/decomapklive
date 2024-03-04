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
public final class LayoutLuckyNumberInputBinding implements ViewBinding {
    @NonNull
    public final EditText edit;
    @NonNull
    public final LinearLayout inputArea;
    @NonNull
    public final TextView inputSubmit;
    @NonNull
    public final TextView inputTitle;
    @NonNull
    private final LinearLayout rootView;

    private LayoutLuckyNumberInputBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.edit = editText;
        this.inputArea = linearLayout2;
        this.inputSubmit = textView;
        this.inputTitle = textView2;
    }

    @NonNull
    public static LayoutLuckyNumberInputBinding bind(@NonNull View view) {
        int i9 = R.id.edit;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.edit);
        if (editText != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.input_submit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.input_submit);
            if (textView != null) {
                i9 = R.id.input_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.input_title);
                if (textView2 != null) {
                    return new LayoutLuckyNumberInputBinding(linearLayout, editText, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLuckyNumberInputBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLuckyNumberInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lucky_number_input, viewGroup, false);
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
