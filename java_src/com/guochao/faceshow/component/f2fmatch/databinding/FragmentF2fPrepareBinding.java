package com.guochao.faceshow.component.f2fmatch.databinding;

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
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$layout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentF2fPrepareBinding implements ViewBinding {
    @NonNull
    public final ImageView beauty;
    @NonNull
    public final TextView beautyTips;
    @NonNull
    public final FrameLayout filterDialog;
    @NonNull
    public final TextView genderTips;
    @NonNull
    public final ImageView history;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final ImageView mini;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final LinearLayout slidUpTips;
    @NonNull
    public final TextView slidUpTipsTv;
    @NonNull
    public final SvgaImageViewV2 svgaHand;

    private FragmentF2fPrepareBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = frameLayout;
        this.beauty = imageView;
        this.beautyTips = textView;
        this.filterDialog = frameLayout2;
        this.genderTips = textView2;
        this.history = imageView2;
        this.icon = imageView3;
        this.mini = imageView4;
        this.slidUpTips = linearLayout;
        this.slidUpTipsTv = textView3;
        this.svgaHand = svgaImageViewV2;
    }

    @NonNull
    public static FragmentF2fPrepareBinding bind(@NonNull View view) {
        int i9 = R$id.beauty;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.beauty_tips;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
            if (textView != null) {
                i9 = R$id.filter_dialog;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i9);
                if (frameLayout != null) {
                    i9 = R$id.gender_tips;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView2 != null) {
                        i9 = R$id.history;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                        if (imageView2 != null) {
                            i9 = R$id.icon;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView3 != null) {
                                i9 = R$id.mini;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView4 != null) {
                                    i9 = R$id.slid_up_tips;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                    if (linearLayout != null) {
                                        i9 = R$id.slid_up_tips_tv;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                        if (textView3 != null) {
                                            i9 = R$id.svga_hand;
                                            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
                                            if (svgaImageViewV2 != null) {
                                                return new FragmentF2fPrepareBinding((FrameLayout) view, imageView, textView, frameLayout, textView2, imageView2, imageView3, imageView4, linearLayout, textView3, svgaImageViewV2);
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
    public static FragmentF2fPrepareBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fPrepareBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_prepare, viewGroup, false);
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
