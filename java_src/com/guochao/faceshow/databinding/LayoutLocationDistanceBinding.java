package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLocationDistanceBinding implements ViewBinding {
    @NonNull
    public final TextView disTV;
    @NonNull
    public final FrameLayout distanceArea;
    @NonNull
    public final ImageView icon;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SeekBar seekbar;
    @NonNull
    public final ImageView zeroIV;

    private LayoutLocationDistanceBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull SeekBar seekBar, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.disTV = textView;
        this.distanceArea = frameLayout2;
        this.icon = imageView;
        this.seekbar = seekBar;
        this.zeroIV = imageView2;
    }

    @NonNull
    public static LayoutLocationDistanceBinding bind(@NonNull View view) {
        int i9 = R.id.disTV;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.disTV);
        if (textView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i9 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView != null) {
                i9 = R.id.seekbar;
                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.seekbar);
                if (seekBar != null) {
                    i9 = R.id.zeroIV;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.zeroIV);
                    if (imageView2 != null) {
                        return new LayoutLocationDistanceBinding(frameLayout, textView, frameLayout, imageView, seekBar, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLocationDistanceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLocationDistanceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_location_distance, viewGroup, false);
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
