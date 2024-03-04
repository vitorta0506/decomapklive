package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogDeleteImBinding implements ViewBinding {
    @NonNull
    public final TextView deleteClick;
    @NonNull
    public final LinearLayout rootView;
    @NonNull
    private final LinearLayout rootView_;

    private DialogDeleteImBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView_ = linearLayout;
        this.deleteClick = textView;
        this.rootView = linearLayout2;
    }

    @NonNull
    public static DialogDeleteImBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.delete_click);
        if (textView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            return new DialogDeleteImBinding(linearLayout, textView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.delete_click)));
    }

    @NonNull
    public static DialogDeleteImBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogDeleteImBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_delete_im, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView_;
    }
}
