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
public final class HelloPlayVideoBottomInfoBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flChat;
    @NonNull
    public final FrameLayout flLike;
    @NonNull
    public final FrameLayout flSuperLike;
    @NonNull
    public final ImageView ivFocus;
    @NonNull
    public final ImageView ivLike;
    @NonNull
    public final LinearLayout likeArea;
    @NonNull
    public final View line1;
    @NonNull
    public final View line2;
    @NonNull
    public final LinearLayout llBottomLayout;
    @NonNull
    public final LinearLayout llFocus;
    @NonNull
    public final LinearLayout llUserInfo;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView tvChat;
    @NonNull
    public final TextView tvFocus;
    @NonNull
    public final TextView tvLike;
    @NonNull
    public final TextView tvLikeNum;
    @NonNull
    public final TextView tvNickName;
    @NonNull
    public final TextView tvSuperLike;

    private HelloPlayVideoBottomInfoBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.flChat = frameLayout;
        this.flLike = frameLayout2;
        this.flSuperLike = frameLayout3;
        this.ivFocus = imageView;
        this.ivLike = imageView2;
        this.likeArea = linearLayout2;
        this.line1 = view;
        this.line2 = view2;
        this.llBottomLayout = linearLayout3;
        this.llFocus = linearLayout4;
        this.llUserInfo = linearLayout5;
        this.tvChat = textView;
        this.tvFocus = textView2;
        this.tvLike = textView3;
        this.tvLikeNum = textView4;
        this.tvNickName = textView5;
        this.tvSuperLike = textView6;
    }

    @NonNull
    public static HelloPlayVideoBottomInfoBinding bind(@NonNull View view) {
        int i9 = R.id.fl_chat;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_chat);
        if (frameLayout != null) {
            i9 = R.id.fl_like;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_like);
            if (frameLayout2 != null) {
                i9 = R.id.fl_super_like;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_super_like);
                if (frameLayout3 != null) {
                    i9 = R.id.iv_focus;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_focus);
                    if (imageView != null) {
                        i9 = R.id.iv_like;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_like);
                        if (imageView2 != null) {
                            i9 = R.id.like_area;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.like_area);
                            if (linearLayout != null) {
                                i9 = R.id.line_1;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_1);
                                if (findChildViewById != null) {
                                    i9 = R.id.line_2;
                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line_2);
                                    if (findChildViewById2 != null) {
                                        i9 = R.id.ll_bottom_layout;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_bottom_layout);
                                        if (linearLayout2 != null) {
                                            i9 = R.id.ll_focus;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_focus);
                                            if (linearLayout3 != null) {
                                                i9 = R.id.ll_user_info;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_user_info);
                                                if (linearLayout4 != null) {
                                                    i9 = R.id.tv_chat;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_chat);
                                                    if (textView != null) {
                                                        i9 = R.id.tv_focus;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_focus);
                                                        if (textView2 != null) {
                                                            i9 = R.id.tv_like;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_like);
                                                            if (textView3 != null) {
                                                                i9 = R.id.tv_like_num;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_like_num);
                                                                if (textView4 != null) {
                                                                    i9 = R.id.tv_nick_name;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_nick_name);
                                                                    if (textView5 != null) {
                                                                        i9 = R.id.tv_super_like;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_super_like);
                                                                        if (textView6 != null) {
                                                                            return new HelloPlayVideoBottomInfoBinding((LinearLayout) view, frameLayout, frameLayout2, frameLayout3, imageView, imageView2, linearLayout, findChildViewById, findChildViewById2, linearLayout2, linearLayout3, linearLayout4, textView, textView2, textView3, textView4, textView5, textView6);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static HelloPlayVideoBottomInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static HelloPlayVideoBottomInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.hello_play_video_bottom_info, viewGroup, false);
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
