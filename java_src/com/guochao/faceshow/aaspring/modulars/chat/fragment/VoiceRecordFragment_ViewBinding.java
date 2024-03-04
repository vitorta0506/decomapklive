package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VoiceWaveView;
/* loaded from: classes3.dex */
public class VoiceRecordFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VoiceRecordFragment f17035b;

    @UiThread
    public VoiceRecordFragment_ViewBinding(VoiceRecordFragment voiceRecordFragment, View view) {
        this.f17035b = voiceRecordFragment;
        voiceRecordFragment.mVoiceWaveView = (VoiceWaveView) butterknife.internal.c.d(view, R.id.voice, "field 'mVoiceWaveView'", VoiceWaveView.class);
        voiceRecordFragment.mImageViewCancelIndicator = (ImageView) butterknife.internal.c.d(view, R.id.cancel_send, "field 'mImageViewCancelIndicator'", ImageView.class);
        voiceRecordFragment.mTextViewRecordTime = (TextView) butterknife.internal.c.d(view, R.id.record_time, "field 'mTextViewRecordTime'", TextView.class);
        voiceRecordFragment.mTextViewRecordTip = (TextView) butterknife.internal.c.d(view, R.id.record_tip, "field 'mTextViewRecordTip'", TextView.class);
        voiceRecordFragment.mTextViewReleaseTip = (TextView) butterknife.internal.c.d(view, R.id.release_tips, "field 'mTextViewReleaseTip'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VoiceRecordFragment voiceRecordFragment = this.f17035b;
        if (voiceRecordFragment != null) {
            this.f17035b = null;
            voiceRecordFragment.mVoiceWaveView = null;
            voiceRecordFragment.mImageViewCancelIndicator = null;
            voiceRecordFragment.mTextViewRecordTime = null;
            voiceRecordFragment.mTextViewRecordTip = null;
            voiceRecordFragment.mTextViewReleaseTip = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
