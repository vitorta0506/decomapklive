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
import com.guochao.faceshow.component.f2fmatch.view.F2fAvatarView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class FragmentF2fMatchingBinding implements ViewBinding {
    @NonNull
    public final TextView addr;
    @NonNull
    public final F2fAvatarView avatar;
    @NonNull
    public final ImageView beauty;
    @NonNull
    public final ImageView countryFlag;
    @NonNull
    public final LinearLayout extraInfoArea;
    @NonNull
    public final SvgaImageViewV2 loadingAnim;
    @NonNull
    public final LinearLayout matchedInfoArea;
    @NonNull
    public final LinearLayout matchingArea;
    @NonNull
    public final ImageView mini;
    @NonNull
    public final TextView nickName;
    @NonNull
    public final ImageView radar;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tips;

    private FragmentF2fMatchingBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull F2fAvatarView f2fAvatarView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull ImageView imageView4, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.addr = textView;
        this.avatar = f2fAvatarView;
        this.beauty = imageView;
        this.countryFlag = imageView2;
        this.extraInfoArea = linearLayout;
        this.loadingAnim = svgaImageViewV2;
        this.matchedInfoArea = linearLayout2;
        this.matchingArea = linearLayout3;
        this.mini = imageView3;
        this.nickName = textView2;
        this.radar = imageView4;
        this.tips = textView3;
    }

    @NonNull
    public static FragmentF2fMatchingBinding bind(@NonNull View view) {
        int i9 = R$id.addr;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
        if (textView != null) {
            i9 = R$id.avatar;
            F2fAvatarView f2fAvatarView = (F2fAvatarView) ViewBindings.findChildViewById(view, i9);
            if (f2fAvatarView != null) {
                i9 = R$id.beauty;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView != null) {
                    i9 = R$id.country_flag;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                    if (imageView2 != null) {
                        i9 = R$id.extra_info_area;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                        if (linearLayout != null) {
                            i9 = R$id.loading_anim;
                            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, i9);
                            if (svgaImageViewV2 != null) {
                                i9 = R$id.matched_info_area;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                if (linearLayout2 != null) {
                                    i9 = R$id.matching_area;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                                    if (linearLayout3 != null) {
                                        i9 = R$id.mini;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                        if (imageView3 != null) {
                                            i9 = R$id.nick_name;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                                            if (textView2 != null) {
                                                i9 = R$id.radar;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                                if (imageView4 != null) {
                                                    i9 = R$id.tips;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i9);
                                                    if (textView3 != null) {
                                                        return new FragmentF2fMatchingBinding((FrameLayout) view, textView, f2fAvatarView, imageView, imageView2, linearLayout, svgaImageViewV2, linearLayout2, linearLayout3, imageView3, textView2, imageView4, textView3);
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
    public static FragmentF2fMatchingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentF2fMatchingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_f2f_matching, viewGroup, false);
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
