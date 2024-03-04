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
/* loaded from: classes2.dex */
public final class FragmentChooseRecommendTypeBinding implements ViewBinding {
    @NonNull
    public final ImageView anim;
    @NonNull
    public final TextView next;
    @NonNull
    public final FrameLayout nextArea;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private FragmentChooseRecommendTypeBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.anim = imageView;
        this.next = textView;
        this.nextArea = frameLayout;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static FragmentChooseRecommendTypeBinding bind(@NonNull View view) {
        int i9 = R.id.anim;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.anim);
        if (imageView != null) {
            i9 = R.id.next;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.next);
            if (textView != null) {
                i9 = R.id.next_area;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.next_area);
                if (frameLayout != null) {
                    i9 = R.id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                    if (recyclerView != null) {
                        return new FragmentChooseRecommendTypeBinding((LinearLayout) view, imageView, textView, frameLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentChooseRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentChooseRecommendTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_choose_recommend_type, viewGroup, false);
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
