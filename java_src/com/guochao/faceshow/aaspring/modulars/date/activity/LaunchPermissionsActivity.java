package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class LaunchPermissionsActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f17522a;

    /* renamed from: b  reason: collision with root package name */
    private String f17523b;
    @BindView
    FrameLayout flAnyone;
    @BindView
    FrameLayout flClose;
    @BindView
    FrameLayout flFans;
    @BindView
    FrameLayout flFriends;
    @BindView
    ImageView ivAnyone;
    @BindView
    ImageView ivClose;
    @BindView
    ImageView ivFans;
    @BindView
    ImageView ivFriends;
    @BindView
    TextView tvAnyone;
    @BindView
    TextView tvClose;
    @BindView
    TextView tvFans;
    @BindView
    TextView tvFriends;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            LaunchPermissionsActivity launchPermissionsActivity = LaunchPermissionsActivity.this;
            launchPermissionsActivity.e0(launchPermissionsActivity.f17522a, LaunchPermissionsActivity.this.tvClose.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17525a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17526b;

        b(String str, int i9) {
            this.f17525a = str;
            this.f17526b = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            LaunchPermissionsActivity.this.f17523b = this.f17525a;
            Intent intent = new Intent();
            intent.putExtra("name", this.f17525a);
            intent.putExtra("appointAuth", this.f17526b);
            LaunchPermissionsActivity.this.setResult(1011, intent);
            LaunchPermissionsActivity.this.finish();
        }
    }

    public void e0(int i9, String str) {
        post("tokens/appoint/auth").y(Contants.USER_ID, getCurrentUser().getCurrentUserId()).y("appointAuth", Integer.valueOf(i9)).M(new b(str, i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_launch_permissions;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.trtc_permission);
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        this.f17522a = getIntent().getIntExtra("appointAuth", 0);
        this.mTitleBarHelper.setOnRightTextClickListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        int i9 = this.f17522a;
        if (i9 == 0) {
            this.ivAnyone.setVisibility(0);
            this.ivFans.setVisibility(4);
            this.ivFriends.setVisibility(4);
            this.ivClose.setVisibility(4);
            this.f17523b = this.tvAnyone.getText().toString();
        } else if (i9 == 1) {
            this.ivAnyone.setVisibility(4);
            this.ivFans.setVisibility(0);
            this.ivFriends.setVisibility(4);
            this.ivClose.setVisibility(4);
            this.f17523b = this.tvFans.getText().toString();
        } else if (i9 == 2) {
            this.ivAnyone.setVisibility(4);
            this.ivFans.setVisibility(4);
            this.ivFriends.setVisibility(0);
            this.ivClose.setVisibility(4);
            this.f17523b = this.tvFriends.getText().toString();
        } else if (i9 != 3) {
        } else {
            this.ivAnyone.setVisibility(4);
            this.ivFans.setVisibility(4);
            this.ivFriends.setVisibility(4);
            this.ivClose.setVisibility(0);
            this.f17523b = this.tvClose.getText().toString();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.fl_anyone /* 2131362825 */:
                this.ivAnyone.setVisibility(0);
                this.ivFans.setVisibility(4);
                this.ivFriends.setVisibility(4);
                this.ivClose.setVisibility(4);
                this.f17522a = 0;
                return;
            case R.id.fl_close /* 2131362836 */:
                this.ivAnyone.setVisibility(4);
                this.ivFans.setVisibility(4);
                this.ivFriends.setVisibility(4);
                this.ivClose.setVisibility(0);
                this.f17522a = 3;
                return;
            case R.id.fl_fans /* 2131362838 */:
                this.ivAnyone.setVisibility(4);
                this.ivFans.setVisibility(0);
                this.ivFriends.setVisibility(4);
                this.ivClose.setVisibility(4);
                this.f17522a = 1;
                return;
            case R.id.fl_friends /* 2131362839 */:
                this.ivAnyone.setVisibility(4);
                this.ivFans.setVisibility(4);
                this.ivFriends.setVisibility(0);
                this.ivClose.setVisibility(4);
                this.f17522a = 2;
                return;
            default:
                return;
        }
    }
}
