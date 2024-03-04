package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class RecordViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RecordViewHolder f21634b;

    @UiThread
    public RecordViewHolder_ViewBinding(RecordViewHolder recordViewHolder, View view) {
        this.f21634b = recordViewHolder;
        recordViewHolder.recordIcon = (ImageView) c.d(view, R.id.iv_record_icon, "field 'recordIcon'", ImageView.class);
        recordViewHolder.recordInfo = (TextView) c.d(view, R.id.tv_record_info, "field 'recordInfo'", TextView.class);
        recordViewHolder.recordDate = (TextView) c.d(view, R.id.tv_item_date, "field 'recordDate'", TextView.class);
        recordViewHolder.recordMoney = (TextView) c.d(view, R.id.tv_record_money, "field 'recordMoney'", TextView.class);
        recordViewHolder.tvRecordOrderNo = (TextView) c.d(view, R.id.tv_record_order_no, "field 'tvRecordOrderNo'", TextView.class);
        recordViewHolder.tvRefund = (TextView) c.d(view, R.id.tv_refund, "field 'tvRefund'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RecordViewHolder recordViewHolder = this.f21634b;
        if (recordViewHolder != null) {
            this.f21634b = null;
            recordViewHolder.recordIcon = null;
            recordViewHolder.recordInfo = null;
            recordViewHolder.recordDate = null;
            recordViewHolder.recordMoney = null;
            recordViewHolder.tvRecordOrderNo = null;
            recordViewHolder.tvRefund = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
