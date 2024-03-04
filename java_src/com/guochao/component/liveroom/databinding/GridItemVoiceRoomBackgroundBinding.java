package com.guochao.component.liveroom.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.R$layout;
/* loaded from: classes3.dex */
public final class GridItemVoiceRoomBackgroundBinding implements ViewBinding {
    @NonNull
    public final CardView cardView;
    @NonNull
    public final ImageView icon;
    @NonNull
    public final ImageView image;
    @NonNull
    public final TextView info;
    @NonNull
    private final ConstraintLayout rootView;

    private GridItemVoiceRoomBackgroundBinding(@NonNull ConstraintLayout constraintLayout, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = constraintLayout;
        this.cardView = cardView;
        this.icon = imageView;
        this.image = imageView2;
        this.info = textView;
    }

    @NonNull
    public static GridItemVoiceRoomBackgroundBinding bind(@NonNull View view) {
        int i9 = R$id.cardView;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, i9);
        if (cardView != null) {
            i9 = R$id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.image;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i9);
                if (imageView2 != null) {
                    i9 = R$id.info;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i9);
                    if (textView != null) {
                        return new GridItemVoiceRoomBackgroundBinding((ConstraintLayout) view, cardView, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GridItemVoiceRoomBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GridItemVoiceRoomBackgroundBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.grid_item_voice_room_background, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
