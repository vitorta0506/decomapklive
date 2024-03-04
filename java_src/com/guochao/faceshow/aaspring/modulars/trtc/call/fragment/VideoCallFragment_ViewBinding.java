package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
/* loaded from: classes3.dex */
public class VideoCallFragment_ViewBinding extends BaseCallFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private VideoCallFragment f22028c;

    /* renamed from: d  reason: collision with root package name */
    private View f22029d;

    /* renamed from: e  reason: collision with root package name */
    private View f22030e;

    /* renamed from: f  reason: collision with root package name */
    private View f22031f;

    /* renamed from: g  reason: collision with root package name */
    private View f22032g;

    /* renamed from: h  reason: collision with root package name */
    private View f22033h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCallFragment f22034a;

        a(VideoCallFragment videoCallFragment) {
            this.f22034a = videoCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22034a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCallFragment f22036a;

        b(VideoCallFragment videoCallFragment) {
            this.f22036a = videoCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22036a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCallFragment f22038a;

        c(VideoCallFragment videoCallFragment) {
            this.f22038a = videoCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22038a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCallFragment f22040a;

        d(VideoCallFragment videoCallFragment) {
            this.f22040a = videoCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22040a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoCallFragment f22042a;

        e(VideoCallFragment videoCallFragment) {
            this.f22042a = videoCallFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22042a.onViewClicked(view);
        }
    }

    @UiThread
    public VideoCallFragment_ViewBinding(VideoCallFragment videoCallFragment, View view) {
        super(videoCallFragment, view);
        this.f22028c = videoCallFragment;
        videoCallFragment.callTime = (TextView) butterknife.internal.c.d(view, R.id.call_time, "field 'callTime'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.trtc_mic, "field 'trtcMic' and method 'onViewClicked'");
        videoCallFragment.trtcMic = c10;
        this.f22029d = c10;
        c10.setOnClickListener(new a(videoCallFragment));
        videoCallFragment.scrollLayout = (LiveScrollToClearScreenView) butterknife.internal.c.d(view, R.id.scroll_layout, "field 'scrollLayout'", LiveScrollToClearScreenView.class);
        View c11 = butterknife.internal.c.c(view, R.id.trtc_hang_up, "method 'onViewClicked'");
        this.f22030e = c11;
        c11.setOnClickListener(new b(videoCallFragment));
        View c12 = butterknife.internal.c.c(view, R.id.trtc_voice, "method 'onViewClicked'");
        this.f22031f = c12;
        c12.setOnClickListener(new c(videoCallFragment));
        View c13 = butterknife.internal.c.c(view, R.id.trtc_report, "method 'onViewClicked'");
        this.f22032g = c13;
        c13.setOnClickListener(new d(videoCallFragment));
        View c14 = butterknife.internal.c.c(view, R.id.trtc_switch_camera, "method 'onViewClicked'");
        this.f22033h = c14;
        c14.setOnClickListener(new e(videoCallFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.call.fragment.BaseCallFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VideoCallFragment videoCallFragment = this.f22028c;
        if (videoCallFragment != null) {
            this.f22028c = null;
            videoCallFragment.callTime = null;
            videoCallFragment.trtcMic = null;
            videoCallFragment.scrollLayout = null;
            this.f22029d.setOnClickListener(null);
            this.f22029d = null;
            this.f22030e.setOnClickListener(null);
            this.f22030e = null;
            this.f22031f.setOnClickListener(null);
            this.f22031f = null;
            this.f22032g.setOnClickListener(null);
            this.f22032g = null;
            this.f22033h.setOnClickListener(null);
            this.f22033h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
