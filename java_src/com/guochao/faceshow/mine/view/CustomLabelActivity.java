package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.CustomLabelBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SensitiveWordFilter;
/* loaded from: classes4.dex */
public class CustomLabelActivity extends BaseActivity {
    @BindView
    EditText etTag;

    /* loaded from: classes4.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (TextUtils.isEmpty(CustomLabelActivity.this.etTag.getText().toString().trim())) {
                return;
            }
            CustomLabelActivity customLabelActivity = CustomLabelActivity.this;
            customLabelActivity.d0(SpUtils.getStr(customLabelActivity, Contants.USER_ID), CustomLabelActivity.this.etTag.getText().toString().trim());
        }
    }

    /* loaded from: classes4.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                CustomLabelActivity customLabelActivity = CustomLabelActivity.this;
                customLabelActivity.setEndText(customLabelActivity.getString(R.string.save), R.color.color_ugc_app_primary);
                return;
            }
            CustomLabelActivity customLabelActivity2 = CustomLabelActivity.this;
            customLabelActivity2.setEndText(customLabelActivity2.getString(R.string.save), R.color.gray_2);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<CustomLabelBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable CustomLabelBean customLabelBean, @NonNull FaceCastBaseResponse<CustomLabelBean> faceCastBaseResponse) {
            Intent intent = new Intent();
            intent.putExtra("tag", CustomLabelActivity.this.etTag.getText().toString().trim());
            if (customLabelBean != null) {
                intent.putExtra("tagId", customLabelBean.getHobbyId());
            }
            CustomLabelActivity.this.setResult(23, intent);
            CustomLabelActivity.this.finish();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<CustomLabelBean> aVar) {
            if (1010 == aVar.a()) {
                ToastUtils.showToast(CustomLabelActivity.this.getActivity(), CustomLabelActivity.this.getString(R.string.chat_content_bad));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(String str, String str2) {
        String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(str2);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(checkKeyword)) {
            ToastUtils.showToast(getActivity(), getString(R.string.chat_content_bad));
        } else {
            post(Contants.ADD_USER_CUSTOM_LABEL).D(Contants.USER_ID, str).D("tags", str2).D("type", "1").M(new c());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_custom_label;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setEndText(getString(R.string.save), R.color.gray_2);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.etTag.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.hobby_custom_label);
    }
}
