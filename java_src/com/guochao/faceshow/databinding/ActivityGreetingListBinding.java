package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ActivityGreetingListBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private ActivityGreetingListBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
    }

    @NonNull
    public static ActivityGreetingListBinding bind(@NonNull View view) {
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (recyclerView != null) {
            return new ActivityGreetingListBinding((LinearLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycler_view)));
    }

    @NonNull
    public static ActivityGreetingListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityGreetingListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_greeting_list, viewGroup, false);
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
