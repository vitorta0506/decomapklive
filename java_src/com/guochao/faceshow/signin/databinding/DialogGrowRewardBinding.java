package com.guochao.faceshow.signin.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
/* loaded from: classes4.dex */
public final class DialogGrowRewardBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final TextView ivTitle;
    @NonNull
    public final RecyclerView rewardContent;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView startSignin;

    private DialogGrowRewardBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.ivTitle = textView;
        this.rewardContent = recyclerView;
        this.startSignin = textView2;
    }

    @NonNull
    public static DialogGrowRewardBinding bind(@NonNull View view) {
        int i9 = R$id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.iv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.reward_content;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
                if (recyclerView != null) {
                    i9 = R$id.start_signin;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        return new DialogGrowRewardBinding((FrameLayout) view, imageView, textView, recyclerView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static DialogGrowRewardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogGrowRewardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.dialog_grow_reward, viewGroup, false);
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
