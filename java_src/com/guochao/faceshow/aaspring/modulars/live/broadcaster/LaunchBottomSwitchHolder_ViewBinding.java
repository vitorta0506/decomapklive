package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.view.AlwaysCenterLayout;
/* loaded from: classes3.dex */
public class LaunchBottomSwitchHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LaunchBottomSwitchHolder f18384b;

    /* renamed from: c  reason: collision with root package name */
    private View f18385c;

    /* renamed from: d  reason: collision with root package name */
    private View f18386d;

    /* renamed from: e  reason: collision with root package name */
    private View f18387e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchBottomSwitchHolder f18388a;

        a(LaunchBottomSwitchHolder launchBottomSwitchHolder) {
            this.f18388a = launchBottomSwitchHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18388a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchBottomSwitchHolder f18390a;

        b(LaunchBottomSwitchHolder launchBottomSwitchHolder) {
            this.f18390a = launchBottomSwitchHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18390a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchBottomSwitchHolder f18392a;

        c(LaunchBottomSwitchHolder launchBottomSwitchHolder) {
            this.f18392a = launchBottomSwitchHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18392a.onViewClicked(view);
        }
    }

    @UiThread
    public LaunchBottomSwitchHolder_ViewBinding(LaunchBottomSwitchHolder launchBottomSwitchHolder, View view) {
        this.f18384b = launchBottomSwitchHolder;
        launchBottomSwitchHolder.liveBottomStart = (TextView) butterknife.internal.c.d(view, R.id.live_bottom_start, "field 'liveBottomStart'", TextView.class);
        launchBottomSwitchHolder.liveBottomMiddle = (TextView) butterknife.internal.c.d(view, R.id.live_bottom_middle, "field 'liveBottomMiddle'", TextView.class);
        launchBottomSwitchHolder.indicatorBottomMiddle = butterknife.internal.c.c(view, R.id.indicator_bottom_middle, "field 'indicatorBottomMiddle'");
        launchBottomSwitchHolder.indicatorBottomStart = butterknife.internal.c.c(view, R.id.indicator_bottom_start, "field 'indicatorBottomStart'");
        launchBottomSwitchHolder.indicatorBottomEnd = butterknife.internal.c.c(view, R.id.indicator_bottom_end, "field 'indicatorBottomEnd'");
        launchBottomSwitchHolder.liveBottomEnd = (TextView) butterknife.internal.c.d(view, R.id.live_bottom_end, "field 'liveBottomEnd'", TextView.class);
        launchBottomSwitchHolder.bottomSwitchLay = (AlwaysCenterLayout) butterknife.internal.c.d(view, R.id.bottom_switch_lay, "field 'bottomSwitchLay'", AlwaysCenterLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.bottom_start_lay, "method 'onViewClicked'");
        this.f18385c = c10;
        c10.setOnClickListener(new a(launchBottomSwitchHolder));
        View c11 = butterknife.internal.c.c(view, R.id.bottom_end_lay, "method 'onViewClicked'");
        this.f18386d = c11;
        c11.setOnClickListener(new b(launchBottomSwitchHolder));
        View c12 = butterknife.internal.c.c(view, R.id.bottom_middle_lay, "method 'onViewClicked'");
        this.f18387e = c12;
        c12.setOnClickListener(new c(launchBottomSwitchHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LaunchBottomSwitchHolder launchBottomSwitchHolder = this.f18384b;
        if (launchBottomSwitchHolder != null) {
            this.f18384b = null;
            launchBottomSwitchHolder.liveBottomStart = null;
            launchBottomSwitchHolder.liveBottomMiddle = null;
            launchBottomSwitchHolder.indicatorBottomMiddle = null;
            launchBottomSwitchHolder.indicatorBottomStart = null;
            launchBottomSwitchHolder.indicatorBottomEnd = null;
            launchBottomSwitchHolder.liveBottomEnd = null;
            launchBottomSwitchHolder.bottomSwitchLay = null;
            this.f18385c.setOnClickListener(null);
            this.f18385c = null;
            this.f18386d.setOnClickListener(null);
            this.f18386d = null;
            this.f18387e.setOnClickListener(null);
            this.f18387e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
