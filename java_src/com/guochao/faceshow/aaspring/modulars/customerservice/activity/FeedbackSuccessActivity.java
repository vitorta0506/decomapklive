package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.view.View;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
/* loaded from: classes3.dex */
public class FeedbackSuccessActivity extends BaseActivity {
    @OnClick
    public void click(View view) {
        int id2 = view.getId();
        if (id2 == R.id.done) {
            finish();
        } else if (id2 != R.id.history) {
        } else {
            startActivity(FeedbackHistoryActivity.class);
            finish();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_feedback_success;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
