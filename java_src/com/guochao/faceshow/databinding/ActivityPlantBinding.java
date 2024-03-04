package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes2.dex */
public final class ActivityPlantBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flLoading;
    @NonNull
    public final SvgaImageViewV2 loading;
    @NonNull
    public final SoulPlanetsView planet;
    @NonNull
    public final TextView randomChat;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvSexTip;

    private ActivityPlantBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull SvgaImageViewV2 svgaImageViewV2, @NonNull SoulPlanetsView soulPlanetsView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.flLoading = frameLayout2;
        this.loading = svgaImageViewV2;
        this.planet = soulPlanetsView;
        this.randomChat = textView;
        this.tvSexTip = textView2;
    }

    @NonNull
    public static ActivityPlantBinding bind(@NonNull View view) {
        int i9 = R.id.fl_loading;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_loading);
        if (frameLayout != null) {
            i9 = R.id.loading;
            SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) ViewBindings.findChildViewById(view, R.id.loading);
            if (svgaImageViewV2 != null) {
                i9 = R.id.planet;
                SoulPlanetsView soulPlanetsView = (SoulPlanetsView) ViewBindings.findChildViewById(view, R.id.planet);
                if (soulPlanetsView != null) {
                    i9 = R.id.random_chat;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.random_chat);
                    if (textView != null) {
                        i9 = R.id.tv_sex_tip;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sex_tip);
                        if (textView2 != null) {
                            return new ActivityPlantBinding((FrameLayout) view, frameLayout, svgaImageViewV2, soulPlanetsView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPlantBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPlantBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_plant, viewGroup, false);
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
