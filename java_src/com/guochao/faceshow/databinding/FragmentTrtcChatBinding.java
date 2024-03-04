package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TrtcChatRecylcerView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class FragmentTrtcChatBinding implements ViewBinding {
    @NonNull
    public final ImageView beautyIcon;
    @NonNull
    public final LinearLayout bottomLayout;
    @NonNull
    public final LinearLayout chatContent;
    @NonNull
    public final SVGAImageView gift;
    @NonNull
    public final ImageView input;
    @NonNull
    public final TrtcChatRecylcerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private FragmentTrtcChatBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView2, @NonNull TrtcChatRecylcerView trtcChatRecylcerView) {
        this.rootView = linearLayout;
        this.beautyIcon = imageView;
        this.bottomLayout = linearLayout2;
        this.chatContent = linearLayout3;
        this.gift = sVGAImageView;
        this.input = imageView2;
        this.recyclerView = trtcChatRecylcerView;
    }

    @NonNull
    public static FragmentTrtcChatBinding bind(@NonNull View view) {
        int i9 = R.id.beauty_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.beauty_icon);
        if (imageView != null) {
            i9 = R.id.bottom_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_layout);
            if (linearLayout != null) {
                i9 = R.id.chat_content;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.chat_content);
                if (linearLayout2 != null) {
                    i9 = R.id.gift;
                    SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.gift);
                    if (sVGAImageView != null) {
                        i9 = R.id.input;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.input);
                        if (imageView2 != null) {
                            i9 = R.id.recycler_view;
                            TrtcChatRecylcerView trtcChatRecylcerView = (TrtcChatRecylcerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                            if (trtcChatRecylcerView != null) {
                                return new FragmentTrtcChatBinding((LinearLayout) view, imageView, linearLayout, linearLayout2, sVGAImageView, imageView2, trtcChatRecylcerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentTrtcChatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentTrtcChatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_trtc_chat, viewGroup, false);
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
