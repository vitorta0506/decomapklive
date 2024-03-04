package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemMultiLiveRoomBinding implements ViewBinding {
    @NonNull
    public final ImageView avatarMask;
    @NonNull
    public final FrameLayout preview;
    @NonNull
    private final FrameLayout rootView;

    private ListItemMultiLiveRoomBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.avatarMask = imageView;
        this.preview = frameLayout2;
    }

    @NonNull
    public static ListItemMultiLiveRoomBinding bind(@NonNull View view) {
        int i9 = R.id.avatar_mask;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar_mask);
        if (imageView != null) {
            i9 = R.id.preview;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.preview);
            if (frameLayout != null) {
                return new ListItemMultiLiveRoomBinding((FrameLayout) view, imageView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemMultiLiveRoomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemMultiLiveRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_multi_live_room, viewGroup, false);
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
