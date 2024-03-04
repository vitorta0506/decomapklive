package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.SvgaImageViewV2;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ViewGiftComboBinding implements ViewBinding {
    @NonNull
    public final SvgaImageViewV2 ballView;
    @NonNull
    public final RelativeLayout bottomRL;
    @NonNull
    public final LinearLayout numTV;
    @NonNull
    public final ImageView perfectIV;
    @NonNull
    public final SvgaImageViewV2 rippleView1;
    @NonNull
    public final SvgaImageViewV2 rippleView2;
    @NonNull
    public final SvgaImageViewV2 rippleView3;
    @NonNull
    public final ImageView roadIV;
    @NonNull
    private final View rootView;
    @NonNull
    public final ImageView rotateIV;
    @NonNull
    public final RelativeLayout scaleView;

    private ViewGiftComboBinding(@NonNull View view, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SvgaImageViewV2 svgaImageViewV22, @NonNull SvgaImageViewV2 svgaImageViewV23, @NonNull SvgaImageViewV2 svgaImageViewV24, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = view;
        this.ballView = svgaImageViewV2;
        this.bottomRL = relativeLayout;
        this.numTV = linearLayout;
        this.perfectIV = imageView;
        this.rippleView1 = svgaImageViewV22;
        this.rippleView2 = svgaImageViewV23;
        this.rippleView3 = svgaImageViewV24;
        this.roadIV = imageView2;
        this.rotateIV = imageView3;
        this.scaleView = relativeLayout2;
    }

    @NonNull
    public static ViewGiftComboBinding bind(@NonNull View view) {
        int i9 = R.id.ballView;
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.ballView);
        if (svgaImageViewV2 != null) {
            i9 = R.id.bottomRL;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.bottomRL);
            if (relativeLayout != null) {
                i9 = R.id.numTV;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.numTV);
                if (linearLayout != null) {
                    i9 = R.id.perfectIV;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.perfectIV);
                    if (imageView != null) {
                        i9 = R.id.rippleView1;
                        SvgaImageViewV2 svgaImageViewV22 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.rippleView1);
                        if (svgaImageViewV22 != null) {
                            i9 = R.id.rippleView2;
                            SvgaImageViewV2 svgaImageViewV23 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.rippleView2);
                            if (svgaImageViewV23 != null) {
                                i9 = R.id.rippleView3;
                                SvgaImageViewV2 svgaImageViewV24 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.rippleView3);
                                if (svgaImageViewV24 != null) {
                                    i9 = R.id.roadIV;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.roadIV);
                                    if (imageView2 != null) {
                                        i9 = R.id.rotateIV;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.rotateIV);
                                        if (imageView3 != null) {
                                            i9 = R.id.scaleView;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.scaleView);
                                            if (relativeLayout2 != null) {
                                                return new ViewGiftComboBinding(view, svgaImageViewV2, relativeLayout, linearLayout, imageView, svgaImageViewV22, svgaImageViewV23, svgaImageViewV24, imageView2, imageView3, relativeLayout2);
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
    public static ViewGiftComboBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.view_gift_combo, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
