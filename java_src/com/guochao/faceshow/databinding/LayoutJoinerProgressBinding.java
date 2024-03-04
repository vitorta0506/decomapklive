package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.roomutil.widget.NumberProgressBar;
/* loaded from: classes2.dex */
public final class LayoutJoinerProgressBinding implements ViewBinding {
    @NonNull
    public final ImageView joinerIvStop;
    @NonNull
    public final NumberProgressBar joinerPbLoading;
    @NonNull
    public final TextView joinerTvMsg;
    @NonNull
    private final RelativeLayout rootView;

    private LayoutJoinerProgressBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull NumberProgressBar numberProgressBar, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.joinerIvStop = imageView;
        this.joinerPbLoading = numberProgressBar;
        this.joinerTvMsg = textView;
    }

    @NonNull
    public static LayoutJoinerProgressBinding bind(@NonNull View view) {
        int i9 = R.id.joiner_iv_stop;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.joiner_iv_stop);
        if (imageView != null) {
            i9 = R.id.joiner_pb_loading;
            NumberProgressBar numberProgressBar = (NumberProgressBar) ViewBindings.findChildViewById(view, R.id.joiner_pb_loading);
            if (numberProgressBar != null) {
                i9 = R.id.joiner_tv_msg;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.joiner_tv_msg);
                if (textView != null) {
                    return new LayoutJoinerProgressBinding((RelativeLayout) view, imageView, numberProgressBar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutJoinerProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutJoinerProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_joiner_progress, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
