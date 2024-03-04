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
public final class ActivityQRCodeLoginBinding implements ViewBinding {
    @NonNull
    public final TextView cancel;
    @NonNull
    public final ImageView close;
    @NonNull
    public final TextView login;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tips;

    private ActivityQRCodeLoginBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.cancel = textView;
        this.close = imageView;
        this.login = textView2;
        this.tips = textView3;
    }

    @NonNull
    public static ActivityQRCodeLoginBinding bind(@NonNull View view) {
        int i9 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i9 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i9 = R.id.login;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.login);
                if (textView2 != null) {
                    i9 = R.id.tips;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tips);
                    if (textView3 != null) {
                        return new ActivityQRCodeLoginBinding((LinearLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityQRCodeLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityQRCodeLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_q_r_code_login, viewGroup, false);
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
