package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
/* loaded from: classes3.dex */
public class RecommendUserFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RecommendUserFragment f20491b;

    /* renamed from: c  reason: collision with root package name */
    private View f20492c;

    /* renamed from: d  reason: collision with root package name */
    private View f20493d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendUserFragment f20494a;

        a(RecommendUserFragment recommendUserFragment) {
            this.f20494a = recommendUserFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20494a.enter(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecommendUserFragment f20496a;

        b(RecommendUserFragment recommendUserFragment) {
            this.f20496a = recommendUserFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20496a.skip(view);
        }
    }

    @UiThread
    public RecommendUserFragment_ViewBinding(RecommendUserFragment recommendUserFragment, View view) {
        this.f20491b = recommendUserFragment;
        recommendUserFragment.mPlanetView = (SoulPlanetsView) butterknife.internal.c.d(view, R.id.planet, "field 'mPlanetView'", SoulPlanetsView.class);
        recommendUserFragment.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.anim, "field 'mImageView'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.next_area, "method 'enter'");
        this.f20492c = c10;
        c10.setOnClickListener(new a(recommendUserFragment));
        View c11 = butterknife.internal.c.c(view, R.id.skip, "method 'skip'");
        this.f20493d = c11;
        c11.setOnClickListener(new b(recommendUserFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RecommendUserFragment recommendUserFragment = this.f20491b;
        if (recommendUserFragment != null) {
            this.f20491b = null;
            recommendUserFragment.mPlanetView = null;
            recommendUserFragment.mImageView = null;
            this.f20492c.setOnClickListener(null);
            this.f20492c = null;
            this.f20493d.setOnClickListener(null);
            this.f20493d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
