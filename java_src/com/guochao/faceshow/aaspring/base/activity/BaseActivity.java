package com.guochao.faceshow.aaspring.base.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastCallService;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.views.e;
import com.tencent.ugc.UGCTransitionRules;
import n7.b;
/* loaded from: classes3.dex */
public abstract class BaseActivity extends GCCoreActivity implements NetworkObserverHelper.OnNetworkChangeCallBack, f7.a, i.InterfaceC0154i, com.guochao.faceshow.aaspring.base.http.callback.a {
    private a mActivityConfig;
    b mApiExceptionAlerter;
    private int mEndIconFirst;
    private int mEndIconSecond;
    private String mEndText;
    @ColorRes
    private int mEndTextColor;
    private BaseFaceCastRequest mLastRequest;
    private NetworkObserverHelper mNetworkObserverHelper;
    @Deprecated
    public v mTitleBarHelper;
    @Nullable
    @BindView
    Toolbar mToolbar;
    private Unbinder mUnbinder;
    protected int mCurrentNetWork = -1;
    private int mTypeFace = -1;

    public e alert(CharSequence charSequence) {
        return alert(null, charSequence);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(q7.a.e().l(context));
    }

    public void debugAlert(String str) {
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (getActivityConfig().l() && Language.ARABIC.equals(q7.a.e().c())) {
            overridePendingTransition(R.anim.fragment_pop_enter_rtl, R.anim.fragment_pop_exist_rtl);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public GetRequest get(String str) {
        GetRequest c10 = new GetRequest().O(this).P(this).Q(str).a(this).c(BaseFaceCastRequest.d.b().c(true));
        this.mLastRequest = c10;
        return c10;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public <T extends GCCoreActivity> T getActivity() {
        return this;
    }

    public a getActivityConfig() {
        return new a.C0147a(this).a();
    }

    public r7.a getDataManager() {
        return z7.a.a();
    }

    public abstract int getLayoutId();

    public int getSystemUiVisibility() {
        return 0;
    }

    public void hideLeftBack() {
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.g(true);
        }
    }

    public void hideSoftKeyboard() {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (getCurrentFocus() == null || inputMethodManager == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public abstract void initView();

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public BaseFaceCastRequest lastRequest() {
        return this.mLastRequest;
    }

    public abstract void loadData();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 652 && i10 == -1 && intent != null) {
            ScreenShotHelper.getInstance().onActivityResult(this, i10, intent);
            ScreenShotHelper.onActivityResult = true;
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.OnNetworkChangeCallBack
    public void onChange(int i9) {
        if (this.mCurrentNetWork == -1) {
            this.mCurrentNetWork = i9;
            return;
        }
        this.mCurrentNetWork = i9;
        if (i9 != 1) {
            return;
        }
        showToast(R.string.non_WiFi_environment);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.mUnbinder = ButterKnife.a(this);
        Toolbar toolbar = this.mToolbar;
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            getSupportActionBar().setDisplayShowTitleEnabled(false);
            v vVar = new v(this);
            this.mTitleBarHelper = vVar;
            vVar.f();
        }
        if (this.mActivityConfig.i()) {
            getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        }
        initView();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        a activityConfig = getActivityConfig();
        this.mActivityConfig = activityConfig;
        if (activityConfig.i()) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().setStatusBarColor(this.mActivityConfig.h());
        }
        super.onCreate(bundle);
        if (getLayoutId() != 0) {
            setContentView(getLayoutId());
        }
        i.u().registerOnServerConfigChangedListener(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        int i9;
        if (this.mTitleBarHelper != null) {
            if (!TextUtils.isEmpty(this.mEndText)) {
                this.mTitleBarHelper.j(menu, this.mEndText, this.mEndTextColor, this.mTypeFace);
            } else {
                int i10 = this.mEndIconFirst;
                if (i10 != 0 && (i9 = this.mEndIconSecond) != 0) {
                    this.mTitleBarHelper.i(menu, i10, i9);
                } else if (i10 != 0) {
                    this.mTitleBarHelper.h(menu, i10);
                }
            }
            if (!TextUtils.isEmpty(getTitle())) {
                this.mTitleBarHelper.v(getTitle());
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        i.u().unregisterOnServerConfigChangedListener(this);
    }

    public void onDialogFragmentDismiss(BaseDialogFragment baseDialogFragment) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!isDestroyed() && this.mActivityConfig.j()) {
            this.mCurrentNetWork = -1;
            if (this.mNetworkObserverHelper == null) {
                NetworkObserverHelper create = NetworkObserverHelper.create(this);
                this.mNetworkObserverHelper = create;
                create.register(this);
            }
        }
        if (com.guochao.faceshow.aaspring.modulars.trtc.receive.b.b().c() && Foreground.get().isForeground()) {
            FaceCastCallService.h(getActivity());
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        NetworkObserverHelper networkObserverHelper = this.mNetworkObserverHelper;
        if (networkObserverHelper != null) {
            networkObserverHelper.destroy(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i9) {
        Toolbar toolbar = this.mToolbar;
        if (toolbar == null) {
            super.onTitleChanged(charSequence, i9);
            return;
        }
        toolbar.setTitle((CharSequence) null);
        setTextViewText(16908310, charSequence);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public PostRequest post(String str) {
        PostRequest c10 = new PostRequest().O(this).P(this).Q(str).a(this).c(BaseFaceCastRequest.d.b().c(true));
        this.mLastRequest = c10;
        return c10;
    }

    public void print(String str, String str2) {
        com.guochao.faceshow.aaspring.debug.a.b().a(str, str2);
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.a
    public void recordError(g7.a<?> aVar, String str) {
    }

    public void redirectToMainActivity(Intent intent) {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        startActivity(intent);
        overridePendingTransition(R.anim.do_nothing, R.anim.down_out);
    }

    public ka.a requestPermisson(String... strArr) {
        return new ka.a().m(this).f(strArr);
    }

    public void setEndIcon(int i9) {
        setEndIcon(i9, 0);
    }

    public void setEndIconOrColor(int i9, int i10) {
        setEndIcon(i9, 0, i10);
    }

    public void setEndText(String str, @ColorRes int i9) {
        this.mEndText = str;
        this.mEndTextColor = i9;
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.s(str, i9);
        }
    }

    public void setLeftBackIcon(@DrawableRes int i9) {
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.m(i9);
        }
    }

    public void setLightNavigationBar(boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            if (z10) {
                getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 16);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() & (-17));
            }
        } else if (z10) {
            getWindow().setStatusBarColor(getResources().getColor(R.color.color_app_primary));
        } else {
            getWindow().setStatusBarColor(getActivityConfig().h());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void setLightStatusBar(boolean z10) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (z10) {
                getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 8192);
            } else {
                getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() & (-8193));
            }
        } else if (z10) {
            getWindow().setStatusBarColor(getResources().getColor(R.color.color_app_primary));
        } else {
            getWindow().setStatusBarColor(getActivityConfig().h());
        }
    }

    public void setRightFirstResEnable(boolean z10) {
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.o(z10);
        }
    }

    public void setRightTextStyle(int i9) {
        this.mTypeFace = i9;
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.u(i9);
        }
    }

    public void setTextViewText(int i9, CharSequence charSequence) {
        TextView textView = (TextView) findViewById(i9);
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, android.app.Activity
    public void setTitle(int i9) {
        setTitle(getText(i9));
    }

    @Override // android.app.Activity
    public void setTitleColor(int i9) {
        super.setTitleColor(i9);
        TextView textView = (TextView) findViewById(16908310);
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(this, i9));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.http.callback.a
    public void showError() {
        try {
            o.a.c().a(RouterPath.ROUTER_DEBUG_CENTER_SERVICE).navigation(this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showKeyboard(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            view.requestFocus();
            inputMethodManager.showSoftInput(view, 0);
        }
    }

    public void startActivity(Class<? extends Activity> cls) {
        startActivity(new Intent(this, cls));
    }

    public void startActivityForResult(Class<? extends Activity> cls, int i9) {
        startActivityForResult(new Intent(this, cls), i9);
    }

    public void startActivityUpIn(Intent intent) {
        intent.addFlags(268468224);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        startActivity(intent);
        overridePendingTransition(R.anim.do_nothing, R.anim.down_out);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return false;
    }

    public boolean windowIsSecure() {
        return false;
    }

    public e alert(CharSequence charSequence, CharSequence charSequence2) {
        return alert(charSequence, charSequence2, null);
    }

    public UserBean getCurrentUser() {
        return b8.e.g().c();
    }

    public void setEndIcon(int i9, int i10) {
        this.mEndIconFirst = i9;
        this.mEndIconSecond = i10;
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.p(i9, i10);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, android.app.Activity
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.v(charSequence);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i9) {
        super.startActivityForResult(intent, i9);
        if (Language.ARABIC.equals(q7.a.e().c())) {
            overridePendingTransition(R.anim.fragment_enter_rtl, R.anim.fragment_exit_rtl);
        } else {
            overridePendingTransition(R.anim.fragment_enter, R.anim.fragment_exit);
        }
    }

    public e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar) {
        return alert(charSequence, charSequence2, aVar, true);
    }

    public e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar, boolean z10) {
        return alert(charSequence, charSequence2, aVar, z10, false);
    }

    public e alert(CharSequence charSequence, CharSequence charSequence2, e.a aVar, boolean z10, boolean z11) {
        if (getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
            return null;
        }
        e eVar = new e(getActivity(), aVar);
        if (z10) {
            eVar.j();
        }
        eVar.b(charSequence);
        eVar.f(charSequence2);
        if (z11) {
            eVar.l();
        }
        eVar.show();
        return eVar;
    }

    public void redirectToMainActivity(Intent intent, boolean z10) {
        intent.addFlags(603979776);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        startActivity(intent);
        overridePendingTransition(0, 0);
    }

    public void setEndText(String str, @ColorRes int i9, int i10) {
        setEndText(str, i9);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.n(i10);
        }
    }

    public void setTitle(CharSequence charSequence, @ColorRes int i9) {
        super.setTitle(charSequence);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.v(charSequence);
            this.mTitleBarHelper.w(i9);
        }
    }

    public void setEndIcon(int i9, int i10, int i11) {
        this.mEndIconFirst = i9;
        this.mEndIconSecond = i10;
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.q(i9, i10, i11);
        }
    }

    public void setLightStatusBar(boolean z10, boolean z11) {
        int systemUiVisibility;
        int systemUiVisibility2;
        if (Build.VERSION.SDK_INT < 26) {
            setLightStatusBar(z10);
        } else if (z10) {
            if (z11) {
                systemUiVisibility2 = getWindow().getDecorView().getSystemUiVisibility() | 8192 | 16;
            } else {
                systemUiVisibility2 = getWindow().getDecorView().getSystemUiVisibility() | 8192;
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility2);
        } else {
            if (z11) {
                systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility() & (-8193) & (-17);
            } else {
                systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility() & (-8193);
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i9, @Nullable Bundle bundle) {
        super.startActivityForResult(intent, i9, bundle);
        if (bundle == null) {
            if (Language.ARABIC.equals(q7.a.e().c())) {
                overridePendingTransition(R.anim.fragment_enter_rtl, R.anim.fragment_exit_rtl);
            } else {
                overridePendingTransition(R.anim.fragment_enter, R.anim.fragment_exit);
            }
        }
    }
}
