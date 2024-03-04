package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class DialogWarnCancelAccountBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final TextView confirm;
    @NonNull
    public final TextView primaryTitle;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView secondaryTitle;

    private DialogWarnCancelAccountBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = frameLayout;
        this.cancel = textView;
        this.confirm = textView2;
        this.primaryTitle = textView3;
        this.secondaryTitle = textView4;
    }

    @NonNull
    public static DialogWarnCancelAccountBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.confirm;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm);
            if (textView2 != null) {
                i9 = R.id.primary_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.primary_title);
                if (textView3 != null) {
                    i9 = R.id.secondary_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.secondary_title);
                    if (textView4 != null) {
                        return new DialogWarnCancelAccountBinding((FrameLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogWarnCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWarnCancelAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_warn_cancel_account, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
