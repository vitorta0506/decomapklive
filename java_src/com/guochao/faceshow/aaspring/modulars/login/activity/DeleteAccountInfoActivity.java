package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.ActionBar;
import b8.e;
import butterknife.OnClick;
import cn.jpush.android.api.JPushInterface;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.PushUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/activity/DeleteAccountInfoActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "()V", "click", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "getLayoutId", "", "initView", "loadData", "onBackPressed", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeleteAccountInfoActivity extends BaseActivity {
    @OnClick
    public final void click(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        JPushInterface.deleteAlias(this, PushUtils.sSequence);
        startActivity(ChooseLoginTypeActivity.class);
        e.g().a(null, false);
        AppManager.getInstance().killActivity(MainActivity.class);
        SpUtils.setInt(BaseApplication.getInstance(), SpUtils.SP_REASON_LOGOUT, 1);
        Bundle bundle = new Bundle();
        bundle.putString(EventTrackingUtils.CONTENT_TYPE, SpUtils.getLastLoginType());
        EventTrackingUtils.getInstance().track(EventTrackingUtils.LOGOUT_CLICK, bundle);
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_delete_account_info;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        }
        setTitle(R.string.delete_account_result);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }
}
