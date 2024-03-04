package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LiveRoomListFragmentBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final SwipeRefreshLayout swipeContent;

    private LiveRoomListFragmentBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.swipeContent = swipeRefreshLayout;
    }

    @NonNull
    public static LiveRoomListFragmentBinding bind(@NonNull View view) {
        int i9 = R.id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (recyclerView != null) {
            i9 = R.id.swipe_content;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) ViewBindings.findChildViewById(view, R.id.swipe_content);
            if (swipeRefreshLayout != null) {
                return new LiveRoomListFragmentBinding((LinearLayout) view, recyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LiveRoomListFragmentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LiveRoomListFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.live_room_list_fragment, viewGroup, false);
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
