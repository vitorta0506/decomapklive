package com.guochao.faceshow.promotion.view;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.Locale;
/* loaded from: classes4.dex */
public class WebViewDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private RelativeLayout f26121a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f26122b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f26123c;

    /* renamed from: d  reason: collision with root package name */
    PromotionData.ResultItem f26124d;

    /* renamed from: e  reason: collision with root package name */
    private View f26125e;

    /* renamed from: f  reason: collision with root package name */
    private View f26126f;

    /* renamed from: g  reason: collision with root package name */
    private View f26127g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f26128h;

    /* renamed from: i  reason: collision with root package name */
    private int f26129i;

    /* renamed from: j  reason: collision with root package name */
    private int f26130j = ScreenTools.dip2px(30.0f);

    /* renamed from: k  reason: collision with root package name */
    private int f26131k = ScreenTools.dip2px(10.0f);

    /* renamed from: l  reason: collision with root package name */
    private WindowManager.LayoutParams f26132l;

    /* renamed from: m  reason: collision with root package name */
    private Window f26133m;

    /* renamed from: n  reason: collision with root package name */
    private eb.b f26134n;

    /* renamed from: o  reason: collision with root package name */
    private String f26135o;

    /* renamed from: p  reason: collision with root package name */
    private String f26136p;

    /* renamed from: q  reason: collision with root package name */
    private String f26137q;

    /* renamed from: r  reason: collision with root package name */
    private String f26138r;

    /* renamed from: s  reason: collision with root package name */
    private String f26139s;

    /* renamed from: t  reason: collision with root package name */
    private Activity f26140t;

    /* renamed from: u  reason: collision with root package name */
    private String f26141u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f26142v;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewDialog.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewDialog.this.S1();
        }
    }

    private void Q1() {
        String str = SpUtils.getStr(BaseApplication.getInstance(), "language");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Configuration configuration = BaseApplication.getInstance().getResources().getConfiguration();
        DisplayMetrics displayMetrics = BaseApplication.getInstance().getResources().getDisplayMetrics();
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1670945313:
                if (str.equals("Русский язык")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1575530339:
                if (str.equals("Français")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1155591125:
                if (str.equals("Português")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1071093480:
                if (str.equals("Deutsch")) {
                    c10 = 3;
                    break;
                }
                break;
            case -704712234:
                if (str.equals(Language.TRADITIONAL_CHINESE_HK)) {
                    c10 = 4;
                    break;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3886:
                if (str.equals(Language.SIMPLE_CHINESE)) {
                    c10 = 6;
                    break;
                }
                break;
            case 25921943:
                if (str.equals("日本語")) {
                    c10 = 7;
                    break;
                }
                break;
            case 53916739:
                if (str.equals("한국어")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 212156143:
                if (str.equals("Español")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1127340175:
                if (str.equals("Italiano")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1132116197:
                if (str.equals("हिन्दी")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                configuration.locale = new Locale(Language.RUSSIAN, "");
                configuration.setLayoutDirection(new Locale(Language.RUSSIAN, ""));
                break;
            case 1:
                Locale locale = Locale.FRANCE;
                configuration.locale = locale;
                configuration.setLayoutDirection(locale);
                break;
            case 2:
                configuration.locale = new Locale("pt", "");
                configuration.setLayoutDirection(new Locale("pt", ""));
                break;
            case 3:
                Locale locale2 = Locale.GERMANY;
                configuration.locale = locale2;
                configuration.setLayoutDirection(locale2);
                break;
            case 4:
                Locale locale3 = Locale.TRADITIONAL_CHINESE;
                configuration.locale = locale3;
                configuration.setLayoutDirection(locale3);
                break;
            case 5:
                Locale locale4 = Locale.ENGLISH;
                configuration.locale = locale4;
                configuration.setLayoutDirection(locale4);
                break;
            case 6:
                Locale locale5 = Locale.SIMPLIFIED_CHINESE;
                configuration.locale = locale5;
                configuration.setLayoutDirection(locale5);
                break;
            case 7:
                Locale locale6 = Locale.JAPAN;
                configuration.locale = locale6;
                configuration.setLayoutDirection(locale6);
                break;
            case '\b':
                Locale locale7 = Locale.KOREA;
                configuration.locale = locale7;
                configuration.setLayoutDirection(locale7);
                break;
            case '\t':
                configuration.locale = new Locale(Language.SPANISH, "");
                configuration.setLayoutDirection(new Locale(Language.SPANISH, ""));
                break;
            case '\n':
                Locale locale8 = Locale.ITALIAN;
                configuration.locale = locale8;
                configuration.setLayoutDirection(locale8);
                break;
            case 11:
                configuration.locale = new Locale(Language.HINDI, "");
                configuration.setLayoutDirection(new Locale(Language.HINDI, ""));
                break;
        }
        BaseApplication.getInstance().getResources().updateConfiguration(configuration, displayMetrics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1() {
        if (!"129".equals(this.f26138r) && !"136".equals(this.f26138r)) {
            this.f26134n.F(this.f26121a, this.f26139s, this.f26135o, this.f26136p, this.f26137q, this.f26138r);
            return;
        }
        this.f26134n.F(this.f26121a, this.f26139s, this.f26135o, this.f26136p, this.f26124d.webPageUrl + "?activityId=" + this.f26138r, this.f26138r);
    }

    public void R1(FragmentManager fragmentManager, String str, String str2, String str3, String str4, String str5, String str6, PromotionData.ResultItem resultItem, boolean z10) {
        this.f26141u = str;
        Q1();
        this.f26135o = str3;
        this.f26136p = str4;
        this.f26139s = str2;
        this.f26137q = str5;
        this.f26138r = str6;
        this.f26124d = resultItem;
        this.f26142v = z10;
        show(fragmentManager, "web_url");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment
    protected int getDialogStyle() {
        return R.style.commonDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_web_view_commom;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f26121a = (RelativeLayout) view.findViewById(R.id.web_dialog_root);
        this.f26122b = (RelativeLayout) view.findViewById(R.id.web_dialog_content);
        this.f26123c = (ImageView) view.findViewById(R.id.web_dialog_cancel_btn);
        this.f26126f = view.findViewById(R.id.web_dialog_top_bg);
        this.f26127g = view.findViewById(R.id.web_dialog_bottom_bg);
        this.f26125e = view.findViewById(R.id.web_dialog_share_icon);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26122b.getLayoutParams();
        marginLayoutParams.leftMargin = 0;
        marginLayoutParams.rightMargin = 0;
        marginLayoutParams.height = (int) (ScreenTools.getScreenHeight() * 0.75d);
        this.f26127g.setBackground(this.f26128h);
        this.f26123c.setOnClickListener(new a());
        this.f26125e.setOnClickListener(new b());
        if (this.f26142v) {
            this.f26125e.setVisibility(0);
        } else {
            this.f26125e.setVisibility(4);
        }
        WebViewFragment.getInstance(R.id.web_dialog_web_view_wrapper, getChildFragmentManager(), this.f26141u, "");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Activity activity) {
        super.onAttach(activity);
        this.f26140t = activity;
        this.f26134n = new eb.b(activity);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog appCompatDialog = new AppCompatDialog(getContext(), R.style.commonDialog);
        this.f26133m = appCompatDialog.getWindow();
        int color = getResources().getColor(R.color.app_blue);
        this.f26129i = color;
        int i9 = this.f26131k;
        this.f26128h = FaceImageUtils.createDrawable(color, new float[]{0.0f, 0.0f, 0.0f, 0.0f, i9, i9, i9, i9});
        Window window = this.f26133m;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f26133m.getAttributes();
            this.f26132l = attributes;
            attributes.width = -1;
            attributes.height = -1;
            attributes.gravity = 80;
            this.mGravity = 80;
            this.f26133m.setAttributes(attributes);
        }
        appCompatDialog.setCanceledOnTouchOutside(false);
        appCompatDialog.getWindow().clearFlags(131080);
        appCompatDialog.getWindow().setSoftInputMode(18);
        return appCompatDialog;
    }
}
