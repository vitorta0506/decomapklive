package com.guochao.faceshow.aaspring.modulars.customerservice.activity;

import android.content.Intent;
import android.os.Build;
import android.text.InputFilter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FeedbackFileInfo;
import com.guochao.faceshow.aaspring.beans.FeedbackQuestionTypeBean;
import com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper;
import com.guochao.faceshow.aaspring.utils.LengthFilter;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.SystemUtil;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FeedbackActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    UploadFeedImageHelper f17363a;

    /* renamed from: b  reason: collision with root package name */
    FeedbackQuestionTypeBean f17364b;
    @BindView
    EditText mEditTextEmail;
    @BindView
    TextView mTextView;

    /* loaded from: classes3.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            FeedbackActivity.this.startActivity(new Intent(FeedbackActivity.this.getActivity(), FeedbackHistoryActivity.class));
        }
    }

    /* loaded from: classes3.dex */
    class b implements UploadFeedImageHelper.q {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper.q
        public void a(List<FeedbackFileInfo> list, String str) {
            FeedbackActivity.this.d0(list, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.helper.UploadFeedImageHelper.q
        public void onFail(int i9, String str) {
            FeedbackActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Boolean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable @org.jetbrains.annotations.Nullable Boolean bool, @NonNull @NotNull FaceCastBaseResponse<Boolean> faceCastBaseResponse) {
            FeedbackActivity.this.dismissProgressDialog();
            if (bool != null && bool.booleanValue()) {
                FeedbackActivity.this.startActivity(new Intent(FeedbackActivity.this.getActivity(), FeedbackSuccessActivity.class));
                FeedbackActivity.this.setResult(-1);
                FeedbackActivity.this.finish();
                return;
            }
            onFailure(new g7.a<>());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<Boolean> aVar) {
            FeedbackActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(List<FeedbackFileInfo> list, String str) {
        post("tokens/sysHelp/submitFeedBackQuestion").y("typeId", Integer.valueOf(this.f17364b.getTypeId())).y("platform", 1).y("email", this.mEditTextEmail.getText().toString()).y(DeviceRequestsHelper.DEVICE_INFO_DEVICE, Build.BRAND + " " + Build.MODEL).y("deviceLevel", Integer.valueOf(Build.VERSION.SDK_INT)).y("platformVersion", "2.8.28").y("netType", SystemUtil.getNetType()).y("netProvider", SystemUtil.getSimOperator()).y("detail", this.f17363a.h()).y("fileList", list).y("logFile", str).M(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_feedback;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.setting_problem_of_feedback);
        FeedbackQuestionTypeBean feedbackQuestionTypeBean = (FeedbackQuestionTypeBean) getIntent().getParcelableExtra("data");
        this.f17364b = feedbackQuestionTypeBean;
        if (feedbackQuestionTypeBean == null) {
            finish();
            return;
        }
        this.mTextView.setText(feedbackQuestionTypeBean.getName());
        this.f17363a = new UploadFeedImageHelper(this, (ViewGroup) findViewById(R.id.recycler_view_area));
        setEndIcon(R.mipmap.icon_feedback_record_btn);
        this.mTitleBarHelper.setOnRightIconClickListener(new a());
        this.mEditTextEmail.setFilters(new InputFilter[]{new LengthFilter(50)});
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void submit(View view) {
        if (!StringUtils.hasWord(this.f17363a.h())) {
            showToast(R.string.feedback_input_empty);
            return;
        }
        showProgressDialog("");
        this.f17363a.l(new b());
    }
}
