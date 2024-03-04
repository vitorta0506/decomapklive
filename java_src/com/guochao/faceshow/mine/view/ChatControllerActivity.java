package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.PrivacyChatSet;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes4.dex */
public class ChatControllerActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f25551a = 0;
    @BindView
    ImageView ivAll;
    @BindView
    ImageView ivFollow;
    @BindView
    LinearLayout llAll;
    @BindView
    LinearLayout llFollow;

    /* loaded from: classes4.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            ChatControllerActivity.this.e0();
        }
    }

    /* loaded from: classes4.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<PrivacyChatSet> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PrivacyChatSet privacyChatSet, @NonNull FaceCastBaseResponse<PrivacyChatSet> faceCastBaseResponse) {
            if (privacyChatSet == null) {
                onFailure(null);
                return;
            }
            if (privacyChatSet.getChatSet() == 0) {
                ChatControllerActivity.this.ivAll.setVisibility(0);
                ChatControllerActivity.this.ivFollow.setVisibility(8);
            } else {
                ChatControllerActivity.this.ivAll.setVisibility(8);
                ChatControllerActivity.this.ivFollow.setVisibility(0);
            }
            ChatControllerActivity.this.f25551a = privacyChatSet.getChatSet();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PrivacyChatSet> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            LogUtils.e("chatSet", aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ChatControllerActivity.this.dismissProgressDialog();
            ChatControllerActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0() {
        showProgressDialog(null);
        post(Contants.CHAT_SETTING).B("chatSet", this.f25551a).M(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_chat_controller;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.chat_messenger_tittle);
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        post("tokens/user/set/queryChatSet").M(new b());
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.ll_all) {
            this.f25551a = 0;
            this.ivAll.setVisibility(0);
            this.ivFollow.setVisibility(8);
        } else if (id2 != R.id.ll_follow) {
        } else {
            this.f25551a = 1;
            this.ivAll.setVisibility(8);
            this.ivFollow.setVisibility(0);
        }
    }
}
