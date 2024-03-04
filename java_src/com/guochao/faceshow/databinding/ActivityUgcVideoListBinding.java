package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityUgcVideoListBinding implements ViewBinding {
    @NonNull
    public final TextView btnOk;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private ActivityUgcVideoListBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.btnOk = textView;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static ActivityUgcVideoListBinding bind(@NonNull View view) {
        int i9 = R.id.btn_ok;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_ok);
        if (textView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                return new ActivityUgcVideoListBinding((LinearLayout) view, textView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUgcVideoListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUgcVideoListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_ugc_video_list, viewGroup, false);
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
