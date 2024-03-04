package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.aaspring.views.GCSwipeRefreshView;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomListBinding implements ViewBinding {
    @NonNull
    public final LinearLayout emptyView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final GCSwipeRefreshView swipe;

    private FragmentVoiceRoomListBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull GCSwipeRefreshView gCSwipeRefreshView) {
        this.rootView = frameLayout;
        this.emptyView = linearLayout;
        this.recyclerView = recyclerView;
        this.swipe = gCSwipeRefreshView;
    }

    @NonNull
    public static FragmentVoiceRoomListBinding bind(@NonNull View view) {
        int i9 = R$id.empty_view;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
        if (linearLayout != null) {
            i9 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
            if (recyclerView != null) {
                i9 = R$id.swipe;
                GCSwipeRefreshView gCSwipeRefreshView = (GCSwipeRefreshView) ViewBindings.findChildViewById(view, i9);
                if (gCSwipeRefreshView != null) {
                    return new FragmentVoiceRoomListBinding((FrameLayout) view, linearLayout, recyclerView, gCSwipeRefreshView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_list, viewGroup, false);
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
