package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PictureFrameFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PictureFrameFragment f21548b;

    /* renamed from: c  reason: collision with root package name */
    private View f21549c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PictureFrameFragment f21550a;

        a(PictureFrameFragment pictureFrameFragment) {
            this.f21550a = pictureFrameFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21550a.onClick(view);
        }
    }

    @UiThread
    public PictureFrameFragment_ViewBinding(PictureFrameFragment pictureFrameFragment, View view) {
        this.f21548b = pictureFrameFragment;
        View c10 = butterknife.internal.c.c(view, R.id.confirmUse, "method 'onClick'");
        this.f21549c = c10;
        c10.setOnClickListener(new a(pictureFrameFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f21548b != null) {
            this.f21548b = null;
            this.f21549c.setOnClickListener(null);
            this.f21549c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
