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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class LayoutHandyGiftAreaBinding implements ViewBinding {
    @NonNull
    public final ImageView clear;
    @NonNull
    public final ImageView close;
    @NonNull
    public final TextView giftCount;
    @NonNull
    public final LinearLayout guide;
    @NonNull
    public final HandyAnimView handyView;
    @NonNull
    public final SvgaImageViewV2 lottie;
    @NonNull
    public final ImageView recovation;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final RecyclerView rv;

    private LayoutHandyGiftAreaBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull HandyAnimView handyAnimView, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull ImageView imageView3, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.clear = imageView;
        this.close = imageView2;
        this.giftCount = textView;
        this.guide = linearLayout;
        this.handyView = handyAnimView;
        this.lottie = svgaImageViewV2;
        this.recovation = imageView3;
        this.rv = recyclerView;
    }

    @NonNull
    public static LayoutHandyGiftAreaBinding bind(@NonNull View view) {
        int i9 = R.id.clear;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
        if (imageView != null) {
            i9 = R.id.close;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView2 != null) {
                i9 = R.id.gift_count;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gift_count);
                if (textView != null) {
                    i9 = R.id.guide;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.guide);
                    if (linearLayout != null) {
                        i9 = R.id.handy_view;
                        HandyAnimView handyAnimView = (HandyAnimView) ViewBindings.findChildViewById(view, R.id.handy_view);
                        if (handyAnimView != null) {
                            i9 = R.id.lottie;
                            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.lottie);
                            if (svgaImageViewV2 != null) {
                                i9 = R.id.recovation;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.recovation);
                                if (imageView3 != null) {
                                    i9 = R.id.rv;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv);
                                    if (recyclerView != null) {
                                        return new LayoutHandyGiftAreaBinding((FrameLayout) view, imageView, imageView2, textView, linearLayout, handyAnimView, svgaImageViewV2, imageView3, recyclerView);
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
    public static LayoutHandyGiftAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutHandyGiftAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_handy_gift_area, viewGroup, false);
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
