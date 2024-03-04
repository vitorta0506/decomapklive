package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.RangeSlider;
import com.guochao.faceshow.views.TCReversalSeekBar;
/* loaded from: classes2.dex */
public final class PopBgmLayoutBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bgmLayput;
    @NonNull
    public final RangeSlider bgmRangeSlider;
    @NonNull
    public final TCReversalSeekBar bgmSbVoice;
    @NonNull
    public final RelativeLayout jianqieBgm;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final TextView startEndTime;
    @NonNull
    public final TextView sure;

    private PopBgmLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RangeSlider rangeSlider, @NonNull TCReversalSeekBar tCReversalSeekBar, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.bgmLayput = linearLayout2;
        this.bgmRangeSlider = rangeSlider;
        this.bgmSbVoice = tCReversalSeekBar;
        this.jianqieBgm = relativeLayout;
        this.startEndTime = textView;
        this.sure = textView2;
    }

    @NonNull
    public static PopBgmLayoutBinding bind(@NonNull View view) {
        int i9 = R.id.bgm_layput;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bgm_layput);
        if (linearLayout != null) {
            i9 = R.id.bgm_range_slider;
            RangeSlider rangeSlider = (RangeSlider) ViewBindings.findChildViewById(view, R.id.bgm_range_slider);
            if (rangeSlider != null) {
                i9 = R.id.bgm_sb_voice;
                TCReversalSeekBar tCReversalSeekBar = (TCReversalSeekBar) ViewBindings.findChildViewById(view, R.id.bgm_sb_voice);
                if (tCReversalSeekBar != null) {
                    i9 = R.id.jianqie_bgm;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.jianqie_bgm);
                    if (relativeLayout != null) {
                        i9 = R.id.start_end_time;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.start_end_time);
                        if (textView != null) {
                            i9 = R.id.sure;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sure);
                            if (textView2 != null) {
                                return new PopBgmLayoutBinding((LinearLayout) view, linearLayout, rangeSlider, tCReversalSeekBar, relativeLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopBgmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopBgmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_bgm_layout, viewGroup, false);
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
