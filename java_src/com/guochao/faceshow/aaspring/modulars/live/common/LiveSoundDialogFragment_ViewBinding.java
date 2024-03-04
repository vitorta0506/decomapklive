package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.rd.PageIndicatorView;
/* loaded from: classes3.dex */
public class LiveSoundDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveSoundDialogFragment f18825b;

    @UiThread
    public LiveSoundDialogFragment_ViewBinding(LiveSoundDialogFragment liveSoundDialogFragment, View view) {
        this.f18825b = liveSoundDialogFragment;
        liveSoundDialogFragment.mPager = (ViewPager) butterknife.internal.c.d(view, R.id.view_pager, "field 'mPager'", ViewPager.class);
        liveSoundDialogFragment.modelTitle = (TextView) butterknife.internal.c.d(view, R.id.model_title, "field 'modelTitle'", TextView.class);
        liveSoundDialogFragment.pageIndicatorView = (PageIndicatorView) butterknife.internal.c.d(view, R.id.pageIndicatorView, "field 'pageIndicatorView'", PageIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveSoundDialogFragment liveSoundDialogFragment = this.f18825b;
        if (liveSoundDialogFragment != null) {
            this.f18825b = null;
            liveSoundDialogFragment.mPager = null;
            liveSoundDialogFragment.modelTitle = null;
            liveSoundDialogFragment.pageIndicatorView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
