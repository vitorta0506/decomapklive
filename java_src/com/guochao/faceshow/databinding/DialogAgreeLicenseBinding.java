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
public final class DialogAgreeLicenseBinding implements ViewBinding {
    @NonNull
    public final TextView btnAgree;
    @NonNull
    public final TextView policy;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView term;

    private DialogAgreeLicenseBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.btnAgree = textView;
        this.policy = textView2;
        this.term = textView3;
    }

    @NonNull
    public static DialogAgreeLicenseBinding bind(@NonNull View view) {
        int i9 = R.id.btnAgree;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnAgree);
        if (textView != null) {
            i9 = R.id.policy;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.policy);
            if (textView2 != null) {
                i9 = R.id.term;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.term);
                if (textView3 != null) {
                    return new DialogAgreeLicenseBinding((FrameLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogAgreeLicenseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogAgreeLicenseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_agree_license, viewGroup, false);
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
