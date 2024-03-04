package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.Editable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.beans.UploadAvatarResult;
import com.guochao.faceshow.aaspring.dialog.DatePickerDialog;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecaptchaDialogFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.utils.AfterTextChanged;
import com.guochao.faceshow.aaspring.utils.CalenderUtils;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.DateFormatProvider;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.TimeoutRunnable;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.dialog.Photo_Dialog_Fragement_Old;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.utils.Photo_Take_Util;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class CompletePersonalInfoActivity extends BaseActivity implements WebViewFragment.d {

    /* renamed from: a  reason: collision with root package name */
    private List<FriendSettingBean> f20207a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    SparseArray<String> f20208b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    SparseArray<String> f20209c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    Calendar f20210d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f20211e;
    @BindView
    EditText etInviteCode;

    /* renamed from: f  reason: collision with root package name */
    j f20212f;

    /* renamed from: g  reason: collision with root package name */
    private int f20213g;

    /* renamed from: h  reason: collision with root package name */
    k7.a f20214h;

    /* renamed from: i  reason: collision with root package name */
    boolean f20215i;

    /* renamed from: j  reason: collision with root package name */
    TimeoutRunnable f20216j;

    /* renamed from: k  reason: collision with root package name */
    Handler f20217k;

    /* renamed from: l  reason: collision with root package name */
    RecaptchaHandle f20218l;

    /* renamed from: m  reason: collision with root package name */
    RecaptchaDialogFragment f20219m;
    @BindView
    TextView mBoy;
    @BindView
    EditText mEditText;
    @BindView
    TextView mGirl;
    @BindView
    ImageView mImageView;

    /* renamed from: n  reason: collision with root package name */
    AfterTextChanged f20220n;
    @BindView
    TextView next;

    /* renamed from: o  reason: collision with root package name */
    SimpleDateFormat f20221o;

    /* renamed from: p  reason: collision with root package name */
    private Photo_Dialog_Fragement_Old f20222p;

    /* renamed from: q  reason: collision with root package name */
    private String f20223q;

    /* renamed from: r  reason: collision with root package name */
    private String f20224r;
    @BindView
    TextView select_birthday;

    /* loaded from: classes3.dex */
    class a implements com.guochao.faceshow.aaspring.modulars.login.utils.h {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void a(Exception exc) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.h
        public void b(RecaptchaHandle recaptchaHandle) {
            CompletePersonalInfoActivity.this.f20218l = recaptchaHandle;
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<FriendSettingBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<FriendSettingBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<FriendSettingBean> list, @NonNull FaceCastBaseResponse<List<FriendSettingBean>> faceCastBaseResponse) {
            if (list != null) {
                CompletePersonalInfoActivity.this.f20207a.clear();
                CompletePersonalInfoActivity.this.f20207a.addAll(list);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends AfterTextChanged {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            CompletePersonalInfoActivity.this.n0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements DatePickerDialog.d {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.dialog.DatePickerDialog.d
        public void b(Dialog dialog) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.dialog.DatePickerDialog.d
        public void c(Dialog dialog, Calendar calendar, int i9, int i10, int i11) {
            CompletePersonalInfoActivity.this.f20210d = Calendar.getInstance(Locale.US);
            CompletePersonalInfoActivity.this.f20210d.set(1, i9);
            CompletePersonalInfoActivity.this.f20210d.set(2, i10);
            CompletePersonalInfoActivity.this.f20210d.set(5, i11);
            CompletePersonalInfoActivity.this.f20210d.set(11, 0);
            CompletePersonalInfoActivity.this.f20210d.set(12, 0);
            CompletePersonalInfoActivity.this.f20210d.set(13, 0);
            CompletePersonalInfoActivity.this.select_birthday.setText(i9 + "-" + (i10 + 1) + "-" + i11);
            if (((int) ((CalenderUtils.getDaysBetween(Calendar.getInstance(), calendar) / 365) + 0.5d)) >= 18) {
                dialog.dismiss();
            } else {
                CompletePersonalInfoActivity.this.showDialog();
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements com.guochao.faceshow.aaspring.modulars.login.utils.g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20229a;

        e(String str) {
            this.f20229a = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void a(Exception exc) {
            CompletePersonalInfoActivity.this.f20219m = new RecaptchaDialogFragment();
            CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
            completePersonalInfoActivity.f20219m.show(completePersonalInfoActivity.getSupportFragmentManager(), "RecaptchaDialogFragment");
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.utils.g
        public void b(String str) {
            CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
            completePersonalInfoActivity.l0(this.f20229a, str, false, completePersonalInfoActivity.etInviteCode.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements e.a {
        f() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<UploadAvatarResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20232a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f20233b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f20234c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f20235d;

        g(String str, String str2, boolean z10, String str3) {
            this.f20232a = str;
            this.f20233b = str2;
            this.f20234c = z10;
            this.f20235d = str3;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UploadAvatarResult uploadAvatarResult, @NonNull FaceCastBaseResponse<UploadAvatarResult> faceCastBaseResponse) {
            if (uploadAvatarResult == null) {
                onFailure(new g7.a<>());
                return;
            }
            CompletePersonalInfoActivity.this.k0(this.f20232a, uploadAvatarResult.getBigImgUrl(), uploadAvatarResult.getSmallImgUrl(), this.f20233b, this.f20234c, this.f20235d);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UploadAvatarResult> aVar) {
            CompletePersonalInfoActivity.this.showToast(R.string.Network_Error);
            CompletePersonalInfoActivity.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<UserBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20237a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f20238b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f20239c;

        h(String str, j jVar, int i9) {
            this.f20237a = str;
            this.f20238b = jVar;
            this.f20239c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserBean userBean, @NonNull FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            EventTrackingV2Utils.INSTANCE.setRegisterTime(System.currentTimeMillis());
            BaseApplication.getInstance().normalLogined = true;
            CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
            completePersonalInfoActivity.f20212f.q(completePersonalInfoActivity.f20223q);
            j.e().x(this.f20237a);
            try {
                String str = CompletePersonalInfoActivity.this.f20209c.get(this.f20238b.m().getType());
                if (!TextUtils.isEmpty(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString(EventTrackingUtils.ITEM_ID, j.e().o());
                    bundle.putString(EventTrackingUtils.ITEM_NAME, this.f20237a);
                    bundle.putString(EventTrackingUtils.CONTENT_TYPE, str);
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.SIGN_UP, bundle);
                }
            } catch (Exception unused) {
            }
            this.f20238b.p();
            CompletePersonalInfoActivity.this.f20215i = true;
            int i9 = this.f20239c;
            if (i9 == 2) {
                i9 = 3;
            }
            userBean.setRegType(i9);
            b8.e.g().a(userBean, false);
            CompletePersonalInfoActivity.this.startActivity(new Intent(CompletePersonalInfoActivity.this.getActivity(), ChooseRecommendTypeActivity.class).addFlags(32768).putParcelableArrayListExtra("data", (ArrayList) CompletePersonalInfoActivity.this.f20207a));
            CompletePersonalInfoActivity.this.finish();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
            completePersonalInfoActivity.f20217k.removeCallbacks(completePersonalInfoActivity.f20216j);
            CompletePersonalInfoActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
            if (aVar.a() == 40008) {
                CompletePersonalInfoActivity.this.showToast(R.string.The_nickname_has_been_used);
                UserBean d10 = aVar.d();
                EditText editText = CompletePersonalInfoActivity.this.mEditText;
                if (editText != null) {
                    editText.setText(d10.nickName);
                    try {
                        EditText editText2 = CompletePersonalInfoActivity.this.mEditText;
                        editText2.setSelection(editText2.length());
                    } catch (Exception unused) {
                    }
                }
            } else if (aVar.a() == 40009) {
                CompletePersonalInfoActivity.this.showToast(R.string.The_nickname_contains_sensitive_words);
                EditText editText3 = CompletePersonalInfoActivity.this.mEditText;
                if (editText3 != null) {
                    editText3.setText("");
                }
            } else if (aVar.a() == 40017) {
                CompletePersonalInfoActivity.this.showToast(R.string.registed_err);
                Intent intent = new Intent();
                intent.putExtra("type", 1);
                CompletePersonalInfoActivity.this.setResult(10023, intent);
                CompletePersonalInfoActivity.this.finish();
            } else if (aVar.a() == 40012) {
                CompletePersonalInfoActivity.this.showDialog();
            } else if (aVar.a() == 40018) {
                CompletePersonalInfoActivity.this.showToast(aVar.c());
            } else if (aVar.a() == 1010) {
                CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
                completePersonalInfoActivity.showToast(completePersonalInfoActivity.getString(R.string.minganci_nickname));
            } else if (aVar.a() == 0) {
                CompletePersonalInfoActivity.this.showToast(TextUtils.isEmpty(aVar.c()) ? CompletePersonalInfoActivity.this.getString(R.string.translate_error) : aVar.c());
            } else {
                com.guochao.faceshow.aaspring.modulars.login.utils.e.d(CompletePersonalInfoActivity.this.getActivity(), aVar);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements HalloweenJSAction.OnCallBack {
        i() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void getReCaptChaToken(Object obj) {
            RecaptchaDialogFragment recaptchaDialogFragment = CompletePersonalInfoActivity.this.f20219m;
            if (recaptchaDialogFragment != null) {
                recaptchaDialogFragment.dismiss();
            }
            String str = (String) obj;
            CompletePersonalInfoActivity.this.debugAlert(str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String trim = CompletePersonalInfoActivity.this.mEditText.getText().toString().trim();
            CompletePersonalInfoActivity completePersonalInfoActivity = CompletePersonalInfoActivity.this;
            completePersonalInfoActivity.l0(trim, str, true, completePersonalInfoActivity.etInviteCode.getText().toString());
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public void onInviteClick() {
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void onInviteClick(Object obj) {
            com.guochao.faceshow.web.jsinterface.a.b(this, obj);
        }

        @Override // com.guochao.faceshow.web.jsinterface.HalloweenJSAction.OnCallBack
        public /* synthetic */ void playWinAnimation() {
            com.guochao.faceshow.web.jsinterface.a.c(this);
        }
    }

    public CompletePersonalInfoActivity() {
        this.f20208b.put(7, "fb");
        this.f20208b.put(10, "ins");
        this.f20208b.put(9, "Google");
        this.f20208b.put(11, "line");
        this.f20208b.put(3, "手机号");
        this.f20208b.put(2, "邮箱");
        this.f20208b.put(12, "VK");
        this.f20208b.put(4, "微信");
        this.f20208b.put(6, "微博");
        this.f20208b.put(5, "QQ");
        this.f20208b.put(8, Constants.ThirdPartyLogin.PLATFORM_TWITTER);
        this.f20209c.put(7, "Facebook");
        this.f20209c.put(10, "Instagram");
        this.f20209c.put(9, "Google");
        this.f20209c.put(11, Constants.ThirdPartyLogin.PLATFORM_LINE);
        this.f20209c.put(12, Constants.ThirdPartyLogin.PLATFORM_VK);
        this.f20209c.put(4, "Wechat");
        this.f20209c.put(6, "SinaWeibo");
        this.f20209c.put(5, "QQ");
        this.f20209c.put(8, Constants.ThirdPartyLogin.PLATFORM_TWITTER);
        this.f20209c.put(3, "mobile");
        this.f20209c.put(2, "email");
        this.f20211e = false;
        this.f20215i = false;
        this.f20216j = new TimeoutRunnable();
        this.f20217k = new Handler();
        this.f20220n = new c();
        this.f20221o = DateFormatProvider.getDefaultFormatter("yyyy-MM-dd");
    }

    private void hideKeyboard(IBinder iBinder) {
        InputMethodManager inputMethodManager;
        if (iBinder == null || getActivity() == null || (inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(iBinder, 2);
    }

    private boolean isShouldHideKeyboard(View view, MotionEvent motionEvent) {
        if (view instanceof EditText) {
            int[] iArr = {0, 0};
            view.getLocationInWindow(iArr);
            int i9 = iArr[0];
            int i10 = iArr[1];
            return motionEvent.getX() <= ((float) i9) || motionEvent.getX() >= ((float) (view.getWidth() + i9)) || motionEvent.getY() <= ((float) i10) || motionEvent.getY() >= ((float) (view.getHeight() + i10));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(String str, String str2, String str3, String str4, boolean z10, String str5) {
        j jVar = this.f20212f;
        if (jVar.m() == null) {
            dismissProgressDialog();
            return;
        }
        PostRequest Q = new PostRequest().O(this).Q("user/reg");
        int type = this.f20212f.m().getType();
        Q.y("type", Integer.valueOf(type));
        int type2 = jVar.m().getType();
        if (type2 == 2) {
            Q.y("usernum", StringUtils.convertNumberToNormalNumber(jVar.f()));
            Q.y("pwd", jVar.l());
        } else if (type2 != 3) {
            Q.y("usernum", jVar.o());
            if (!TextUtils.isEmpty(str4)) {
                Q.y("recaptchaToken", str4);
                if (z10) {
                    Q.y("beFrom", "webs");
                }
            }
            if (!TextUtils.isEmpty(jVar.f())) {
                Q.y("email", jVar.f());
            }
        } else {
            Q.y("usernum", StringUtils.convertNumberToNormalNumber(jVar.j()));
            Q.y("pwd", jVar.l());
        }
        Q.y("nickName", str);
        Q.y("birthday", jVar.c());
        Q.y("img", str2);
        if (!TextUtils.isEmpty(str3)) {
            Q.y("smallImg", str3);
        } else {
            Q.y("smallImg", str2);
        }
        String a10 = this.f20212f.a(this);
        if (!TextUtils.isEmpty(a10)) {
            if (a10.startsWith("new-game-facecast-")) {
                String[] split = a10.split("-");
                if (split.length == 5) {
                    Q.y("gameCode", split[split.length - 1]);
                    Q.y("recommendUser", a10.substring(0, a10.length() - 2));
                }
            } else {
                Q.y("recommendUser", a10);
            }
        }
        Q.y("sex", StringUtils.convertNumberToNormalNumber(String.valueOf(jVar.g())));
        Q.y("unionid", jVar.n());
        if (!TextUtils.isEmpty(str5) && str5.length() == 6) {
            Q.y("beInviteCode", str5);
            Q.y("recommendUser", "");
        }
        showProgressDialog("");
        this.f20217k.postDelayed(this.f20216j, 15000L);
        Q.M(new h(str, jVar, type));
    }

    private void m0() {
        Calendar calendar = Calendar.getInstance();
        this.f20210d = calendar;
        calendar.set(1, 1999);
        this.f20210d.set(2, 0);
        this.f20210d.set(5, 1);
        DatePickerDialog.R1(this, this.f20210d, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        if (!TextUtils.isEmpty(this.mEditText.getText()) && !TextUtils.isEmpty(this.select_birthday.getText()) && (this.mBoy.isSelected() || this.mGirl.isSelected())) {
            this.next.setEnabled(true);
        } else {
            this.next.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog() {
        com.guochao.faceshow.views.h.f(this, null, getString(R.string.could_not_reg_under_13), true, new f());
    }

    @OnClick
    public void confirm(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            if (this.f20213g < 0) {
                showToast(R.string.choose_sex);
                return;
            }
            String trim = this.mEditText.getText().toString().trim();
            if (TextUtils.isEmpty(trim)) {
                showToast(R.string.Fill_nick_name_first);
                return;
            }
            String checkKeyword = SensitiveWordFilter.getInstance().checkKeyword(trim);
            if (!TextUtils.isEmpty(trim) && !TextUtils.isEmpty(checkKeyword)) {
                showToast(getString(R.string.minganci_nickname));
            } else if (this.f20210d == null) {
                showToast(R.string.Fill_birthday_first);
            } else {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.select_hoby_page);
                if (((int) ((CalenderUtils.getDaysBetween(Calendar.getInstance(), this.f20210d) / 365) + 0.5d)) >= 18) {
                    String format = this.f20221o.format(this.f20210d.getTime());
                    j e10 = j.e();
                    e10.r(format);
                    e10.u(this.f20213g);
                    if (e10.m() != null && (e10.m().getType() == 2 || e10.m().getType() == 3)) {
                        l0(trim, null, false, this.etInviteCode.getText().toString());
                        return;
                    } else {
                        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().c(this, this.f20218l, new e(trim));
                        return;
                    }
                }
                showDialog();
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View currentFocus;
        if (motionEvent.getAction() == 0 && (currentFocus = getActivity().getCurrentFocus()) != null && isShouldHideKeyboard(currentFocus, motionEvent)) {
            hideKeyboard(currentFocus.getWindowToken());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_complete_personal_info;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().e(this, new a());
        j e10 = j.e();
        this.f20212f = e10;
        if (e10 != null && e10.m() != null) {
            Bundle bundle = new Bundle();
            String str = EventTrackingV2Utils.complete_profile_page;
            bundle.putString(str, this.f20208b.get(this.f20212f.m().getType()));
            EventTrackingV2Utils.INSTANCE.track(str, bundle);
        }
        this.mGirl.setSelected(true);
        String b10 = j.e().b();
        if (!TextUtils.isEmpty(b10) && !"null".equals(b10) && !"https://vk.com/images/camera_400.png?ava=1".equals(b10)) {
            hc.a.j(this.mImageView, b10);
            this.f20211e = true;
        }
        String k10 = j.e().k();
        if (!TextUtils.isEmpty(k10)) {
            this.mEditText.setText(k10);
            this.mEditText.setSelection(k10.length());
        }
        int g10 = j.e().g();
        if (g10 == 0) {
            this.f20213g = 0;
            this.mBoy.setSelected(false);
            this.mGirl.setSelected(true);
        } else if (g10 == 1) {
            this.f20213g = 1;
            this.mBoy.setSelected(true);
            this.mGirl.setSelected(false);
        } else {
            this.f20213g = -1;
            this.mBoy.setSelected(false);
            this.mGirl.setSelected(false);
        }
        setTitle(getString(R.string.Perfecting_Personal_Data));
        this.next.setEnabled(false);
        post("api/makefriendmutli/list/V2").M(new b());
        this.mEditText.addTextChangedListener(this.f20220n);
        this.select_birthday.addTextChangedListener(this.f20220n);
    }

    public void l0(String str, String str2, boolean z10, String str3) {
        j jVar = this.f20212f;
        if (jVar.m() == null) {
            return;
        }
        showProgressDialog("");
        k7.a aVar = this.f20214h;
        if (aVar != null && aVar.a() != null) {
            post(f7.b.f39645j0).R("imgFile", this.f20214h.a()).B(Contants.CURRENT_COUNTRY_FLAG, 2).M(new g(str, str2, z10, str3));
        } else {
            k0(str, TextUtils.isEmpty(jVar.b()) ? "" : jVar.b(), "", str2, z10, str3);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        Bundle extras;
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && !TextUtils.isEmpty(this.f20223q)) {
            if (i9 == 51) {
                Photo_Take_Util.startPhotoZoom(this, this.f20224r, this.f20223q, PhotoCameraPermissionUtils.getmCameraUri(), this);
            } else if (i9 != 52) {
                if (i9 == 69) {
                    Uri b10 = com.yalantis.ucrop.a.b(intent);
                    hc.a.g(this.mImageView, b10);
                    this.f20211e = true;
                    ViewGroup.LayoutParams layoutParams = this.mImageView.getLayoutParams();
                    layoutParams.width = DensityUtil.dp2px(90.0f);
                    layoutParams.height = DensityUtil.dp2px(90.0f);
                    this.mImageView.setLayoutParams(layoutParams);
                    this.f20214h = new k7.a("imgFile", UriUtils.uriToFile(this, b10));
                } else if (i9 == 121) {
                    hc.a.j(this.mImageView, this.f20223q);
                    this.f20211e = true;
                    ViewGroup.LayoutParams layoutParams2 = this.mImageView.getLayoutParams();
                    layoutParams2.width = DensityUtil.dp2px(90.0f);
                    layoutParams2.height = DensityUtil.dp2px(90.0f);
                    this.mImageView.setLayoutParams(layoutParams2);
                    this.f20214h = new k7.a("imgFile", new File(this.f20223q));
                }
            } else if (intent == null) {
                return;
            } else {
                Photo_Take_Util.startPhotoZoom(this, AAImageUtil.getImageAbsolutePath(getActivity(), intent.getData()), this.f20223q, intent.getData(), this);
            }
        }
        if (i9 != 10023 || i10 != -1 || intent == null || (extras = intent.getExtras()) == null) {
            return;
        }
        Photo_Take_Util.startPhotoZoom(this, extras.getString(BaseConfig.INTENT_EXTRA_KEY_QR_SCAN), this.f20223q, (Uri) extras.getParcelable(ShareConstants.MEDIA_URI), this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onBindWebView(WebView webView) {
        RecaptchaDialogFragment recaptchaDialogFragment = this.f20219m;
        if (recaptchaDialogFragment != null) {
            ((HalloweenJSAction) recaptchaDialogFragment.getJSAction()).setOnCallBack(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!this.f20215i) {
            this.f20212f.x("");
            this.f20212f.q(null);
            this.f20212f.u(0);
        }
        this.f20217k.removeCallbacksAndMessages(null);
        com.guochao.faceshow.aaspring.modulars.login.utils.i.d().b(getActivity(), this.f20218l);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public void onLoadErr(int i9, String str, String str2) {
        showToast(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public /* synthetic */ void onPageFinished(WebView webView, String str) {
        com.guochao.faceshow.aaspring.base.fragment.f.a(this, webView, str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    public boolean onShouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            String h10 = this.f20212f.h(getActivity());
            if (!TextUtils.isEmpty(h10) && h10.length() == 6) {
                this.etInviteCode.setText(h10);
            }
            String a10 = this.f20212f.a(getActivity());
            if (a10 != null && a10.startsWith("facecast-")) {
                this.etInviteCode.setText(a10);
            }
            if (TextUtils.isEmpty(this.etInviteCode.getText())) {
                return;
            }
            this.etInviteCode.setEnabled(false);
            this.etInviteCode.setTextColor(ContextCompat.getColor(getActivity(), R.color.color_text_level_3));
        }
    }

    @OnClick
    public void selectGender(View view) {
        int id2 = view.getId();
        if (id2 == R.id.boy_fram) {
            this.mBoy.setSelected(true);
            this.mGirl.setSelected(false);
            this.f20213g = 1;
            if (!this.f20211e) {
                this.mImageView.setImageResource(R.drawable.image_cut);
            }
            n0();
        } else if (id2 != R.id.girl_fram) {
            if (id2 != R.id.select_birthday) {
                return;
            }
            m0();
        } else {
            this.mBoy.setSelected(false);
            this.mGirl.setSelected(true);
            this.f20213g = 0;
            if (!this.f20211e) {
                this.mImageView.setImageResource(R.drawable.image_cut);
            }
            n0();
        }
    }

    @OnClick
    public void selectHeaderImg(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            Photo_Dialog_Fragement_Old photo_Dialog_Fragement_Old = new Photo_Dialog_Fragement_Old();
            this.f20222p = photo_Dialog_Fragement_Old;
            photo_Dialog_Fragement_Old.W1(true);
            String cachePath = FilePathProvider.getCachePath();
            this.f20223q = new File(cachePath, System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG).getAbsolutePath();
            String cachePath2 = FilePathProvider.getCachePath();
            String absolutePath = new File(cachePath2, System.currentTimeMillis() + "_camera.jpg").getAbsolutePath();
            this.f20224r = absolutePath;
            this.f20222p.setCameraPath(absolutePath);
            this.f20222p.setUpdatePath(this.f20223q);
            this.f20222p.show(getSupportFragmentManager(), "Photo_Dialog_Fragment");
        }
    }
}
