package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class LiveBroadCasterInfoFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LiveBroadCasterInfoFragment f18451d;

    /* renamed from: e  reason: collision with root package name */
    private View f18452e;

    /* renamed from: f  reason: collision with root package name */
    private View f18453f;

    /* renamed from: g  reason: collision with root package name */
    private View f18454g;

    /* renamed from: h  reason: collision with root package name */
    private View f18455h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveBroadCasterInfoFragment f18456a;

        a(LiveBroadCasterInfoFragment liveBroadCasterInfoFragment) {
            this.f18456a = liveBroadCasterInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18456a.toUserHome(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveBroadCasterInfoFragment f18458a;

        b(LiveBroadCasterInfoFragment liveBroadCasterInfoFragment) {
            this.f18458a = liveBroadCasterInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18458a.toUserHome(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveBroadCasterInfoFragment f18460a;

        c(LiveBroadCasterInfoFragment liveBroadCasterInfoFragment) {
            this.f18460a = liveBroadCasterInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18460a.backToHome(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveBroadCasterInfoFragment f18462a;

        d(LiveBroadCasterInfoFragment liveBroadCasterInfoFragment) {
            this.f18462a = liveBroadCasterInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18462a.close(view);
        }
    }

    @UiThread
    public LiveBroadCasterInfoFragment_ViewBinding(LiveBroadCasterInfoFragment liveBroadCasterInfoFragment, View view) {
        super(liveBroadCasterInfoFragment, view);
        this.f18451d = liveBroadCasterInfoFragment;
        liveBroadCasterInfoFragment.mTextViewLiveCount = (TextView) butterknife.internal.c.d(view, R.id.live_numbers, "field 'mTextViewLiveCount'", TextView.class);
        liveBroadCasterInfoFragment.mTextViewLiveDuration = (TextView) butterknife.internal.c.d(view, R.id.live_duration, "field 'mTextViewLiveDuration'", TextView.class);
        liveBroadCasterInfoFragment.mTextViewLiveTotalPeople = (TextView) butterknife.internal.c.d(view, R.id.live_total_people, "field 'mTextViewLiveTotalPeople'", TextView.class);
        liveBroadCasterInfoFragment.mTextViewFansAdded = (TextView) butterknife.internal.c.d(view, R.id.fans_added, "field 'mTextViewFansAdded'", TextView.class);
        liveBroadCasterInfoFragment.mTextViewFCoinAdded = (TextView) butterknife.internal.c.d(view, R.id.fcoin_added, "field 'mTextViewFCoinAdded'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.user_name, "field 'mTextViewUserName' and method 'toUserHome'");
        liveBroadCasterInfoFragment.mTextViewUserName = (TextView) butterknife.internal.c.a(c10, R.id.user_name, "field 'mTextViewUserName'", TextView.class);
        this.f18452e = c10;
        c10.setOnClickListener(new a(liveBroadCasterInfoFragment));
        liveBroadCasterInfoFragment.mTextViewTitle = (TextView) butterknife.internal.c.d(view, R.id.title, "field 'mTextViewTitle'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'mAvatarView' and method 'toUserHome'");
        liveBroadCasterInfoFragment.mAvatarView = (HeadPortraitView) butterknife.internal.c.a(c11, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        this.f18453f = c11;
        c11.setOnClickListener(new b(liveBroadCasterInfoFragment));
        liveBroadCasterInfoFragment.mImageViewBackground = (ImageView) butterknife.internal.c.d(view, R.id.background, "field 'mImageViewBackground'", ImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.back_button, "field 'mBackButton' and method 'backToHome'");
        liveBroadCasterInfoFragment.mBackButton = c12;
        this.f18454g = c12;
        c12.setOnClickListener(new c(liveBroadCasterInfoFragment));
        View c13 = butterknife.internal.c.c(view, R.id.close, "field 'mCloseView' and method 'close'");
        liveBroadCasterInfoFragment.mCloseView = c13;
        this.f18455h = c13;
        c13.setOnClickListener(new d(liveBroadCasterInfoFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LiveBroadCasterInfoFragment liveBroadCasterInfoFragment = this.f18451d;
        if (liveBroadCasterInfoFragment != null) {
            this.f18451d = null;
            liveBroadCasterInfoFragment.mTextViewLiveCount = null;
            liveBroadCasterInfoFragment.mTextViewLiveDuration = null;
            liveBroadCasterInfoFragment.mTextViewLiveTotalPeople = null;
            liveBroadCasterInfoFragment.mTextViewFansAdded = null;
            liveBroadCasterInfoFragment.mTextViewFCoinAdded = null;
            liveBroadCasterInfoFragment.mTextViewUserName = null;
            liveBroadCasterInfoFragment.mTextViewTitle = null;
            liveBroadCasterInfoFragment.mAvatarView = null;
            liveBroadCasterInfoFragment.mImageViewBackground = null;
            liveBroadCasterInfoFragment.mBackButton = null;
            liveBroadCasterInfoFragment.mCloseView = null;
            this.f18452e.setOnClickListener(null);
            this.f18452e = null;
            this.f18453f.setOnClickListener(null);
            this.f18453f = null;
            this.f18454g.setOnClickListener(null);
            this.f18454g = null;
            this.f18455h.setOnClickListener(null);
            this.f18455h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
