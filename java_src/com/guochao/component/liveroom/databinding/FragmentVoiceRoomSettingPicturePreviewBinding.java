package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class FragmentVoiceRoomSettingPicturePreviewBinding implements ViewBinding {
    @NonNull
    public final ImageView bgIV;
    @NonNull
    private final LinearLayout rootView;

    private FragmentVoiceRoomSettingPicturePreviewBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.bgIV = imageView;
    }

    @NonNull
    public static FragmentVoiceRoomSettingPicturePreviewBinding bind(@NonNull View view) {
        int i9 = R$id.bgIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
        if (imageView != null) {
            return new FragmentVoiceRoomSettingPicturePreviewBinding((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRoomSettingPicturePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRoomSettingPicturePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.fragment_voice_room_setting_picture_preview, viewGroup, false);
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
