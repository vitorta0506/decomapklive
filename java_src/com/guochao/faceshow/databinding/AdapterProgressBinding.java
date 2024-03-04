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
public final class AdapterProgressBinding implements ViewBinding {
    @NonNull
    public final ImageView ivLineDown;
    @NonNull
    public final ImageView ivLineUp;
    @NonNull
    public final ImageView ivState;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvWithdrawalState;
    @NonNull
    public final TextView tvWithdrawalTime;

    private AdapterProgressBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.ivLineDown = imageView;
        this.ivLineUp = imageView2;
        this.ivState = imageView3;
        this.tvWithdrawalState = textView;
        this.tvWithdrawalTime = textView2;
    }

    @NonNull
    public static AdapterProgressBinding bind(@NonNull View view) {
        int i9 = R.id.iv_line_down;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_line_down);
        if (imageView != null) {
            i9 = R.id.iv_line_up;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_line_up);
            if (imageView2 != null) {
                i9 = R.id.iv_state;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_state);
                if (imageView3 != null) {
                    i9 = R.id.tv_withdrawal_state;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_state);
                    if (textView != null) {
                        i9 = R.id.tv_withdrawal_time;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_withdrawal_time);
                        if (textView2 != null) {
                            return new AdapterProgressBinding((LinearLayout) view, imageView, imageView2, imageView3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static AdapterProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AdapterProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_progress, viewGroup, false);
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
