package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class VideoToBeReceivedFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private VideoToBeReceivedFragment f22052b;

    /* renamed from: c  reason: collision with root package name */
    private View f22053c;

    /* renamed from: d  reason: collision with root package name */
    private View f22054d;

    /* renamed from: e  reason: collision with root package name */
    private View f22055e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoToBeReceivedFragment f22056a;

        a(VideoToBeReceivedFragment videoToBeReceivedFragment) {
            this.f22056a = videoToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22056a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoToBeReceivedFragment f22058a;

        b(VideoToBeReceivedFragment videoToBeReceivedFragment) {
            this.f22058a = videoToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22058a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoToBeReceivedFragment f22060a;

        c(VideoToBeReceivedFragment videoToBeReceivedFragment) {
            this.f22060a = videoToBeReceivedFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22060a.onViewClicked(view);
        }
    }

    @UiThread
    public VideoToBeReceivedFragment_ViewBinding(VideoToBeReceivedFragment videoToBeReceivedFragment, View view) {
        this.f22052b = videoToBeReceivedFragment;
        View c10 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        videoToBeReceivedFragment.userName = (TextView) butterknife.internal.c.a(c10, R.id.user_name, "field 'userName'", TextView.class);
        this.f22053c = c10;
        c10.setOnClickListener(new a(videoToBeReceivedFragment));
        View c11 = butterknife.internal.c.c(view, R.id.hang_up_icon, "field 'hangUpIcon' and method 'onViewClicked'");
        videoToBeReceivedFragment.hangUpIcon = c11;
        this.f22054d = c11;
        c11.setOnClickListener(new b(videoToBeReceivedFragment));
        videoToBeReceivedFragment.userCenterAgeLevel = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'userCenterAgeLevel'");
        videoToBeReceivedFragment.userAvatarView = (HeadPortraitView) butterknife.internal.c.d(view, R.id.user_avatar, "field 'userAvatarView'", HeadPortraitView.class);
        videoToBeReceivedFragment.userInfo = butterknife.internal.c.c(view, R.id.user_info, "field 'userInfo'");
        View c12 = butterknife.internal.c.c(view, R.id.beauty_icon, "method 'onViewClicked'");
        this.f22055e = c12;
        c12.setOnClickListener(new c(videoToBeReceivedFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoToBeReceivedFragment videoToBeReceivedFragment = this.f22052b;
        if (videoToBeReceivedFragment != null) {
            this.f22052b = null;
            videoToBeReceivedFragment.userName = null;
            videoToBeReceivedFragment.hangUpIcon = null;
            videoToBeReceivedFragment.userCenterAgeLevel = null;
            videoToBeReceivedFragment.userAvatarView = null;
            videoToBeReceivedFragment.userInfo = null;
            this.f22053c.setOnClickListener(null);
            this.f22053c = null;
            this.f22054d.setOnClickListener(null);
            this.f22054d = null;
            this.f22055e.setOnClickListener(null);
            this.f22055e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
