package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.exoplayer2.ui.PlayerView;
import com.guochao.faceshow.R;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ActivityPlayVideoBinding implements ViewBinding {
    @NonNull
    public final LinearLayout llTitle;
    @NonNull
    public final ImageView playBt;
    @NonNull
    public final PlayerView playerview;
    @NonNull
    private final View rootView;

    private ActivityPlayVideoBinding(@NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull PlayerView playerView) {
        this.rootView = view;
        this.llTitle = linearLayout;
        this.playBt = imageView;
        this.playerview = playerView;
    }

    @NonNull
    public static ActivityPlayVideoBinding bind(@NonNull View view) {
        int i9 = R.id.ll_title;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title);
        if (linearLayout != null) {
            i9 = R.id.play_bt;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.play_bt);
            if (imageView != null) {
                i9 = R.id.playerview;
                PlayerView playerView = (PlayerView) ViewBindings.findChildViewById(view, R.id.playerview);
                if (playerView != null) {
                    return new ActivityPlayVideoBinding(view, linearLayout, imageView, playerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityPlayVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.activity_play_video, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
