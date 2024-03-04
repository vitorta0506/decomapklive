package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
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
public final class FragmentVoiceRoomMyRoomListBinding implements ViewBinding {
    @NonNull
    public final ImageView closeIV;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final GCSwipeRefreshView swipe;
    @NonNull
    public final TextView title1;

    private FragmentVoiceRoomMyRoomListBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull GCSwipeRefreshView gCSwipeRefreshView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.closeIV = imageView;
        this.recyclerView = recyclerView;
        this.swipe = gCSwipeRefreshView;
        this.title1 = textView;
    }

    @NonNull
    public static FragmentVoiceRoomMyRoomListBinding bind(@NonNull View view) {
        int i9 = R$id.closeIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            i9 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i9);
            if (recyclerView != null) {
                i9 = R$id.swipe;
                GCSwipeRefreshView gCSwipeRefreshView = (GCSwipeRefreshView) ViewBindings.findChildViewById(view, i9);
                if (gCSwipeRefreshView != null) {
                    i9 = R$id.title1;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        return new FragmentVoiceRoomMyRoomListBinding((FrameLayout) view, imageView, recyclerView, gCSwipeRefreshView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomMyRoomListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomMyRoomListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_my_room_list, viewGroup, false);
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
