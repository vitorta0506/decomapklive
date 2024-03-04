package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
import com.guochao.component.voiceliveroom.view.VoiceWaveView;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public final class LayoutVoiceRoomSeatBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatarView;
    @NonNull
    public final ImageView closeMicroIV;
    @NonNull
    public final TextView coin;
    @NonNull
    public final LinearLayout coinArea;
    @NonNull
    public final TextView nickName;
    @NonNull
    public final ImageView pendantView;
    @NonNull
    public final ImageView roomStatus;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final VoiceWaveView voiceWaveView;

    private LayoutVoiceRoomSeatBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull VoiceWaveView voiceWaveView) {
        this.rootView = linearLayout;
        this.avatarView = normalCircleImageView;
        this.closeMicroIV = imageView;
        this.coin = textView;
        this.coinArea = linearLayout2;
        this.nickName = textView2;
        this.pendantView = imageView2;
        this.roomStatus = imageView3;
        this.voiceWaveView = voiceWaveView;
    }

    @NonNull
    public static LayoutVoiceRoomSeatBinding bind(@NonNull View view) {
        int i9 = R$id.avatar_view;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, i9);
        if (normalCircleImageView != null) {
            i9 = R$id.closeMicroIV;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.coin;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                if (textView != null) {
                    i9 = R$id.coin_area;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i9);
                    if (linearLayout != null) {
                        i9 = R$id.nick_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i9);
                        if (textView2 != null) {
                            i9 = R$id.pendant_view;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                            if (imageView2 != null) {
                                i9 = R$id.room_status;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i9);
                                if (imageView3 != null) {
                                    i9 = R$id.voiceWaveView;
                                    VoiceWaveView voiceWaveView = (VoiceWaveView) ViewBindings.findChildViewById(view, i9);
                                    if (voiceWaveView != null) {
                                        return new LayoutVoiceRoomSeatBinding((LinearLayout) view, normalCircleImageView, imageView, textView, linearLayout, textView2, imageView2, imageView3, voiceWaveView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutVoiceRoomSeatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutVoiceRoomSeatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.layout_voice_room_seat, viewGroup, false);
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
