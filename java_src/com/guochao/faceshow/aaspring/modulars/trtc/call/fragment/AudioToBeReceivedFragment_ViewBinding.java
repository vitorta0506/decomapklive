package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class AudioToBeReceivedFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AudioToBeReceivedFragment f21989b;

    /* renamed from: c  reason: collision with root package name */
    private View f21990c;

    /* renamed from: d  reason: collision with root package name */
    private View f21991d;

    /* renamed from: e  reason: collision with root package name */
    private View f21992e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioToBeReceivedFragment f21993a;

        a(AudioToBeReceivedFragment audioToBeReceivedFragment) {
            this.f21993a = audioToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21993a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioToBeReceivedFragment f21995a;

        b(AudioToBeReceivedFragment audioToBeReceivedFragment) {
            this.f21995a = audioToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21995a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioToBeReceivedFragment f21997a;

        c(AudioToBeReceivedFragment audioToBeReceivedFragment) {
            this.f21997a = audioToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21997a.onViewClicked(view);
        }
    }

    @UiThread
    public AudioToBeReceivedFragment_ViewBinding(AudioToBeReceivedFragment audioToBeReceivedFragment, View view) {
        this.f21989b = audioToBeReceivedFragment;
        audioToBeReceivedFragment.connectionStatus = (TextView) butterknife.internal.c.d(view, R.id.connection_status, "field 'connectionStatus'", TextView.class);
        audioToBeReceivedFragment.userCenterAgeLevel = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'userCenterAgeLevel'");
        View c10 = butterknife.internal.c.c(view, R.id.user_avatar, "field 'userAvatarView' and method 'onViewClicked'");
        audioToBeReceivedFragment.userAvatarView = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.user_avatar, "field 'userAvatarView'", HeadPortraitView.class);
        this.f21990c = c10;
        c10.setOnClickListener(new a(audioToBeReceivedFragment));
        audioToBeReceivedFragment.blurImage = (ImageView) butterknife.internal.c.d(view, R.id.blur_image, "field 'blurImage'", ImageView.class);
        audioToBeReceivedFragment.bgBlurImage = butterknife.internal.c.c(view, R.id.bg_blur_image, "field 'bgBlurImage'");
        View c11 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        audioToBeReceivedFragment.userName = (TextView) butterknife.internal.c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f21991d = c11;
        c11.setOnClickListener(new b(audioToBeReceivedFragment));
        View c12 = butterknife.internal.c.c(view, R.id.hang_up_icon, "field 'hangUpIcon' and method 'onViewClicked'");
        audioToBeReceivedFragment.hangUpIcon = c12;
        this.f21992e = c12;
        c12.setOnClickListener(new c(audioToBeReceivedFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AudioToBeReceivedFragment audioToBeReceivedFragment = this.f21989b;
        if (audioToBeReceivedFragment != null) {
            this.f21989b = null;
            audioToBeReceivedFragment.connectionStatus = null;
            audioToBeReceivedFragment.userCenterAgeLevel = null;
            audioToBeReceivedFragment.userAvatarView = null;
            audioToBeReceivedFragment.blurImage = null;
            audioToBeReceivedFragment.bgBlurImage = null;
            audioToBeReceivedFragment.userName = null;
            audioToBeReceivedFragment.hangUpIcon = null;
            this.f21990c.setOnClickListener(null);
            this.f21990c = null;
            this.f21991d.setOnClickListener(null);
            this.f21991d = null;
            this.f21992e.setOnClickListener(null);
            this.f21992e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
