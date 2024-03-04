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
public final class FragmentVoiceRoomOnSeatMenuAdminEmptyBinding implements ViewBinding {
    @NonNull
    public final MaterialButton cancel;
    @NonNull
    public final MaterialButton linkBT;
    @NonNull
    public final MaterialButton lockBT;
    @NonNull
    private final LinearLayout rootView;

    private FragmentVoiceRoomOnSeatMenuAdminEmptyBinding(@NonNull LinearLayout linearLayout, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2, @NonNull MaterialButton materialButton3) {
        this.rootView = linearLayout;
        this.cancel = materialButton;
        this.linkBT = materialButton2;
        this.lockBT = materialButton3;
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuAdminEmptyBinding bind(@NonNull View view) {
        int i9 = R$id.cancel;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i9);
        if (materialButton != null) {
            i9 = R$id.linkBT;
            MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, i9);
            if (materialButton2 != null) {
                i9 = R$id.lockBT;
                MaterialButton materialButton3 = (MaterialButton) ViewBindings.findChildViewById(view, i9);
                if (materialButton3 != null) {
                    return new FragmentVoiceRoomOnSeatMenuAdminEmptyBinding((LinearLayout) view, materialButton, materialButton2, materialButton3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuAdminEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomOnSeatMenuAdminEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_on_seat_menu_admin_empty, viewGroup, false);
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
