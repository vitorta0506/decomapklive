package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.UploadAvatarResult;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import java.io.File;
/* loaded from: classes3.dex */
public class UploadVideoCoverMainActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    String f17541a;
    @BindView
    ImageView mImageView;

    /* loaded from: classes3.dex */
    class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                UploadVideoCoverMainActivity.this.setResult(-1, new Intent().putExtra("result", 1));
                UploadVideoCoverMainActivity.this.finish();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends c<UploadAvatarResult> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends c<Object> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                UploadVideoCoverMainActivity.this.dismissProgressDialog();
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<Object> aVar) {
                UploadVideoCoverMainActivity.this.showToast(R.string.upload_retry_tip);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
                UploadVideoCoverMainActivity.this.showToast(R.string.upload_success_log);
                UploadVideoCoverMainActivity.this.startActivity(new Intent(UploadVideoCoverMainActivity.this.getActivity(), WaitVideoCoverCheckActivity.class));
                UploadVideoCoverMainActivity.this.getCurrentUser().setAppointState(2);
                UploadVideoCoverMainActivity.this.setResult(-1, new Intent().putExtra("result", 1));
                UploadVideoCoverMainActivity.this.finish();
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAvatarResult uploadAvatarResult, @NonNull FaceCastBaseResponse<UploadAvatarResult> faceCastBaseResponse) {
            if (uploadAvatarResult == null) {
                onFailure(new g7.a<>());
            } else {
                UploadVideoCoverMainActivity.this.post("tokens/appoint/applyOpen").y("dateLang", q7.a.e().d()).y("gifUrl", uploadAvatarResult.getBigImgUrl()).M(new a());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAvatarResult> aVar) {
            UploadVideoCoverMainActivity.this.showToast(R.string.upload_retry_tip);
            UploadVideoCoverMainActivity.this.dismissProgressDialog();
        }
    }

    void b0() {
        showProgressDialog("");
        post(f7.b.f39645j0).R("imgFile", new File(this.f17541a)).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(new b());
    }

    @OnClick
    public void click(View view) {
        int id2 = view.getId();
        if (id2 == R.id.cancel) {
            alert(getString(R.string.trtc_exit_without_retaining_recording), null, new a(), false);
        } else if (id2 == R.id.confirm) {
            b0();
        } else if (id2 != R.id.iv_record) {
        } else {
            setResult(-1, new Intent().putExtra("result", 2));
            finish();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_upload_video_cover_main;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().setBackgroundDrawableResource(R.color.white);
        String stringExtra = getIntent().getStringExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
        this.f17541a = stringExtra;
        hc.a.j(this.mImageView, stringExtra);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }
}
