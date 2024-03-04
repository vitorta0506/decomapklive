package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.login.bean.ThirdPartyLoginPlatform;
import com.guochao.faceshow.aaspring.modulars.login.fragment.ThirdPartyLoginTypeFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.LoginGate;
import com.guochao.faceshow.aaspring.modulars.login.utils.e;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.modulars.login.utils.o;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.NewYearEventUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.component.f2fmatch.service.F2fForegroundService;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SystemUtil;
import com.guochao.faceshow.web.WebViewActivity;
import com.huawei.hms.framework.common.ContainerUtils;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class ChooseLoginTypeActivity extends BaseLoginActivity {
    @BindView
    LoginAnimationView animationViewPro;

    /* renamed from: i  reason: collision with root package name */
    private FriendListViewModel f20189i;

    /* renamed from: j  reason: collision with root package name */
    private ObjectAnimator f20190j;
    @BindView
    LinearLayout lay_login;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20191a;

        a(boolean z10) {
            this.f20191a = z10;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NotNull View view) {
            WebViewActivity.createBuilder().e(5).a(ChooseLoginTypeActivity.this.getActivity());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NotNull TextPaint textPaint) {
            textPaint.setUnderlineText(!this.f20191a);
            textPaint.setColor(Color.parseColor("#222222"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f20193a;

        b(boolean z10) {
            this.f20193a = z10;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            WebViewActivity.createBuilder().e(3).a(ChooseLoginTypeActivity.this.getActivity());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(!this.f20193a);
            textPaint.setColor(Color.parseColor("#222222"));
        }
    }

    /* loaded from: classes3.dex */
    class c implements Animator.AnimatorListener {
        c() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ChooseLoginTypeActivity.this.f20190j = null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            ChooseLoginTypeActivity.this.lay_login.setVisibility(0);
        }
    }

    private void n0() {
        if (getIntent() == null) {
            return;
        }
        if (LOCAL_EVENT_MSG.ACCOUNT_LOGIN_OTHER_PLACE.equals(getIntent().getAction())) {
            alert(getString(R.string.accout_login_other));
        } else if (LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT.equals(getIntent().getAction())) {
            String stringExtra = getIntent().getStringExtra(LOCAL_EVENT_MSG.PARAMS_MSG_KEY);
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            alert(stringExtra);
        }
    }

    private void o0() {
        if (getIntent() != null) {
            getIntent().getBooleanExtra(PushUtils.KEY_FROM_PUSH, false);
        }
    }

    private void q0() {
        o0();
        n0();
    }

    public static void start(Context context) {
        if (context == null) {
            context = BaseApplication.getInstance();
        }
        Intent intent = new Intent(context, ChooseLoginTypeActivity.class);
        intent.setFlags(268468224);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_choose_login_type;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.lay_login, "translationY", ScreenTools.getScreenHeight(), this.lay_login.getY());
        this.f20190j = ofFloat;
        ofFloat.setDuration(700L);
        this.f20190j.setStartDelay(1000L);
        this.f20190j.setRepeatCount(0);
        this.f20190j.addListener(new c());
        this.f20190j.start();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @OnClick
    public void loginWithFaceBook(View view) {
        if (LoginGate.canLogin()) {
            D(view, Constants.ThirdPartyLogin.PHONE);
        }
    }

    @OnClick
    public void loginWithGoogle(View view) {
        if (LoginGate.canLogin()) {
            j e10 = j.e();
            ThirdPartyLoginPlatform thirdPartyLoginPlatform = Constants.ThirdPartyLogin.GOOGLE;
            e10.z(thirdPartyLoginPlatform);
            D(view, thirdPartyLoginPlatform);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        FriendListViewModel friendListViewModel = (FriendListViewModel) new ViewModelProvider(GCApplication.app()).get(FriendListViewModel.class);
        this.f20189i = friendListViewModel;
        friendListViewModel.reset();
        VoiceRoomMiniHelper.releaseAll();
        z8.c.o().J(true, false);
        FaceToFaceFloatWindowManager.getInstance().closeFaceToFacePerformClick(this);
        j.e().p();
        z7.a.a().c(null);
        getWindow().setFormat(-2);
        com.guochao.faceshow.aaspring.manager.im.b.l0().W();
        F2fForegroundService.stop(this);
        UserStateHolder.reset();
        super.onCreate(bundle);
        q0();
        p0();
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().replace(R.id.third_party_login, new ThirdPartyLoginTypeFragment()).commit();
        }
        e.a(this);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.choose_login_page, "1");
        NewYearEventUtils.reset();
        SigninManager.INSTANCE.resetCount(false);
        getLifecycle().addObserver(this.animationViewPro);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ObjectAnimator objectAnimator = this.f20190j;
        if (objectAnimator != null) {
            if (objectAnimator.isRunning()) {
                this.f20190j.end();
            }
            this.f20190j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        dismissProgressDialog();
    }

    public void p0() {
        String lowerCase = getString(R.string.term_of_use).toLowerCase();
        String lowerCase2 = getString(R.string.privacy_policy).toLowerCase();
        String format = String.format(getString(R.string.login_privacy_tips), ContainerUtils.FIELD_DELIMITER);
        boolean equals = "vivo NEX A".equals(SystemUtil.getSystemModel());
        a aVar = new a(equals);
        b bVar = new b(equals);
        TextView textView = (TextView) findViewById(R.id.privacy_tip);
        textView.setIncludeFontPadding(true);
        SpannableString spannableString = new SpannableString(format);
        try {
            int indexOf = format.toLowerCase().indexOf(lowerCase);
            int length = lowerCase.length();
            int indexOf2 = format.toLowerCase().indexOf(lowerCase2);
            int length2 = lowerCase2.length();
            int i9 = length + indexOf;
            spannableString.setSpan(aVar, indexOf, i9, 33);
            if (equals) {
                spannableString.setSpan(new o(), indexOf, i9, 33);
            }
            int i10 = length2 + indexOf2;
            spannableString.setSpan(bVar, indexOf2, i10, 33);
            if (equals) {
                spannableString.setSpan(new o(), indexOf2, i10, 33);
            }
            textView.setText(spannableString);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        } catch (Exception e10) {
            textView.setText(spannableString);
            LogUtils.i("zune：", "setPrivacy = " + e10);
        }
    }
}
