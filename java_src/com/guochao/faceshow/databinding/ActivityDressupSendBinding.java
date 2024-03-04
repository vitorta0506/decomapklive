package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityDressupSendBinding implements ViewBinding {
    @NonNull
    public final TextView btnConfirm;
    @NonNull
    public final TextView confirmTip;
    @NonNull
    public final FrameLayout fragmentContainer;
    @NonNull
    public final LinearLayout layoutConfirm;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView sendLoading;

    private ActivityDressupSendBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.btnConfirm = textView;
        this.confirmTip = textView2;
        this.fragmentContainer = frameLayout2;
        this.layoutConfirm = linearLayout;
        this.sendLoading = imageView;
    }

    @NonNull
    public static ActivityDressupSendBinding bind(@NonNull View view) {
        int i9 = R.id.btn_confirm;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_confirm);
        if (textView != null) {
            i9 = R.id.confirm_tip;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.confirm_tip);
            if (textView2 != null) {
                i9 = R.id.fragment_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragment_container);
                if (frameLayout != null) {
                    i9 = R.id.layout_confirm;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_confirm);
                    if (linearLayout != null) {
                        i9 = R.id.send_loading;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.send_loading);
                        if (imageView != null) {
                            return new ActivityDressupSendBinding((FrameLayout) view, textView, textView2, frameLayout, linearLayout, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityDressupSendBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityDressupSendBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_dressup_send, viewGroup, false);
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
