package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.NewRecordBeans;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.RecordUtils;
/* loaded from: classes3.dex */
public class RecordViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private Context f21633a;
    @BindView
    TextView recordDate;
    @BindView
    ImageView recordIcon;
    @BindView
    TextView recordInfo;
    @BindView
    TextView recordMoney;
    @BindView
    TextView tvRecordOrderNo;
    @BindView
    TextView tvRefund;

    public RecordViewHolder(View view) {
        super(view);
        ButterKnife.c(this, view);
    }

    public void c(Context context, int i9, NewRecordBeans.NewRecordBean newRecordBean, int i10) {
        this.f21633a = context;
        this.recordIcon.setImageResource(RecordUtils.getItemResource(context, newRecordBean.getParentType(), newRecordBean.getDealType()));
        this.recordInfo.setText(RecordUtils.getRecordInfo(this.f21633a, newRecordBean));
        this.tvRefund.setVisibility(RecordUtils.showTopUpRefund(newRecordBean) ? 0 : 8);
        if (newRecordBean.getCreateTimeLong() != 0) {
            this.recordDate.setText(EditTextUtils.convertNormalNumberToArabicNumber(DateUtils.timeStamp2Date(newRecordBean.getCreateTimeLong())));
        } else {
            this.recordDate.setText("");
        }
        if (Float.parseFloat(newRecordBean.getMoney()) >= 0.0f) {
            TextView textView = this.recordMoney;
            textView.setText("+" + newRecordBean.getMoney());
            this.recordMoney.setTextColor(ContextCompat.getColor(this.f21633a, R.color.color_ugc_app_primary));
            return;
        }
        this.recordMoney.setText(newRecordBean.getMoney());
        this.recordMoney.setTextColor(Color.parseColor("#222222"));
    }
}
