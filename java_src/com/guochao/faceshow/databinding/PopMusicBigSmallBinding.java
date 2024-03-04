package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.TCReversalSeekBar;
/* loaded from: classes2.dex */
public final class PopMusicBigSmallBinding implements ViewBinding {
    @NonNull
    public final LinearLayout bgmLayput;
    @NonNull
    public final TCReversalSeekBar bgmSbVoice;
    @NonNull
    public final TCReversalSeekBar musicVoice;
    @NonNull
    private final LinearLayout rootView;

    private PopMusicBigSmallBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TCReversalSeekBar tCReversalSeekBar, @NonNull TCReversalSeekBar tCReversalSeekBar2) {
        this.rootView = linearLayout;
        this.bgmLayput = linearLayout2;
        this.bgmSbVoice = tCReversalSeekBar;
        this.musicVoice = tCReversalSeekBar2;
    }

    @NonNull
    public static PopMusicBigSmallBinding bind(@NonNull View view) {
        int i9 = R.id.bgm_layput;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.bgm_layput);
        if (linearLayout != null) {
            i9 = R.id.bgm_sb_voice;
            TCReversalSeekBar tCReversalSeekBar = (TCReversalSeekBar) ViewBindings.findChildViewById(view, R.id.bgm_sb_voice);
            if (tCReversalSeekBar != null) {
                i9 = R.id.music_voice;
                TCReversalSeekBar tCReversalSeekBar2 = (TCReversalSeekBar) ViewBindings.findChildViewById(view, R.id.music_voice);
                if (tCReversalSeekBar2 != null) {
                    return new PopMusicBigSmallBinding((LinearLayout) view, linearLayout, tCReversalSeekBar, tCReversalSeekBar2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static PopMusicBigSmallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopMusicBigSmallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.pop_music_big_small, viewGroup, false);
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
