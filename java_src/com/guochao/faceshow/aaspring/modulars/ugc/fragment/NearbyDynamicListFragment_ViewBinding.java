package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class NearbyDynamicListFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private NearbyDynamicListFragment f22765b;

    /* renamed from: c  reason: collision with root package name */
    private View f22766c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NearbyDynamicListFragment f22767a;

        a(NearbyDynamicListFragment nearbyDynamicListFragment) {
            this.f22767a = nearbyDynamicListFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22767a.requestPermission(view);
        }
    }

    @UiThread
    public NearbyDynamicListFragment_ViewBinding(NearbyDynamicListFragment nearbyDynamicListFragment, View view) {
        this.f22765b = nearbyDynamicListFragment;
        View c10 = butterknife.internal.c.c(view, R.id.location_tips_view, "field 'mView' and method 'requestPermission'");
        nearbyDynamicListFragment.mView = c10;
        this.f22766c = c10;
        c10.setOnClickListener(new a(nearbyDynamicListFragment));
        nearbyDynamicListFragment.mSeekBar = (SeekBar) butterknife.internal.c.d(view, R.id.seekbar, "field 'mSeekBar'", SeekBar.class);
        nearbyDynamicListFragment.mViewDistanceArea = butterknife.internal.c.c(view, R.id.distance_area, "field 'mViewDistanceArea'");
        nearbyDynamicListFragment.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.icon, "field 'mImageView'", ImageView.class);
        nearbyDynamicListFragment.disTV = (TextView) butterknife.internal.c.d(view, R.id.disTV, "field 'disTV'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NearbyDynamicListFragment nearbyDynamicListFragment = this.f22765b;
        if (nearbyDynamicListFragment != null) {
            this.f22765b = null;
            nearbyDynamicListFragment.mView = null;
            nearbyDynamicListFragment.mSeekBar = null;
            nearbyDynamicListFragment.mViewDistanceArea = null;
            nearbyDynamicListFragment.mImageView = null;
            nearbyDynamicListFragment.disTV = null;
            this.f22766c.setOnClickListener(null);
            this.f22766c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
