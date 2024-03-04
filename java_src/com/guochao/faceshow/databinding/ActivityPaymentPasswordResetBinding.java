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
public final class ActivityPaymentPasswordResetBinding implements ViewBinding {
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvForget;
    @NonNull
    public final TextView tvRemember;

    private ActivityPaymentPasswordResetBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.tvForget = textView;
        this.tvRemember = textView2;
    }

    @NonNull
    public static ActivityPaymentPasswordResetBinding bind(@NonNull View view) {
        int i9 = R.id.tvForget;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvForget);
        if (textView != null) {
            i9 = R.id.tvRemember;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvRemember);
            if (textView2 != null) {
                return new ActivityPaymentPasswordResetBinding((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPaymentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPaymentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_payment_password_reset, viewGroup, false);
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
