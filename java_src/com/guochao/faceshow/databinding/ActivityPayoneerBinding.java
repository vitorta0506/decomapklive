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
public final class ActivityPayoneerBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvLogin;
    @NonNull
    public final TextView tvPayoneerAccountUnreviewed;
    @NonNull
    public final TextView tvRegistered;

    private ActivityPayoneerBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.tvLogin = textView;
        this.tvPayoneerAccountUnreviewed = textView2;
        this.tvRegistered = textView3;
    }

    @NonNull
    public static ActivityPayoneerBinding bind(@NonNull View view) {
        int i9 = R.id.tv_login;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_login);
        if (textView != null) {
            i9 = R.id.tv_payoneer_account_unreviewed;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_payoneer_account_unreviewed);
            if (textView2 != null) {
                i9 = R.id.tv_registered;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_registered);
                if (textView3 != null) {
                    return new ActivityPayoneerBinding((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPayoneerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPayoneerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_payoneer, viewGroup, false);
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
