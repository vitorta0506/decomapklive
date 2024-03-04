package com.guochao.lib_base.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.lib_base.R$layout;
/* loaded from: classes4.dex */
public final class TransientNotificationBinding implements ViewBinding {
    @NonNull
    public final TextView message;
    @NonNull
    private final LinearLayout rootView;

    private TransientNotificationBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.message = textView;
    }

    @NonNull
    public static TransientNotificationBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908299);
        if (textView != null) {
            return new TransientNotificationBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(16908299)));
    }

    @NonNull
    public static TransientNotificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static TransientNotificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.transient_notification, viewGroup, false);
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
