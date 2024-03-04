package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class FragmentLiveFloatInteractionBinding implements ViewBinding {
    @NonNull
    public final ImageView back;
    @NonNull
    public final ImageView clear;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView title;

    private FragmentLiveFloatInteractionBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RecyclerView recyclerView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.clear = imageView2;
        this.recyclerView = recyclerView;
        this.title = textView;
    }

    @NonNull
    public static FragmentLiveFloatInteractionBinding bind(@NonNull View view) {
        int i9 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i9 = R.id.clear;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
            if (imageView2 != null) {
                i9 = R.id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                if (recyclerView != null) {
                    i9 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView != null) {
                        return new FragmentLiveFloatInteractionBinding((LinearLayout) view, imageView, imageView2, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveFloatInteractionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveFloatInteractionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_float_interaction, viewGroup, false);
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
