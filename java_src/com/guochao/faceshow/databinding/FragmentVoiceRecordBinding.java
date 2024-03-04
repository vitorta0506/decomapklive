package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VoiceWaveView;
/* loaded from: classes2.dex */
public final class FragmentVoiceRecordBinding implements ViewBinding {
    @NonNull
    public final ImageView cancelSend;
    @NonNull
    public final TextView recordTime;
    @NonNull
    public final TextView recordTip;
    @NonNull
    public final TextView releaseTips;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final VoiceWaveView voice;

    private FragmentVoiceRecordBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull VoiceWaveView voiceWaveView) {
        this.rootView = relativeLayout;
        this.cancelSend = imageView;
        this.recordTime = textView;
        this.recordTip = textView2;
        this.releaseTips = textView3;
        this.voice = voiceWaveView;
    }

    @NonNull
    public static FragmentVoiceRecordBinding bind(@NonNull View view) {
        int i9 = R.id.cancel_send;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel_send);
        if (imageView != null) {
            i9 = R.id.record_time;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.record_time);
            if (textView != null) {
                i9 = R.id.record_tip;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.record_tip);
                if (textView2 != null) {
                    i9 = R.id.release_tips;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.release_tips);
                    if (textView3 != null) {
                        i9 = R.id.voice;
                        VoiceWaveView voiceWaveView = (VoiceWaveView) ViewBindings.findChildViewById(view, R.id.voice);
                        if (voiceWaveView != null) {
                            return new FragmentVoiceRecordBinding((RelativeLayout) view, imageView, textView, textView2, textView3, voiceWaveView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentVoiceRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentVoiceRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_voice_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
