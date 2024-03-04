package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.views.i;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public class RecordTimeZoneTipActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private TextView f21631a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f21632b;

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_record_time_zone_tip;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle("");
        this.f21631a = (TextView) findViewById(R.id.time_zone_four1);
        this.f21632b = (TextView) findViewById(R.id.time_zone_four2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        Drawable drawable = ContextCompat.getDrawable(getActivity(), R.drawable.record_tip);
        if (drawable != null) {
            drawable.setBounds(0, 0, ScreenTools.dip2px(8.0f), ScreenTools.dip2px(8.0f));
            SpanColorUtils.append(spannableStringBuilder, new i(drawable, DensityUtil.dp2px(10.0f)));
            spannableStringBuilder.append((CharSequence) " ").append((CharSequence) getString(R.string.record_time_zone_tip4_1));
            this.f21631a.setText(spannableStringBuilder);
            SpanColorUtils.append(spannableStringBuilder2, new i(drawable, DensityUtil.dp2px(10.0f)));
            spannableStringBuilder2.append((CharSequence) " ").append((CharSequence) getString(R.string.record_time_zone_tip4_2));
            this.f21632b.setText(spannableStringBuilder2);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
