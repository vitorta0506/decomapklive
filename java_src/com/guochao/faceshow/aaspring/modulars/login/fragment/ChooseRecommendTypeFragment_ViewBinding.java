package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ChooseRecommendTypeFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ChooseRecommendTypeFragment f20451b;

    /* renamed from: c  reason: collision with root package name */
    private View f20452c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooseRecommendTypeFragment f20453a;

        a(ChooseRecommendTypeFragment chooseRecommendTypeFragment) {
            this.f20453a = chooseRecommendTypeFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20453a.next(view);
        }
    }

    @UiThread
    public ChooseRecommendTypeFragment_ViewBinding(ChooseRecommendTypeFragment chooseRecommendTypeFragment, View view) {
        this.f20451b = chooseRecommendTypeFragment;
        chooseRecommendTypeFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        chooseRecommendTypeFragment.mNext = (TextView) butterknife.internal.c.d(view, R.id.next, "field 'mNext'", TextView.class);
        chooseRecommendTypeFragment.mImageView = (ImageView) butterknife.internal.c.d(view, R.id.anim, "field 'mImageView'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.next_area, "method 'next'");
        this.f20452c = c10;
        c10.setOnClickListener(new a(chooseRecommendTypeFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChooseRecommendTypeFragment chooseRecommendTypeFragment = this.f20451b;
        if (chooseRecommendTypeFragment != null) {
            this.f20451b = null;
            chooseRecommendTypeFragment.mRecyclerView = null;
            chooseRecommendTypeFragment.mNext = null;
            chooseRecommendTypeFragment.mImageView = null;
            this.f20452c.setOnClickListener(null);
            this.f20452c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
