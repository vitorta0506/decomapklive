package com.guochao.faceshow.aaspring.modulars.welcome;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.splashscreen.SplashScreen;
import b8.e;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.activity.MainActivity;
/* loaded from: classes3.dex */
public class SplashActivity extends BaseActivity {
    static final String TAG = "SplashActivity";

    private boolean handlePushAndShare() {
        Intent intent = getIntent();
        String dataString = intent.getDataString();
        LogUtils.i(TAG, "handlePushAndShare: dataString " + dataString);
        if (!TextUtils.isEmpty(dataString)) {
            boolean W1 = BaseSplashFragment.W1(getIntent(), dataString, this);
            LogUtils.i(TAG, "handlePushAndShare: b " + W1);
            if (W1) {
                return true;
            }
        }
        if (intent.getExtras() == null && AppManager.getInstance().containActivity(WatchLiveRoomActivity.class)) {
            startActivity(new Intent(getActivity(), WatchLiveRoomActivity.class).addFlags(131072).putExtra("from_float", 1));
            return true;
        }
        if (intent.getExtras() != null) {
            Object obj = getIntent().getExtras().get("type_id");
            if (obj == null) {
                obj = getIntent().getExtras().get("type");
            }
            if (obj == null) {
                if (AppManager.getInstance().containActivity(LiveBroadCastActivity.class)) {
                    startActivity(new Intent(getActivity(), LiveBroadCastActivity.class).addFlags(131072));
                    return true;
                } else if (AppManager.getInstance().containActivity(WatchLiveRoomActivity.class)) {
                    startActivity(new Intent(getActivity(), WatchLiveRoomActivity.class).addFlags(131072).putExtra("from_float", 1));
                    return true;
                }
            }
            boolean containActivity = AppManager.getInstance().containActivity(MainActivity.class);
            boolean containActivity2 = AppManager.getInstance().containActivity(ChooseLoginTypeActivity.class);
            if (containActivity || containActivity2) {
                if (TextUtils.isEmpty(e.g().getToken())) {
                    startActivity(new Intent(getActivity(), ChooseLoginTypeActivity.class).addFlags(537001984));
                    return true;
                }
                return ThirdPushHelper.checkWhereToGo(this, intent);
            }
        }
        if (AppManager.getInstance().containActivity(LiveBroadCastActivity.class)) {
            startActivity(new Intent(getActivity(), LiveBroadCastActivity.class).addFlags(131072));
            return true;
        } else if (AppManager.getInstance().containActivity(WatchLiveRoomActivity.class)) {
            startActivity(new Intent(getActivity(), WatchLiveRoomActivity.class).addFlags(131072).putExtra("from_float", 1));
            return true;
        } else {
            return false;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        overridePendingTransition(0, 0);
        super.finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(getActivity()).b(true).f(getResources().getColor(17170445)).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_activity_with_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (handlePushAndShare()) {
            getActivity().finish();
            return;
        }
        findViewById(R.id.float_title_back).setVisibility(8);
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new SplashFragment()).commitAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 31) {
            SplashScreen.installSplashScreen(this);
        }
        MMKVUtils.init(this);
        DelayIniter.initTencentConfig();
        DelayIniter.initWhenSplashOrMain();
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (handlePushAndShare()) {
            getActivity().finish();
        }
    }
}
