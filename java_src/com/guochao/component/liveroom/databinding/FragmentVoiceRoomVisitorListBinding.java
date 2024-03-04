package com.guochao.component.liveroom.databinding;

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
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.faceshow.aaspring.views.GCSwipeRefreshView;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomVisitorListBinding implements ViewBinding {
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final GCSwipeRefreshView swipe;
    @NonNull
    public final TextView title;

    private FragmentVoiceRoomVisitorListBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull GCSwipeRefreshView gCSwipeRefreshView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.swipe = gCSwipeRefreshView;
        this.title = textView;
    }

    @NonNull
    public static FragmentVoiceRoomVisitorListBinding bind(@NonNull View view) {
        int i9 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
        if (recyclerView != null) {
            i9 = R$id.swipe;
            GCSwipeRefreshView gCSwipeRefreshView = (GCSwipeRefreshView) ViewBindings.findChildViewById(view, i9);
            if (gCSwipeRefreshView != null) {
                i9 = R$id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    return new FragmentVoiceRoomVisitorListBinding((LinearLayout) view, recyclerView, gCSwipeRefreshView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomVisitorListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomVisitorListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_visitor_list, viewGroup, false);
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
