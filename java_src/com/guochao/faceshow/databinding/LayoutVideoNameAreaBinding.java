package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class LayoutVideoNameAreaBinding implements ViewBinding {
    @NonNull
    public final TextView address;
    @NonNull
    public final LinearLayout addressArea;
    @NonNull
    public final AgeAndSexView ageSexView;
    @NonNull
    public final ImageView focus;
    @NonNull
    public final SVGAImageView focusSVGA;
    @NonNull
    public final HeadPortraitView headImg;
    @NonNull
    public final TextView nameTv;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SvgaImageViewV2 svga;

    private LayoutVideoNameAreaBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull AgeAndSexView ageAndSexView, @NonNull ImageView imageView, @NonNull SVGAImageView sVGAImageView, @NonNull HeadPortraitView headPortraitView, @NonNull TextView textView2, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = linearLayout;
        this.address = textView;
        this.addressArea = linearLayout2;
        this.ageSexView = ageAndSexView;
        this.focus = imageView;
        this.focusSVGA = sVGAImageView;
        this.headImg = headPortraitView;
        this.nameTv = textView2;
        this.svga = svgaImageViewV2;
    }

    @NonNull
    public static LayoutVideoNameAreaBinding bind(@NonNull View view) {
        int i9 = R.id.address;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.address);
        if (textView != null) {
            i9 = R.id.address_area;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.address_area);
            if (linearLayout != null) {
                i9 = R.id.age_sex_view;
                AgeAndSexView ageAndSexView = (AgeAndSexView) ViewBindings.findChildViewById(view, R.id.age_sex_view);
                if (ageAndSexView != null) {
                    i9 = R.id.focus;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.focus);
                    if (imageView != null) {
                        i9 = R.id.focusSVGA;
                        SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.focusSVGA);
                        if (sVGAImageView != null) {
                            i9 = R.id.head_img;
                            HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head_img);
                            if (headPortraitView != null) {
                                i9 = R.id.name_tv;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name_tv);
                                if (textView2 != null) {
                                    i9 = R.id.svga;
                                    SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.svga);
                                    if (svgaImageViewV2 != null) {
                                        return new LayoutVideoNameAreaBinding((LinearLayout) view, textView, linearLayout, ageAndSexView, imageView, sVGAImageView, headPortraitView, textView2, svgaImageViewV2);
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
    public static LayoutVideoNameAreaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutVideoNameAreaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_video_name_area, viewGroup, false);
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
