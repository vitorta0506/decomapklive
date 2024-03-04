package com.guochao.faceshow.mine.view;

import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes4.dex */
public class DistancePrivacyActivity extends BaseActivity {
    @BindView
    RadioButton rbClose;
    @BindView
    RadioButton rbDefault;
    @BindView
    RadioButton rbNotNeighborhood;
    @BindView
    RadioButton rbOnlyToFriends;
    @BindView
    RelativeLayout rlCloseLayout;
    @BindView
    RelativeLayout rlDefaultLayout;
    @BindView
    RelativeLayout rlNotNeighborhoodLayout;
    @BindView
    RelativeLayout rlOnlyToFriendsLayout;
    @BindView
    TextView tvClose;
    @BindView
    TextView tvCloseTip;
    @BindView
    TextView tvDefault;
    @BindView
    TextView tvDefaultTip;
    @BindView
    TextView tvNotNeighborhood;
    @BindView
    TextView tvNotNeighborhoodTip;
    @BindView
    TextView tvOnlyToFriends;
    @BindView
    TextView tvOnlyToFriendsTip;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                DistancePrivacyActivity.this.rbNotNeighborhood.setChecked(false);
                DistancePrivacyActivity.this.rbOnlyToFriends.setChecked(false);
                DistancePrivacyActivity.this.rbClose.setChecked(false);
                DistancePrivacyActivity distancePrivacyActivity = DistancePrivacyActivity.this;
                distancePrivacyActivity.e0(SpUtils.getStr(distancePrivacyActivity, Contants.USER_ID), "1", "2", "2", "2");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                DistancePrivacyActivity.this.rbDefault.setChecked(false);
                DistancePrivacyActivity.this.rbOnlyToFriends.setChecked(false);
                DistancePrivacyActivity.this.rbClose.setChecked(false);
                DistancePrivacyActivity distancePrivacyActivity = DistancePrivacyActivity.this;
                distancePrivacyActivity.e0(SpUtils.getStr(distancePrivacyActivity, Contants.USER_ID), "2", "1", "2", "2");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                DistancePrivacyActivity.this.rbDefault.setChecked(false);
                DistancePrivacyActivity.this.rbNotNeighborhood.setChecked(false);
                DistancePrivacyActivity.this.rbClose.setChecked(false);
                DistancePrivacyActivity distancePrivacyActivity = DistancePrivacyActivity.this;
                distancePrivacyActivity.e0(SpUtils.getStr(distancePrivacyActivity, Contants.USER_ID), "2", "2", "1", "2");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                DistancePrivacyActivity.this.rbDefault.setChecked(false);
                DistancePrivacyActivity.this.rbNotNeighborhood.setChecked(false);
                DistancePrivacyActivity.this.rbOnlyToFriends.setChecked(false);
                DistancePrivacyActivity distancePrivacyActivity = DistancePrivacyActivity.this;
                distancePrivacyActivity.e0(SpUtils.getStr(distancePrivacyActivity, Contants.USER_ID), "4", "2", "2", "1");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f25580a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25581b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f25582c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f25583d;

        e(String str, String str2, String str3, String str4) {
            this.f25580a = str;
            this.f25581b = str2;
            this.f25582c = str3;
            this.f25583d = str4;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            UserBean currentUser = DistancePrivacyActivity.this.getCurrentUser();
            currentUser.userSet.distance = Integer.parseInt(this.f25580a);
            currentUser.userSet.nearby = Integer.parseInt(this.f25581b);
            currentUser.userSet.friends = Integer.parseInt(this.f25582c);
            currentUser.userSet.closeDistance = Integer.parseInt(this.f25583d);
            b8.e.g().a(currentUser, false);
        }
    }

    private void d0() {
        this.rbDefault.setOnCheckedChangeListener(new a());
        this.rbNotNeighborhood.setOnCheckedChangeListener(new b());
        this.rbOnlyToFriends.setOnCheckedChangeListener(new c());
        this.rbClose.setOnCheckedChangeListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(String str, String str2, String str3, String str4, String str5) {
        post(Contants.DISTANCE_MODE).D(Contants.USER_ID, str).D("distance", str2).D("nearby", str3).D(NativeProtocol.AUDIENCE_FRIENDS, str4).D("language", "1").D("closeDistance", str5).M(new e(str2, str3, str4, str5));
    }

    private void initData() {
        if (SpUtils.getStr(this, Contants.DISTANCE) == null) {
            this.rbDefault.setChecked(true);
        } else if (SpUtils.getStr(this, Contants.DISTANCE).equals("1")) {
            this.rbDefault.setChecked(true);
        } else if (SpUtils.getStr(this, Contants.NEARBY).equals("1")) {
            this.rbNotNeighborhood.setChecked(true);
        } else if (SpUtils.getStr(this, Contants.FRIENDS).equals("1")) {
            this.rbOnlyToFriends.setChecked(true);
        } else if (SpUtils.getStr(this, Contants.CLOSEDISTANCE).equals("1")) {
            this.rbClose.setChecked(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_privacy_distance;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.setting_privacy_distance);
        initData();
        d0();
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.rlCloseLayout /* 2131364263 */:
                if (this.rbClose.isChecked()) {
                    return;
                }
                this.rbClose.setChecked(true);
                this.rbDefault.setChecked(false);
                this.rbNotNeighborhood.setChecked(false);
                this.rbOnlyToFriends.setChecked(false);
                e0(SpUtils.getStr(this, Contants.USER_ID), "2", "2", "2", "1");
                return;
            case R.id.rlDefaultLayout /* 2131364265 */:
                if (this.rbDefault.isChecked()) {
                    return;
                }
                this.rbDefault.setChecked(true);
                this.rbNotNeighborhood.setChecked(false);
                this.rbOnlyToFriends.setChecked(false);
                this.rbClose.setChecked(false);
                e0(SpUtils.getStr(this, Contants.USER_ID), "1", "2", "2", "2");
                return;
            case R.id.rlNotNeighborhoodLayout /* 2131364273 */:
                if (this.rbNotNeighborhood.isChecked()) {
                    return;
                }
                this.rbNotNeighborhood.setChecked(true);
                this.rbDefault.setChecked(false);
                this.rbOnlyToFriends.setChecked(false);
                this.rbClose.setChecked(false);
                e0(SpUtils.getStr(this, Contants.USER_ID), "2", "1", "2", "2");
                return;
            case R.id.rlOnlyToFriendsLayout /* 2131364274 */:
                if (this.rbOnlyToFriends.isChecked()) {
                    return;
                }
                this.rbOnlyToFriends.setChecked(true);
                this.rbDefault.setChecked(false);
                this.rbNotNeighborhood.setChecked(false);
                this.rbClose.setChecked(false);
                e0(SpUtils.getStr(this, Contants.USER_ID), "2", "2", "1", "2");
                return;
            default:
                return;
        }
    }
}
