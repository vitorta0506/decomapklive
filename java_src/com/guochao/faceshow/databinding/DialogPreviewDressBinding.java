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
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes2.dex */
public final class DialogPreviewDressBinding implements ViewBinding {
    @NonNull
    public final View bgView;
    @NonNull
    public final ImageView closeView;
    @NonNull
    public final LinearLayout contentLay;
    @NonNull
    public final FrameLayout flCenter;
    @NonNull
    public final HeadPortraitView head;
    @NonNull
    public final SVGAImageView progressImg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView specTag;
    @NonNull
    public final SVGAImageView svgaView;
    @NonNull
    public final TextView userName;

    private DialogPreviewDressBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout2, @NonNull HeadPortraitView headPortraitView, @NonNull SVGAImageView sVGAImageView, @NonNull ImageView imageView2, @NonNull SVGAImageView sVGAImageView2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.bgView = view;
        this.closeView = imageView;
        this.contentLay = linearLayout;
        this.flCenter = frameLayout2;
        this.head = headPortraitView;
        this.progressImg = sVGAImageView;
        this.specTag = imageView2;
        this.svgaView = sVGAImageView2;
        this.userName = textView;
    }

    @NonNull
    public static DialogPreviewDressBinding bind(@NonNull View view) {
        int i9 = R.id.bg_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_view);
        if (findChildViewById != null) {
            i9 = R.id.close_view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close_view);
            if (imageView != null) {
                i9 = R.id.content_lay;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_lay);
                if (linearLayout != null) {
                    i9 = R.id.fl_center;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_center);
                    if (frameLayout != null) {
                        i9 = R.id.head;
                        HeadPortraitView headPortraitView = (HeadPortraitView) ViewBindings.findChildViewById(view, R.id.head);
                        if (headPortraitView != null) {
                            i9 = R.id.progress_img;
                            SVGAImageView sVGAImageView = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.progress_img);
                            if (sVGAImageView != null) {
                                i9 = R.id.spec_tag;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.spec_tag);
                                if (imageView2 != null) {
                                    i9 = R.id.svga_view;
                                    SVGAImageView sVGAImageView2 = (SVGAImageView) ViewBindings.findChildViewById(view, R.id.svga_view);
                                    if (sVGAImageView2 != null) {
                                        i9 = R.id.user_name;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.user_name);
                                        if (textView != null) {
                                            return new DialogPreviewDressBinding((FrameLayout) view, findChildViewById, imageView, linearLayout, frameLayout, headPortraitView, sVGAImageView, imageView2, sVGAImageView2, textView);
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
    public static DialogPreviewDressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogPreviewDressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.dialog_preview_dress, viewGroup, false);
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
