package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentFindAllImagesBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bottomLay;
    @NonNull
    public final TextView compile;
    @NonNull
    public final TextView count;
    @NonNull
    public final TextView gallery;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;

    private FragmentFindAllImagesBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.bottomLay = linearLayout;
        this.compile = textView;
        this.count = textView2;
        this.gallery = textView3;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static FragmentFindAllImagesBinding bind(@NonNull View view) {
        int i9 = R.id.bottom_lay;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bottom_lay);
        if (linearLayout != null) {
            i9 = R.id.compile;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.compile);
            if (textView != null) {
                i9 = R.id.count;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.count);
                if (textView2 != null) {
                    i9 = R.id.gallery;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gallery);
                    if (textView3 != null) {
                        i9 = R.id.recycler_view;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
                        if (recyclerView != null) {
                            return new FragmentFindAllImagesBinding((FrameLayout) view, linearLayout, textView, textView2, textView3, recyclerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFindAllImagesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFindAllImagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_find_all_images, viewGroup, false);
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
