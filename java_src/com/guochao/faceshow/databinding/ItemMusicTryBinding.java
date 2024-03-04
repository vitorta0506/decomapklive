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
public final class ItemMusicTryBinding implements ViewBinding {
    @NonNull
    public final ImageView checkbox;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView musicImg;
    @NonNull
    public final TextView musicInfo;
    @NonNull
    public final TextView musicName;
    @NonNull
    public final ImageView playIcon;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final LinearLayout useMusic;

    private ItemMusicTryBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.checkbox = imageView;
        this.item = linearLayout2;
        this.musicImg = imageView2;
        this.musicInfo = textView;
        this.musicName = textView2;
        this.playIcon = imageView3;
        this.useMusic = linearLayout3;
    }

    @NonNull
    public static ItemMusicTryBinding bind(@NonNull View view) {
        int i9 = R.id.checkbox;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.checkbox);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i9 = R.id.music_img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.music_img);
            if (imageView2 != null) {
                i9 = R.id.music_info;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.music_info);
                if (textView != null) {
                    i9 = R.id.music_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.music_name);
                    if (textView2 != null) {
                        i9 = R.id.play_icon;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.play_icon);
                        if (imageView3 != null) {
                            i9 = R.id.useMusic;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.useMusic);
                            if (linearLayout2 != null) {
                                return new ItemMusicTryBinding(linearLayout, imageView, linearLayout, imageView2, textView, textView2, imageView3, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemMusicTryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemMusicTryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_music_try, viewGroup, false);
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
