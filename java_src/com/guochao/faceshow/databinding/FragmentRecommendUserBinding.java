package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
/* loaded from: classes2.dex */
public final class FragmentRecommendUserBinding implements ViewBinding {
    @NonNull
    public final ImageView anim;
    @NonNull
    public final TextView next;
    @NonNull
    public final FrameLayout nextArea;
    @NonNull
    public final SoulPlanetsView planet;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView skip;

    private FragmentRecommendUserBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull SoulPlanetsView soulPlanetsView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.anim = imageView;
        this.next = textView;
        this.nextArea = frameLayout2;
        this.planet = soulPlanetsView;
        this.skip = textView2;
    }

    @NonNull
    public static FragmentRecommendUserBinding bind(@NonNull View view) {
        int i9 = R.id.anim;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.anim);
        if (imageView != null) {
            i9 = R.id.next;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.next);
            if (textView != null) {
                i9 = R.id.next_area;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.next_area);
                if (frameLayout != null) {
                    i9 = R.id.planet;
                    SoulPlanetsView soulPlanetsView = (SoulPlanetsView) ViewBindings.findChildViewById(view, R.id.planet);
                    if (soulPlanetsView != null) {
                        i9 = R.id.skip;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.skip);
                        if (textView2 != null) {
                            return new FragmentRecommendUserBinding((FrameLayout) view, imageView, textView, frameLayout, soulPlanetsView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentRecommendUserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentRecommendUserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_recommend_user, viewGroup, false);
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
