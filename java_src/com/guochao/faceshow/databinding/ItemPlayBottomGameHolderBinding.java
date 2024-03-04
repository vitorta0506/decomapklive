package com.guochao.faceshow.databinding;

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
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemPlayBottomGameHolderBinding implements ViewBinding {
    @NonNull
    public final ImageView gameIcon;
    @NonNull
    public final TextView gameName;
    @NonNull
    public final ImageView miniGameHelper;
    @NonNull
    public final LinearLayout playRotate;
    @NonNull
    private final LinearLayout rootView;

    private ItemPlayBottomGameHolderBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.gameIcon = imageView;
        this.gameName = textView;
        this.miniGameHelper = imageView2;
        this.playRotate = linearLayout2;
    }

    @NonNull
    public static ItemPlayBottomGameHolderBinding bind(@NonNull View view) {
        int i9 = R.id.game_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.game_icon);
        if (imageView != null) {
            i9 = R.id.game_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_name);
            if (textView != null) {
                i9 = R.id.mini_game_helper;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.mini_game_helper);
                if (imageView2 != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    return new ItemPlayBottomGameHolderBinding(linearLayout, imageView, textView, imageView2, linearLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPlayBottomGameHolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPlayBottomGameHolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_play_bottom_game_holder, viewGroup, false);
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
