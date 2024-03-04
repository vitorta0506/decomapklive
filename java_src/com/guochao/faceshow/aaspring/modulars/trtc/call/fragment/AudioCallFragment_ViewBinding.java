package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
/* loaded from: classes3.dex */
public class AudioCallFragment_ViewBinding extends BaseCallFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private AudioCallFragment f21968c;

    /* renamed from: d  reason: collision with root package name */
    private View f21969d;

    /* renamed from: e  reason: collision with root package name */
    private View f21970e;

    /* renamed from: f  reason: collision with root package name */
    private View f21971f;

    /* renamed from: g  reason: collision with root package name */
    private View f21972g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioCallFragment f21973a;

        a(AudioCallFragment audioCallFragment) {
            this.f21973a = audioCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21973a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioCallFragment f21975a;

        b(AudioCallFragment audioCallFragment) {
            this.f21975a = audioCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21975a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioCallFragment f21977a;

        c(AudioCallFragment audioCallFragment) {
            this.f21977a = audioCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21977a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioCallFragment f21979a;

        d(AudioCallFragment audioCallFragment) {
            this.f21979a = audioCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21979a.onViewClicked(view);
        }
    }

    @UiThread
    public AudioCallFragment_ViewBinding(AudioCallFragment audioCallFragment, View view) {
        super(audioCallFragment, view);
        this.f21968c = audioCallFragment;
        audioCallFragment.blurImage = (ImageView) butterknife.internal.c.d(view, R.id.blur_image, "field 'blurImage'", ImageView.class);
        audioCallFragment.bgBlurImage = butterknife.internal.c.c(view, R.id.bg_blur_image, "field 'bgBlurImage'");
        audioCallFragment.userAvatarView = (HeadPortraitView) butterknife.internal.c.d(view, R.id.user_avatar, "field 'userAvatarView'", HeadPortraitView.class);
        audioCallFragment.userName = (TextView) butterknife.internal.c.d(view, R.id.user_name, "field 'userName'", TextView.class);
        audioCallFragment.userCenterAgeLevel = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'userCenterAgeLevel'");
        audioCallFragment.callTime = (TextView) butterknife.internal.c.d(view, R.id.call_time, "field 'callTime'", TextView.class);
        audioCallFragment.trtcSwitchCamera = butterknife.internal.c.c(view, R.id.trtc_switch_camera, "field 'trtcSwitchCamera'");
        View c10 = butterknife.internal.c.c(view, R.id.trtc_mic, "field 'trtcMic' and method 'onViewClicked'");
        audioCallFragment.trtcMic = c10;
        this.f21969d = c10;
        c10.setOnClickListener(new a(audioCallFragment));
        audioCallFragment.scrollLayout = (LiveScrollToClearScreenView) butterknife.internal.c.d(view, R.id.scroll_layout, "field 'scrollLayout'", LiveScrollToClearScreenView.class);
        View c11 = butterknife.internal.c.c(view, R.id.trtc_hang_up, "method 'onViewClicked'");
        this.f21970e = c11;
        c11.setOnClickListener(new b(audioCallFragment));
        View c12 = butterknife.internal.c.c(view, R.id.trtc_voice, "method 'onViewClicked'");
        this.f21971f = c12;
        c12.setOnClickListener(new c(audioCallFragment));
        View c13 = butterknife.internal.c.c(view, R.id.trtc_report, "method 'onViewClicked'");
        this.f21972g = c13;
        c13.setOnClickListener(new d(audioCallFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        AudioCallFragment audioCallFragment = this.f21968c;
        if (audioCallFragment != null) {
            this.f21968c = null;
            audioCallFragment.blurImage = null;
            audioCallFragment.bgBlurImage = null;
            audioCallFragment.userAvatarView = null;
            audioCallFragment.userName = null;
            audioCallFragment.userCenterAgeLevel = null;
            audioCallFragment.callTime = null;
            audioCallFragment.trtcSwitchCamera = null;
            audioCallFragment.trtcMic = null;
            audioCallFragment.scrollLayout = null;
            this.f21969d.setOnClickListener(null);
            this.f21969d = null;
            this.f21970e.setOnClickListener(null);
            this.f21970e = null;
            this.f21971f.setOnClickListener(null);
            this.f21971f = null;
            this.f21972g.setOnClickListener(null);
            this.f21972g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
