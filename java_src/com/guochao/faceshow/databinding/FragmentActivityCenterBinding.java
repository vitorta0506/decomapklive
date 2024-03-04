package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.GCSwipeRefreshView;
/* loaded from: classes2.dex */
public final class FragmentActivityCenterBinding implements ViewBinding {
    @NonNull
    public final ImageView emptyIV;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final GCSwipeRefreshView swipe;

    private FragmentActivityCenterBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull GCSwipeRefreshView gCSwipeRefreshView) {
        this.rootView = linearLayout;
        this.emptyIV = imageView;
        this.recyclerView = recyclerView;
        this.swipe = gCSwipeRefreshView;
    }

    @NonNull
    public static FragmentActivityCenterBinding bind(@NonNull View view) {
        int i9 = R.id.emptyIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.emptyIV);
        if (imageView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.swipe;
                GCSwipeRefreshView gCSwipeRefreshView = (GCSwipeRefreshView) ViewBindings.findChildViewById(view, R.id.swipe);
                if (gCSwipeRefreshView != null) {
                    return new FragmentActivityCenterBinding((LinearLayout) view, imageView, recyclerView, gCSwipeRefreshView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentActivityCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentActivityCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_activity_center, viewGroup, false);
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
