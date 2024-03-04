package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class FragmentFilterBinding implements ViewBinding {
    @NonNull
    public final RecyclerView content;
    @NonNull
    public final SeekBar filterSeekbar;
    @NonNull
    public final LinearLayout filterSeekbarLay;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView tvFilterLevel;

    private FragmentFilterBinding(@NonNull FrameLayout frameLayout, @NonNull RecyclerView recyclerView, @NonNull SeekBar seekBar, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.content = recyclerView;
        this.filterSeekbar = seekBar;
        this.filterSeekbarLay = linearLayout;
        this.tvFilterLevel = textView;
    }

    @NonNull
    public static FragmentFilterBinding bind(@NonNull View view) {
        int i9 = R.id.content;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.content);
        if (recyclerView != null) {
            i9 = R.id.filter_seekbar;
            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.filter_seekbar);
            if (seekBar != null) {
                i9 = R.id.filter_seekbar_lay;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.filter_seekbar_lay);
                if (linearLayout != null) {
                    i9 = R.id.tv_filter_level;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_filter_level);
                    if (textView != null) {
                        return new FragmentFilterBinding((FrameLayout) view, recyclerView, seekBar, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentFilterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentFilterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_filter, viewGroup, false);
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
