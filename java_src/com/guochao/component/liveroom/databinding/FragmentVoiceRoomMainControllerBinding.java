package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.voiceliveroom.view.VoiceRoomSeatControllerView;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomMainControllerBinding implements ViewBinding {
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final VoiceRoomSeatControllerView voiceRoomSeatControllerView;

    private FragmentVoiceRoomMainControllerBinding(@NonNull FrameLayout frameLayout, @NonNull VoiceRoomSeatControllerView voiceRoomSeatControllerView) {
        this.rootView = frameLayout;
        this.voiceRoomSeatControllerView = voiceRoomSeatControllerView;
    }

    @NonNull
    public static FragmentVoiceRoomMainControllerBinding bind(@NonNull View view) {
        int i9 = R$id.voice_room_seat_controller_view;
        VoiceRoomSeatControllerView voiceRoomSeatControllerView = (VoiceRoomSeatControllerView) ViewBindings.findChildViewById(view, i9);
        if (voiceRoomSeatControllerView != null) {
            return new FragmentVoiceRoomMainControllerBinding((FrameLayout) view, voiceRoomSeatControllerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomMainControllerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomMainControllerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_main_controller, viewGroup, false);
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
