package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LiveRoomView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityLiveRoomBinding implements ViewBinding {
    @NonNull
    public final LiveRoomView content;
    @NonNull
    private final View rootView;

    private ActivityLiveRoomBinding(@NonNull View view, @NonNull LiveRoomView liveRoomView) {
        this.rootView = view;
        this.content = liveRoomView;
    }

    @NonNull
    public static ActivityLiveRoomBinding bind(@NonNull View view) {
        LiveRoomView liveRoomView = (LiveRoomView) ViewBindings.findChildViewById(view, R.id.content);
        if (liveRoomView != null) {
            return new ActivityLiveRoomBinding(view, liveRoomView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content)));
    }

    @NonNull
    public static ActivityLiveRoomBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_live_room, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
