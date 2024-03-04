package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomOnSeatMenuBinding implements ViewBinding {
    @NonNull
    public final MaterialButton cancel;
    @NonNull
    public final MaterialButton leaveSeat;
    @NonNull
    public final MaterialButton mute;
    @NonNull
    public final MaterialButton myCard;
    @NonNull
    private final LinearLayout rootView;

    private FragmentVoiceRoomOnSeatMenuBinding(@NonNull LinearLayout linearLayout, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2, @NonNull MaterialButton materialButton3, @NonNull MaterialButton materialButton4) {
        this.rootView = linearLayout;
        this.cancel = materialButton;
        this.leaveSeat = materialButton2;
        this.mute = materialButton3;
        this.myCard = materialButton4;
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuBinding bind(@NonNull View view) {
        int i9 = R$id.cancel;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i9);
        if (materialButton != null) {
            i9 = R$id.leave_seat;
            MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, i9);
            if (materialButton2 != null) {
                i9 = R$id.mute;
                MaterialButton materialButton3 = (MaterialButton) ViewBindings.findChildViewById(view, i9);
                if (materialButton3 != null) {
                    i9 = R$id.my_card;
                    MaterialButton materialButton4 = (MaterialButton) ViewBindings.findChildViewById(view, i9);
                    if (materialButton4 != null) {
                        return new FragmentVoiceRoomOnSeatMenuBinding((LinearLayout) view, materialButton, materialButton2, materialButton3, materialButton4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_on_seat_menu, viewGroup, false);
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
