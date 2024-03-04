package com.guochao.faceshow.aaspring.modulars.personal;

import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FreezeCause;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class FreezeCauseActivity extends BaseActivity {
    @BindView
    TextView tvFreezeCause;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<FreezeCause> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable FreezeCause freezeCause, @NonNull FaceCastBaseResponse<FreezeCause> faceCastBaseResponse) {
            if (freezeCause == null || TextUtils.isEmpty(freezeCause.getContent())) {
                return;
            }
            FreezeCauseActivity.this.tvFreezeCause.setText(freezeCause.getContent());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<FreezeCause> aVar) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_freeze_cause;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getString(R.string.f_freeze_balance));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        post(Contants.MY_SELECT_F_FREEZE).v(Contants.USER_ID, getCurrentUser().getUserId()).M(new a());
    }
}
