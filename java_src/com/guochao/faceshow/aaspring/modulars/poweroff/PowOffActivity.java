package com.guochao.faceshow.aaspring.modulars.poweroff;

import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.PowOffBean;
import com.guochao.faceshow.aaspring.utils.EditTextUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3.dex */
public class PowOffActivity extends BaseActivity {
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_power_off;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        String valueOf;
        String valueOf2;
        PowOffBean powOffBean = (PowOffBean) getIntent().getParcelableExtra("PowOffBean");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        String str = null;
        String str2 = null;
        int i9 = 2;
        int i10 = 2;
        for (int i11 = 0; i11 < powOffBean.getData().getEvent().size(); i11++) {
            long startTime = powOffBean.getData().getEvent().get(i11).getStartTime();
            if (i11 == 0) {
                str = simpleDateFormat.format(new Date(startTime));
                i9 = powOffBean.getData().getEvent().get(i11).getDuration();
            }
            if (i11 == 1) {
                str2 = simpleDateFormat.format(new Date(startTime));
                i10 = powOffBean.getData().getEvent().get(i11).getDuration();
            }
        }
        TextView textView = (TextView) findViewById(R.id.text_step3);
        if (q7.a.e().j()) {
            valueOf = EditTextUtils.convertNormalNumberToArabicNumber(String.valueOf(i9));
            textView.setText(MessageFormat.format(getString(R.string.power_off_step3), str, valueOf));
        } else {
            valueOf = String.valueOf(i9);
            textView.setText(String.format(getString(R.string.power_off_step3), str, valueOf));
        }
        SpanColorUtils.setSpannerString(textView, ContextCompat.getColor(this, R.color.power_off_yellow), 0, valueOf, str);
        TextView textView2 = (TextView) findViewById(R.id.text_step4);
        if (q7.a.e().j()) {
            valueOf2 = EditTextUtils.convertNormalNumberToArabicNumber(String.valueOf(i10));
            textView2.setText(MessageFormat.format(getString(R.string.power_off_step4), str2, valueOf2));
        } else {
            valueOf2 = String.valueOf(i10);
            textView2.setText(String.format(getString(R.string.power_off_step4), str2, String.valueOf(i10)));
        }
        SpanColorUtils.setSpannerString(textView2, ContextCompat.getColor(this, R.color.power_off_yellow), 0, valueOf2, str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
