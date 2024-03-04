package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FirstChargeGuideFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FirstChargeGuideFragment f19229b;

    /* renamed from: c  reason: collision with root package name */
    private View f19230c;

    /* renamed from: d  reason: collision with root package name */
    private View f19231d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FirstChargeGuideFragment f19232a;

        a(FirstChargeGuideFragment firstChargeGuideFragment) {
            this.f19232a = firstChargeGuideFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19232a.gotoCharge(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FirstChargeGuideFragment f19234a;

        b(FirstChargeGuideFragment firstChargeGuideFragment) {
            this.f19234a = firstChargeGuideFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19234a.close(view);
        }
    }

    @UiThread
    public FirstChargeGuideFragment_ViewBinding(FirstChargeGuideFragment firstChargeGuideFragment, View view) {
        this.f19229b = firstChargeGuideFragment;
        firstChargeGuideFragment.mRecyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        firstChargeGuideFragment.mTextViewInfo = (TextView) butterknife.internal.c.d(view, R.id.info, "field 'mTextViewInfo'", TextView.class);
        firstChargeGuideFragment.mContainer = butterknife.internal.c.c(view, R.id.container, "field 'mContainer'");
        View c10 = butterknife.internal.c.c(view, R.id.go_to_recharge, "method 'gotoCharge'");
        this.f19230c = c10;
        c10.setOnClickListener(new a(firstChargeGuideFragment));
        View c11 = butterknife.internal.c.c(view, R.id.close, "method 'close'");
        this.f19231d = c11;
        c11.setOnClickListener(new b(firstChargeGuideFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FirstChargeGuideFragment firstChargeGuideFragment = this.f19229b;
        if (firstChargeGuideFragment != null) {
            this.f19229b = null;
            firstChargeGuideFragment.mRecyclerView = null;
            firstChargeGuideFragment.mTextViewInfo = null;
            firstChargeGuideFragment.mContainer = null;
            this.f19230c.setOnClickListener(null);
            this.f19230c = null;
            this.f19231d.setOnClickListener(null);
            this.f19231d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
