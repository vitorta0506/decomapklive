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
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class PopbottomUgcBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView cancel;
    @NonNull
    public final LinearLayout htLive;
    @NonNull
    public final ConstraintLayout htPhoto;
    @NonNull
    public final ConstraintLayout htVideo;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvPushVideo;

    private PopbottomUgcBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.cancel = imageView;
        this.htLive = linearLayout;
        this.htPhoto = constraintLayout;
        this.htVideo = constraintLayout2;
        this.tvPushVideo = textView;
    }

    @NonNull
    public static PopbottomUgcBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.cancel;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
            if (imageView != null) {
                i9 = R.id.ht_live;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ht_live);
                if (linearLayout != null) {
                    i9 = R.id.ht_photo;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.ht_photo);
                    if (constraintLayout != null) {
                        i9 = R.id.ht_video;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.ht_video);
                        if (constraintLayout2 != null) {
                            i9 = R.id.tv_push_video;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_push_video);
                            if (textView != null) {
                                return new PopbottomUgcBinding((FrameLayout) view, findChildViewById, imageView, linearLayout, constraintLayout, constraintLayout2, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopbottomUgcBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopbottomUgcBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.popbottom_ugc, viewGroup, false);
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
