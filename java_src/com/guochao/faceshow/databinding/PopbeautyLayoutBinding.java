package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class PopbeautyLayoutBinding implements ViewBinding {
    @NonNull
    public final TextView TextSeekBarValue;
    @NonNull
    public final SeekBar ThirdGradleSeekbar;
    @NonNull
    public final LinearLayout barLl;
    @NonNull
    public final RecyclerView horizontalListView;
    @NonNull
    private final LinearLayout rootView;

    private PopbeautyLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SeekBar seekBar, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.TextSeekBarValue = textView;
        this.ThirdGradleSeekbar = seekBar;
        this.barLl = linearLayout2;
        this.horizontalListView = recyclerView;
    }

    @NonNull
    public static PopbeautyLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.TextSeekBarValue;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.TextSeekBarValue);
        if (textView != null) {
            i9 = R.id.ThirdGradle_seekbar;
            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.ThirdGradle_seekbar);
            if (seekBar != null) {
                i9 = R.id.bar_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bar_ll);
                if (linearLayout != null) {
                    i9 = R.id.horizontalListView;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.horizontalListView);
                    if (recyclerView != null) {
                        return new PopbeautyLayoutBinding((LinearLayout) view, textView, seekBar, linearLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopbeautyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopbeautyLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.popbeauty_layout, viewGroup, false);
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
