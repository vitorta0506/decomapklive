package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutChatGameInviteOtherBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView gameIcon;
    @NonNull
    public final TextView gameName;
    @NonNull
    public final TextView name;
    @NonNull
    private final FrameLayout rootView;

    private LayoutChatGameInviteOtherBinding(@NonNull FrameLayout frameLayout, @NonNull NormalCircleImageView normalCircleImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.gameIcon = normalCircleImageView;
        this.gameName = textView;
        this.name = textView2;
    }

    @NonNull
    public static LayoutChatGameInviteOtherBinding bind(@NonNull View view) {
        int i9 = R.id.game_icon;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.game_icon);
        if (normalCircleImageView != null) {
            i9 = R.id.game_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_name);
            if (textView != null) {
                i9 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    return new LayoutChatGameInviteOtherBinding((FrameLayout) view, normalCircleImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutChatGameInviteOtherBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChatGameInviteOtherBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_chat_game_invite_other, viewGroup, false);
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
