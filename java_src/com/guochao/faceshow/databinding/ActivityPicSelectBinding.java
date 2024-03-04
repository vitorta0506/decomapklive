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
/* loaded from: classes2.dex */
public final class ActivityPicSelectBinding implements ViewBinding {
    @NonNull
    public final ImageView coverimg;
    @NonNull
    public final RecyclerView hListView;
    @NonNull
    private final LinearLayout rootView;

    private ActivityPicSelectBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.coverimg = imageView;
        this.hListView = recyclerView;
    }

    @NonNull
    public static ActivityPicSelectBinding bind(@NonNull View view) {
        int i9 = R.id.coverimg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.coverimg);
        if (imageView != null) {
            i9 = R.id.hListView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.hListView);
            if (recyclerView != null) {
                return new ActivityPicSelectBinding((LinearLayout) view, imageView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPicSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityPicSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_pic_select, viewGroup, false);
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
