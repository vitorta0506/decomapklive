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
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes2.dex */
public final class LayoutDialogBuyDressBinding implements ViewBinding {
    @NonNull
    public final HeadPortraitView avatarView;
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView buyLoading;
    @NonNull
    public final TextView buyNow;
    @NonNull
    public final LinearLayout contentLay;
    @NonNull
    public final ImageView dressImage;
    @NonNull
    public final TextView dressName;
    @NonNull
    public final ImageView dressTag;
    @NonNull
    public final FrameLayout flHead;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final DisTouchRecyclerView specContent;

    private LayoutDialogBuyDressBinding(@NonNull FrameLayout frameLayout, @NonNull HeadPortraitView headPortraitView, @NonNull View view, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull FrameLayout frameLayout2, @NonNull DisTouchRecyclerView disTouchRecyclerView) {
        this.rootView = frameLayout;
        this.avatarView = headPortraitView;
        this.bgView = view;
        this.buyLoading = imageView;
        this.buyNow = textView;
        this.contentLay = linearLayout;
        this.dressImage = imageView2;
        this.dressName = textView2;
        this.dressTag = imageView3;
        this.flHead = frameLayout2;
        this.specContent = disTouchRecyclerView;
    }

    @NonNull
    public static LayoutDialogBuyDressBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_view;
        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.avatar_view);
        if (headPortraitView != null) {
            i9 = R.id.bg_view;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
            if (findChildViewById != null) {
                i9 = R.id.buy_loading;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.buy_loading);
                if (imageView != null) {
                    i9 = R.id.buy_now;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.buy_now);
                    if (textView != null) {
                        i9 = R.id.content_lay;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
                        if (linearLayout != null) {
                            i9 = R.id.dress_image;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.dress_image);
                            if (imageView2 != null) {
                                i9 = R.id.dress_name;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dress_name);
                                if (textView2 != null) {
                                    i9 = R.id.dress_tag;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.dress_tag);
                                    if (imageView3 != null) {
                                        i9 = R.id.fl_head;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_head);
                                        if (frameLayout != null) {
                                            i9 = R.id.spec_content;
                                            DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.spec_content);
                                            if (disTouchRecyclerView != null) {
                                                return new LayoutDialogBuyDressBinding((FrameLayout) view, headPortraitView, findChildViewById, imageView, textView, linearLayout, imageView2, textView2, imageView3, frameLayout, disTouchRecyclerView);
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
    public static LayoutDialogBuyDressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDialogBuyDressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_dialog_buy_dress, viewGroup, false);
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
