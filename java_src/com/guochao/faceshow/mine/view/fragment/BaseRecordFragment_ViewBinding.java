package com.guochao.faceshow.mine.view.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes4.dex */
public class BaseRecordFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseRecordFragment f25979b;

    @UiThread
    public BaseRecordFragment_ViewBinding(BaseRecordFragment baseRecordFragment, View view) {
        this.f25979b = baseRecordFragment;
        baseRecordFragment.tvTime = (TextView) butterknife.internal.c.d(view, R.id.tvTime, "field 'tvTime'", TextView.class);
        baseRecordFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recyclerView, "field 'recyclerView'", RecyclerView.class);
        baseRecordFragment.tvIncome = (TextView) butterknife.internal.c.d(view, R.id.tvIncome, "field 'tvIncome'", TextView.class);
        baseRecordFragment.tvSpending = (TextView) butterknife.internal.c.d(view, R.id.tvSpending, "field 'tvSpending'", TextView.class);
        baseRecordFragment.ivDateImg = (ImageView) butterknife.internal.c.d(view, R.id.ivDateImg, "field 'ivDateImg'", ImageView.class);
        baseRecordFragment.lvTransactionRecord = (RecyclerView) butterknife.internal.c.d(view, R.id.lvTransactionRecord, "field 'lvTransactionRecord'", RecyclerView.class);
        baseRecordFragment.ivEmptyImg = (ImageView) butterknife.internal.c.d(view, R.id.ivEmptyImg, "field 'ivEmptyImg'", ImageView.class);
        baseRecordFragment.rlEmptyViewLayout = (RelativeLayout) butterknife.internal.c.d(view, R.id.rlEmptyViewLayout, "field 'rlEmptyViewLayout'", RelativeLayout.class);
        baseRecordFragment.llRootLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.llRootLayout, "field 'llRootLayout'", LinearLayout.class);
        baseRecordFragment.refreshLayout = (TwinklingRefreshLayout) butterknife.internal.c.d(view, R.id.refreshLayout, "field 'refreshLayout'", TwinklingRefreshLayout.class);
        baseRecordFragment.spaceWeight = butterknife.internal.c.c(view, R.id.space_weight, "field 'spaceWeight'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseRecordFragment baseRecordFragment = this.f25979b;
        if (baseRecordFragment != null) {
            this.f25979b = null;
            baseRecordFragment.tvTime = null;
            baseRecordFragment.recyclerView = null;
            baseRecordFragment.tvIncome = null;
            baseRecordFragment.tvSpending = null;
            baseRecordFragment.ivDateImg = null;
            baseRecordFragment.lvTransactionRecord = null;
            baseRecordFragment.ivEmptyImg = null;
            baseRecordFragment.rlEmptyViewLayout = null;
            baseRecordFragment.llRootLayout = null;
            baseRecordFragment.refreshLayout = null;
            baseRecordFragment.spaceWeight = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
