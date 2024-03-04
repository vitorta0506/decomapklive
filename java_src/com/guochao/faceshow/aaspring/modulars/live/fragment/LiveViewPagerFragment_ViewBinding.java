package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public class LiveViewPagerFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveViewPagerFragment f19311b;

    @UiThread
    public LiveViewPagerFragment_ViewBinding(LiveViewPagerFragment liveViewPagerFragment, View view) {
        this.f19311b = liveViewPagerFragment;
        liveViewPagerFragment.mTabLayout = (TabLayout) butterknife.internal.c.d(view, R.id.tabs, "field 'mTabLayout'", TabLayout.class);
        liveViewPagerFragment.myRoomsBtn = butterknife.internal.c.c(view, R.id.my_rooms, "field 'myRoomsBtn'");
        liveViewPagerFragment.svgaImageViewV2 = (SvgaImageViewV2) butterknife.internal.c.d(view, R.id.svga, "field 'svgaImageViewV2'", SvgaImageViewV2.class);
        liveViewPagerFragment.myRoomTips = butterknife.internal.c.c(view, R.id.user_guide_my_room, "field 'myRoomTips'");
        liveViewPagerFragment.firstRecharge = (SvgaImageViewV2) butterknife.internal.c.d(view, R.id.first_recharge, "field 'firstRecharge'", SvgaImageViewV2.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveViewPagerFragment liveViewPagerFragment = this.f19311b;
        if (liveViewPagerFragment != null) {
            this.f19311b = null;
            liveViewPagerFragment.mTabLayout = null;
            liveViewPagerFragment.myRoomsBtn = null;
            liveViewPagerFragment.svgaImageViewV2 = null;
            liveViewPagerFragment.myRoomTips = null;
            liveViewPagerFragment.firstRecharge = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
