package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogIncomeCommonBinding implements ViewBinding {
    @NonNull
    public final TextView content;
    @NonNull
    public final ImageView ivclose;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView submit;

    private DialogIncomeCommonBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.content = textView;
        this.ivclose = imageView;
        this.submit = textView2;
    }

    @NonNull
    public static DialogIncomeCommonBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i9 = R.id.ivclose;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivclose);
            if (imageView != null) {
                i9 = R.id.submit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.submit);
                if (textView2 != null) {
                    return new DialogIncomeCommonBinding((LinearLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogIncomeCommonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogIncomeCommonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_income_common, viewGroup, false);
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
