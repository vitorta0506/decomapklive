package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class LayoutUgcHeaderNoBinding implements ViewBinding {
    @NonNull
    public final ImageView bg1v1;
    @NonNull
    public final CardView cvDatingSquare;
    @NonNull
    public final CardView cvFindYou;
    @NonNull
    public final CardView cvPeopleNearby;
    @NonNull
    public final CardView cvPlanet;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SvgaImageViewV2 svga;

    private LayoutUgcHeaderNoBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull CardView cardView3, @NonNull CardView cardView4, @NonNull SvgaImageViewV2 svgaImageViewV2) {
        this.rootView = linearLayout;
        this.bg1v1 = imageView;
        this.cvDatingSquare = cardView;
        this.cvFindYou = cardView2;
        this.cvPeopleNearby = cardView3;
        this.cvPlanet = cardView4;
        this.svga = svgaImageViewV2;
    }

    @NonNull
    public static LayoutUgcHeaderNoBinding bind(@NonNull View view) {
        int i9 = R.id.bg_1v1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bg_1v1);
        if (imageView != null) {
            i9 = R.id.cv_dating_square;
            CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.cv_dating_square);
            if (cardView != null) {
                i9 = R.id.cv_find_you;
                CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, R.id.cv_find_you);
                if (cardView2 != null) {
                    i9 = R.id.cv_people_nearby;
                    CardView cardView3 = (CardView) ViewBindings.findChildViewById(view, R.id.cv_people_nearby);
                    if (cardView3 != null) {
                        i9 = R.id.cv_planet;
                        CardView cardView4 = (CardView) ViewBindings.findChildViewById(view, R.id.cv_planet);
                        if (cardView4 != null) {
                            i9 = R.id.svga;
                            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.svga);
                            if (svgaImageViewV2 != null) {
                                return new LayoutUgcHeaderNoBinding((LinearLayout) view, imageView, cardView, cardView2, cardView3, cardView4, svgaImageViewV2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUgcHeaderNoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUgcHeaderNoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_ugc_header_no, viewGroup, false);
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
