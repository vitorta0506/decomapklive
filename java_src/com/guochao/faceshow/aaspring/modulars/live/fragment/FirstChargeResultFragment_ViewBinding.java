package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FirstChargeResultFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FirstChargeResultFragment f19237b;

    /* renamed from: c  reason: collision with root package name */
    private View f19238c;

    /* renamed from: d  reason: collision with root package name */
    private View f19239d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FirstChargeResultFragment f19240a;

        a(FirstChargeResultFragment firstChargeResultFragment) {
            this.f19240a = firstChargeResultFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19240a.close(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FirstChargeResultFragment f19242a;

        b(FirstChargeResultFragment firstChargeResultFragment) {
            this.f19242a = firstChargeResultFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19242a.close(view);
        }
    }

    @UiThread
    public FirstChargeResultFragment_ViewBinding(FirstChargeResultFragment firstChargeResultFragment, View view) {
        this.f19237b = firstChargeResultFragment;
        firstChargeResultFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        firstChargeResultFragment.mContainer = butterknife.internal.c.c(view, R.id.container, "field 'mContainer'");
        View c10 = butterknife.internal.c.c(view, R.id.close, "method 'close'");
        this.f19238c = c10;
        c10.setOnClickListener(new a(firstChargeResultFragment));
        View c11 = butterknife.internal.c.c(view, R.id.go_to_recharge, "method 'close'");
        this.f19239d = c11;
        c11.setOnClickListener(new b(firstChargeResultFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FirstChargeResultFragment firstChargeResultFragment = this.f19237b;
        if (firstChargeResultFragment != null) {
            this.f19237b = null;
            firstChargeResultFragment.mRecyclerView = null;
            firstChargeResultFragment.mContainer = null;
            this.f19238c.setOnClickListener(null);
            this.f19238c = null;
            this.f19239d.setOnClickListener(null);
            this.f19239d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
