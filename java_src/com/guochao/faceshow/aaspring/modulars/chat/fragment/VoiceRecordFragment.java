package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.VoiceInfo;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.VoiceWaveView;
import com.guochao.faceshow.utils.RecorderUtil;
/* loaded from: classes3.dex */
public class VoiceRecordFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private c f17028a;

    /* renamed from: b  reason: collision with root package name */
    RecorderUtil f17029b;

    /* renamed from: d  reason: collision with root package name */
    long f17031d;
    @BindView
    ImageView mImageViewCancelIndicator;
    @BindView
    TextView mTextViewRecordTime;
    @BindView
    TextView mTextViewRecordTip;
    @BindView
    TextView mTextViewReleaseTip;
    @BindView
    VoiceWaveView mVoiceWaveView;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17030c = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17032e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends SimpleObserver<te.a> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements RecorderUtil.OnRecordListener {
        b() {
        }

        @Override // com.guochao.faceshow.utils.RecorderUtil.OnRecordListener
        public void onAutoStopRecord(String str, long j10) {
            VoiceRecordFragment.this.f17032e = true;
            if (VoiceRecordFragment.this.f17028a != null) {
                VoiceInfo voiceInfo = new VoiceInfo();
                voiceInfo.setFilePath(str);
                voiceInfo.setDuration(j10);
                if (j10 >= 1000) {
                    VoiceRecordFragment.this.f17028a.onRecordEnd(voiceInfo, VoiceRecordFragment.this.f17030c);
                } else {
                    VoiceRecordFragment.this.f17028a.onRecordEnd(voiceInfo, true);
                    VoiceRecordFragment.this.showToast(R.string.Voice_too_short);
                }
            }
            VoiceRecordFragment.this.mTextViewRecordTip.setText(R.string.chat_press_talk);
            VoiceRecordFragment voiceRecordFragment = VoiceRecordFragment.this;
            voiceRecordFragment.mTextViewRecordTime.setText(voiceRecordFragment.W1(0));
            VoiceRecordFragment.this.mTextViewRecordTime.setVisibility(8);
            VoiceRecordFragment.this.mImageViewCancelIndicator.setVisibility(8);
            VoiceRecordFragment.this.mImageViewCancelIndicator.setSelected(false);
            VoiceRecordFragment.this.f17030c = false;
            VoiceRecordFragment.this.mTextViewReleaseTip.setVisibility(8);
            VoiceRecordFragment.this.mVoiceWaveView.b();
        }

        @Override // com.guochao.faceshow.utils.RecorderUtil.OnRecordListener
        public void onTimeUsing(int i9) {
            VoiceRecordFragment voiceRecordFragment = VoiceRecordFragment.this;
            voiceRecordFragment.mTextViewRecordTime.setText(voiceRecordFragment.W1(i9 / 1000));
        }

        @Override // com.guochao.faceshow.utils.RecorderUtil.OnRecordListener
        public void onVoiceChanged(int i9, int i10) {
            VoiceRecordFragment.this.mVoiceWaveView.setMax(i10);
            VoiceRecordFragment.this.mVoiceWaveView.setWave(i9);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onRecordEnd(VoiceInfo voiceInfo, boolean z10);

        void onRecordStart(VoiceRecordFragment voiceRecordFragment);
    }

    private int V1() {
        return this.mTextViewRecordTime.getLayoutDirection() == 1 ? R.string.Swipe_left_to_cancel : R.string.Swipe_right_to_cancel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String W1(int i9) {
        Object valueOf;
        Object valueOf2;
        Object valueOf3;
        if (i9 < 60) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("00:");
            if (i9 < 10) {
                valueOf3 = "0" + i9;
            } else {
                valueOf3 = Integer.valueOf(i9);
            }
            sb2.append(valueOf3);
            return sb2.toString();
        }
        int i10 = i9 / 60;
        StringBuilder sb3 = new StringBuilder();
        if (i10 < 10) {
            valueOf = "0" + i10;
        } else {
            valueOf = Integer.valueOf(i10);
        }
        sb3.append(valueOf);
        sb3.append(CertificateUtil.DELIMITER);
        int i11 = i9 % 60;
        if (i11 < 10) {
            valueOf2 = "0" + i11;
        } else {
            valueOf2 = Integer.valueOf(i11);
        }
        sb3.append(valueOf2);
        return sb3.toString();
    }

    private void X1() {
        this.mTextViewRecordTip.setText(R.string.chat_press_talk);
        RecorderUtil recorderUtil = new RecorderUtil();
        this.f17029b = recorderUtil;
        recorderUtil.setOnRecordListener(new b());
        this.mVoiceWaveView.setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.f
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean Z1;
                Z1 = VoiceRecordFragment.this.Z1(view, motionEvent);
                return Z1;
            }
        });
    }

    private boolean Y1(MotionEvent motionEvent, View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i9 = iArr[0];
        int i10 = iArr[1];
        return ((rawX > ((float) i9) ? 1 : (rawX == ((float) i9) ? 0 : -1)) > 0 && (rawX > ((float) (i9 + view.getWidth())) ? 1 : (rawX == ((float) (i9 + view.getWidth())) ? 0 : -1)) < 0) && ((rawY > ((float) i10) ? 1 : (rawY == ((float) i10) ? 0 : -1)) > 0 && (rawY > ((float) (i10 + view.getHeight())) ? 1 : (rawY == ((float) (i10 + view.getHeight())) ? 0 : -1)) < 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r4 != 3) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ boolean Z1(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            int r4 = r5.getAction()
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L50
            if (r4 == r0) goto L45
            r2 = 2
            if (r4 == r2) goto L12
            r5 = 3
            if (r4 == r5) goto L45
            goto L8c
        L12:
            boolean r4 = r3.f17032e
            if (r4 == 0) goto L17
            return r1
        L17:
            android.widget.ImageView r4 = r3.mImageViewCancelIndicator
            boolean r4 = r3.Y1(r5, r4)
            r5 = 8
            if (r4 == 0) goto L33
            android.widget.ImageView r4 = r3.mImageViewCancelIndicator
            r4.setSelected(r0)
            r3.f17030c = r0
            android.widget.TextView r4 = r3.mTextViewReleaseTip
            r4.setVisibility(r1)
            android.widget.TextView r4 = r3.mTextViewRecordTime
            r4.setVisibility(r5)
            goto L8c
        L33:
            android.widget.TextView r4 = r3.mTextViewReleaseTip
            r4.setVisibility(r5)
            android.widget.TextView r4 = r3.mTextViewRecordTime
            r4.setVisibility(r1)
            r3.f17030c = r1
            android.widget.ImageView r4 = r3.mImageViewCancelIndicator
            r4.setSelected(r1)
            goto L8c
        L45:
            boolean r4 = r3.f17032e
            if (r4 == 0) goto L4a
            return r1
        L4a:
            com.guochao.faceshow.utils.RecorderUtil r4 = r3.f17029b
            r4.stopRecording()
            return r1
        L50:
            androidx.fragment.app.FragmentActivity r4 = r3.getActivity()
            java.lang.String r5 = "android.permission.RECORD_AUDIO"
            int r4 = androidx.core.content.ContextCompat.checkSelfPermission(r4, r5)
            if (r4 == 0) goto L60
            r3.a2()
            return r1
        L60:
            long r4 = java.lang.System.currentTimeMillis()
            r3.f17031d = r4
            com.guochao.faceshow.utils.RecorderUtil r4 = r3.f17029b
            r4.startRecording()
            android.widget.TextView r4 = r3.mTextViewRecordTip
            int r5 = r3.V1()
            r4.setText(r5)
            android.widget.TextView r4 = r3.mTextViewRecordTime
            r4.setVisibility(r1)
            com.guochao.faceshow.aaspring.views.VoiceWaveView r4 = r3.mVoiceWaveView
            r4.setVisibility(r1)
            android.widget.ImageView r4 = r3.mImageViewCancelIndicator
            r4.setVisibility(r1)
            com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment$c r4 = r3.f17028a
            if (r4 == 0) goto L8a
            r4.onRecordStart(r3)
        L8a:
            r3.f17032e = r1
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.chat.fragment.VoiceRecordFragment.Z1(android.view.View, android.view.MotionEvent):boolean");
    }

    private void a2() {
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.RECORD_AUDIO").subscribe(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_voice_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        X1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof c) {
            this.f17028a = (c) activity;
        }
    }
}
