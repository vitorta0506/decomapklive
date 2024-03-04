package com.guochao.faceshow.web;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.ImageButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.f;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.ShareActivityBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.LanguageGetUtils;
import com.guochao.faceshow.utils.WebViewUrlTools;
import java.util.ArrayList;
@Route(path = RouterPath.ROUTER_WEBVIEW_ACTIVITY)
/* loaded from: classes4.dex */
public class WebViewActivity extends BaseActivity implements WebViewFragment.d {
    private static final String TAG = "WebViewActivity";
    int mFrom;
    protected eb.b mSharePopController;
    WebView mWebView;
    private String pageId;
    private String shareImg;
    private String shareText;
    private String shareTitle;
    private String shareUrl;
    @Nullable
    @BindView
    View titleBarView;

    /* loaded from: classes4.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            WebViewActivity webViewActivity = WebViewActivity.this;
            if (webViewActivity.mWebView == null) {
                return;
            }
            webViewActivity.showOpenMoreMenu();
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends v.d {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            WebViewActivity.this.startShare();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements BottomMenuFragment.b {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            String url = WebViewActivity.this.mWebView.getUrl();
            int itemId = bottomMenuBean.getItemId();
            if (itemId == 0) {
                ClipData newPlainText = ClipData.newPlainText("FaceCast", url);
                ClipboardManager clipboardManager = (ClipboardManager) WebViewActivity.this.getSystemService("clipboard");
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(newPlainText);
                }
                WebViewActivity.this.showToast(R.string.copy_link_succ);
            } else if (itemId != 1) {
            } else {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(url));
                try {
                    WebViewActivity.this.startActivity(intent);
                } catch (Exception e10) {
                    LogUtils.e(WebViewActivity.TAG, "open Activity to open the url [" + url + "] failed", e10);
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* loaded from: classes4.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private String f27120a;

        /* renamed from: b  reason: collision with root package name */
        private String f27121b;

        /* renamed from: c  reason: collision with root package name */
        private int f27122c;

        /* renamed from: d  reason: collision with root package name */
        private String f27123d;

        /* renamed from: e  reason: collision with root package name */
        private String f27124e;

        /* renamed from: f  reason: collision with root package name */
        private String f27125f;

        /* renamed from: g  reason: collision with root package name */
        private String f27126g;

        /* renamed from: h  reason: collision with root package name */
        private String f27127h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f27128i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f27129j;
        @DrawableRes

        /* renamed from: k  reason: collision with root package name */
        private int f27130k = R.mipmap.icon_ugc_share_gray;
        @DrawableRes

        /* renamed from: l  reason: collision with root package name */
        private int f27131l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f27132m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f27133n;

        public void a(Context context) {
            if (!TextUtils.isEmpty(this.f27120a)) {
                try {
                    Uri parse = Uri.parse(this.f27120a);
                    if (UrlUtils.shouldOpenOutside(parse)) {
                        PackageUtils.viewUri(context, parse);
                        return;
                    }
                } catch (Exception unused) {
                }
            }
            context.startActivity(b(context));
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
            if (r1.startsWith(x6.a.f59632h + "inviteMoney") != false) goto L12;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:0x009a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.content.Intent b(android.content.Context r5) {
            /*
                r4 = this;
                android.content.Intent r0 = new android.content.Intent
                java.lang.Class<com.guochao.faceshow.web.WebViewActivity> r1 = com.guochao.faceshow.web.WebViewActivity.class
                r0.<init>(r5, r1)
                int r1 = r4.f27122c
                r2 = 19
                if (r1 == r2) goto L2a
                java.lang.String r1 = r4.f27120a
                if (r1 == 0) goto L31
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = x6.a.f59632h
                r2.append(r3)
                java.lang.String r3 = "inviteMoney"
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                boolean r1 = r1.startsWith(r2)
                if (r1 == 0) goto L31
            L2a:
                android.content.Intent r0 = new android.content.Intent
                java.lang.Class<com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity> r1 = com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity.class
                r0.<init>(r5, r1)
            L31:
                java.lang.String r1 = r4.f27120a
                java.lang.String r2 = "url"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27121b
                java.lang.String r2 = "title"
                r0.putExtra(r2, r1)
                int r1 = r4.f27122c
                java.lang.String r2 = "from"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27123d
                java.lang.String r2 = "shareTitle"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27124e
                java.lang.String r2 = "shareText"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27125f
                java.lang.String r2 = "shareImg"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27126g
                java.lang.String r2 = "shareUrl"
                r0.putExtra(r2, r1)
                java.lang.String r1 = r4.f27127h
                java.lang.String r2 = "pageId"
                r0.putExtra(r2, r1)
                boolean r1 = r4.f27128i
                java.lang.String r2 = "withShare"
                r0.putExtra(r2, r1)
                int r1 = r4.f27130k
                java.lang.String r2 = "shareIcon"
                r0.putExtra(r2, r1)
                boolean r1 = r4.f27129j
                java.lang.String r2 = "hideTitle"
                r0.putExtra(r2, r1)
                boolean r1 = r4.f27132m
                java.lang.String r2 = "hasMore"
                r0.putExtra(r2, r1)
                int r1 = r4.f27131l
                java.lang.String r2 = "backgroundRes"
                r0.putExtra(r2, r1)
                boolean r1 = r4.f27133n
                java.lang.String r2 = "showScrollbar"
                r0.putExtra(r2, r1)
                boolean r5 = r5 instanceof android.app.Activity
                if (r5 != 0) goto L9f
                r5 = 268435456(0x10000000, float:2.524355E-29)
                r0.addFlags(r5)
            L9f:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.web.WebViewActivity.e.b(android.content.Context):android.content.Intent");
        }

        public e c(boolean z10) {
            this.f27132m = z10;
            return this;
        }

        public e d(boolean z10) {
            this.f27133n = z10;
            return this;
        }

        public e e(int i9) {
            this.f27122c = i9;
            if (i9 == 1000) {
                this.f27129j = true;
            }
            return this;
        }

        public e f(String str) {
            this.f27127h = str;
            return this;
        }

        public e g(boolean z10) {
            this.f27128i = z10;
            return this;
        }

        public e h(String str) {
            this.f27125f = str;
            return this;
        }

        public e i(String str) {
            this.f27124e = str;
            return this;
        }

        public e j(String str) {
            this.f27123d = str;
            return this;
        }

        public e k(String str) {
            this.f27126g = str;
            return this;
        }

        public e l(String str) {
            this.f27121b = str;
            return this;
        }

        public e m(String str) {
            this.f27120a = str;
            return this;
        }
    }

    public static e createBuilder() {
        return new e();
    }

    private void initShare(String str) {
        int intExtra = getIntent().getIntExtra("shareIcon", R.mipmap.icon_ugc_share_gray);
        this.shareTitle = getIntent().getStringExtra("shareTitle");
        this.shareText = getIntent().getStringExtra("shareText");
        this.shareImg = getIntent().getStringExtra("shareImg");
        this.shareUrl = getIntent().getStringExtra("shareUrl");
        this.pageId = getIntent().getStringExtra("pageId");
        ShareActivityBean shareActivityBean = (ShareActivityBean) SpUtils.getShareActivityBean(this, Contants.SHARE_ACTIVITY_BEAN, ShareActivityBean.class);
        if (shareActivityBean != null && !TextUtils.isEmpty(shareActivityBean.webPageUrl)) {
            if (TextUtils.isEmpty(this.shareImg)) {
                this.shareImg = shareActivityBean.shareImgUrl;
            }
            if (TextUtils.isEmpty(this.shareUrl)) {
                this.shareUrl = shareActivityBean.webPageUrl;
            }
            if (TextUtils.isEmpty(this.pageId)) {
                this.pageId = shareActivityBean.f25095id + "";
            }
            if (TextUtils.isEmpty(this.shareText)) {
                if (LanguageGetUtils.isLanguageChinese()) {
                    this.shareText = shareActivityBean.shareTextCn;
                } else {
                    this.shareText = shareActivityBean.shareTextEn;
                }
            }
        } else if (TextUtils.isEmpty(this.shareUrl)) {
            this.shareUrl = str;
        }
        if (TextUtils.isEmpty(this.shareUrl)) {
            return;
        }
        this.mSharePopController = new eb.b(this);
        setEndIcon(intExtra);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOpenMoreMenu() {
        ArrayList arrayList = new ArrayList();
        BottomMenuBean bottomMenuBean = new BottomMenuBean();
        bottomMenuBean.setItemId(0);
        bottomMenuBean.setText(getString(R.string.copy_link));
        arrayList.add(bottomMenuBean);
        BottomMenuBean bottomMenuBean2 = new BottomMenuBean();
        bottomMenuBean2.setItemId(1);
        bottomMenuBean2.setText(getString(R.string.open_with_browser));
        arrayList.add(bottomMenuBean2);
        BottomMenuFragment.S1(getSupportFragmentManager(), arrayList, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShare() {
        if (!"176".equals(this.pageId) && !"129".equals(this.pageId) && !"136".equals(this.pageId)) {
            this.mSharePopController.F(getWindow().getDecorView().getRootView(), this.shareTitle, TextUtils.isEmpty(this.shareText) ? this.shareUrl : this.shareText, this.shareImg, this.shareUrl, this.pageId);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        String str = this.shareUrl;
        sb2.append(str.substring(0, str.indexOf("?")));
        sb2.append("?activityId=");
        sb2.append(this.pageId);
        String sb3 = sb2.toString();
        this.mSharePopController.F(getWindow().getDecorView().getRootView(), this.shareTitle, TextUtils.isEmpty(this.shareText) ? sb3 : this.shareText, this.shareImg, sb3, this.pageId);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        if (getIntent() != null && getIntent().getIntExtra("backgroundRes", 0) != 0) {
            return new a.C0147a(this).f(0).b(true).a();
        }
        return super.getActivityConfig();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.layout_activity_with_fragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        int intExtra = getIntent().getIntExtra("from", -1);
        this.mFrom = intExtra;
        String stringExtra = getIntent().getStringExtra("url");
        String stringExtra2 = getIntent().getStringExtra("title");
        if (intExtra > 0) {
            stringExtra = WebViewUrlTools.getLocalWebUrl(intExtra);
            stringExtra2 = WebViewUrlTools.getWebTitle(intExtra);
        }
        setTitle(stringExtra2);
        WebViewFragment.getInstance(R.id.fragment_container, getSupportFragmentManager(), stringExtra, stringExtra2);
        if (getIntent().getBooleanExtra("withShare", false)) {
            initShare(stringExtra);
        }
        if (getIntent().getBooleanExtra("hideTitle", false)) {
            View view = this.titleBarView;
            if (view != null) {
                view.setVisibility(8);
            }
            setLightStatusBar(true);
            getWindow().setStatusBarColor(-1);
        }
        if (getIntent().getBooleanExtra("hasMore", false) && this.mTitleBarHelper != null) {
            setEndIcon(R.mipmap.icon_im_moredian);
            this.mTitleBarHelper.setOnRightIconClickListener(new a());
        }
        v vVar = this.mTitleBarHelper;
        if (vVar != null && vVar.d() != null) {
            this.mTitleBarHelper.d().setOnClickListener(new b());
        }
        int intExtra2 = getIntent().getIntExtra("backgroundRes", 0);
        if (intExtra2 == 0 || getWindow() == null) {
            return;
        }
        getWindow().getDecorView().setBackgroundResource(intExtra2);
        v vVar2 = this.mTitleBarHelper;
        if (vVar2 != null) {
            vVar2.l(R.color.transparent);
            this.mTitleBarHelper.w(R.color.white);
            ((ImageButton) this.mTitleBarHelper.d()).setImageTintList(ContextCompat.getColorStateList(this, R.color.white));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        WebView webView = this.mWebView;
        if (webView != null && webView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        this.mWebView = webView;
        if (getIntent().getBooleanExtra("showScrollbar", false)) {
            webView.setVerticalScrollBarEnabled(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        v9.c.c();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onLoadErr(int i9, String str, String str2) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public /* synthetic */ void onPageFinished(WebView webView, String str) {
        f.a(this, webView, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (this.mFrom == 11 && webResourceRequest.isForMainFrame()) {
            String title = webView.getTitle();
            if (TextUtils.isEmpty(getTitle())) {
                setTitle(title);
                return false;
            }
            return false;
        }
        return false;
    }
}
