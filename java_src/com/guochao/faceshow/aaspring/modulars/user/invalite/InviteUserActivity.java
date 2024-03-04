package com.guochao.faceshow.aaspring.modulars.user.invalite;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import c8.a;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.modulars.user.UserFragmentKotlinBridge;
import com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.InvalitedActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.web.WebViewActivity;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class InviteUserActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ConstraintLayout f23207a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f23208b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f23209c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f23210d;

    /* renamed from: e  reason: collision with root package name */
    private eb.b f23211e;

    /* renamed from: f  reason: collision with root package name */
    private String f23212f;

    /* renamed from: g  reason: collision with root package name */
    private String f23213g;

    /* renamed from: h  reason: collision with root package name */
    private String f23214h;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InviteUserActivity.this.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            animator.start();
        }
    }

    /* loaded from: classes3.dex */
    class c implements h {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity.h
        public void a() {
            InviteUserActivity.this.findViewById(R.id.method1).setVisibility(0);
            InviteUserActivity.this.findViewById(R.id.invite_ll).setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity.h
        public void b() {
            InviteUserActivity.this.findViewById(R.id.method1).setVisibility(8);
            InviteUserActivity.this.findViewById(R.id.invite_ll).setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    class d implements h {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity.h
        public void a() {
            InviteUserActivity.this.findViewById(R.id.method2).setVisibility(0);
            InviteUserActivity.this.findViewById(R.id.method2_lay).setVisibility(0);
            InviteUserActivity.this.findViewById(R.id.rules_content).setVisibility(0);
            InviteUserActivity.this.findViewById(R.id.rules_content_title).setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.user.invalite.InviteUserActivity.h
        public void b() {
            InviteUserActivity.this.findViewById(R.id.method2).setVisibility(8);
            InviteUserActivity.this.findViewById(R.id.method2_lay).setVisibility(8);
            InviteUserActivity.this.findViewById(R.id.rules_content).setVisibility(8);
            InviteUserActivity.this.findViewById(R.id.rules_content_title).setVisibility(8);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull @NotNull g7.a<String> aVar) {
            LogUtils.i("zune: ", "exp: " + aVar);
            InviteUserActivity.this.f23209c.setText(String.valueOf(0));
            InviteUserActivity.this.f23210d.setText(String.valueOf(0));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if (str == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            try {
                JSONObject jSONObject = (JSONObject) new JSONObject(str).get("result");
                int i9 = jSONObject.getInt("sum");
                int i10 = jSONObject.getInt(AnimatedPasterJsonConfig.CONFIG_COUNT);
                InviteUserActivity.this.f23209c.setText(String.valueOf(i9));
                InviteUserActivity.this.f23210d.setText(String.valueOf(i10));
            } catch (Exception unused) {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
            InviteUserActivity.this.u0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements a.h {
        f() {
        }

        @Override // c8.a.h
        public void a() {
            if (InviteUserActivity.this.isFinishing() || InviteUserActivity.this.isDestroyed()) {
                return;
            }
            if (InviteUserActivity.this.f23208b != null) {
                InviteUserActivity.this.f23208b.setText(InviteUserActivity.this.getString(R.string.loading));
            }
            InviteUserActivity.this.u0();
        }

        @Override // c8.a.h
        public void b(AdsBean adsBean) {
            if (InviteUserActivity.this.isFinishing() || InviteUserActivity.this.isDestroyed()) {
                return;
            }
            if (InviteUserActivity.this.f23208b != null) {
                InviteUserActivity.this.f23208b.setText(InviteUserActivity.this.getString(R.string.ugc_claim));
            }
            p9.a.g().B(p9.a.g().f() + 1);
            InviteUserActivity.this.u0();
        }

        @Override // c8.a.h
        public void c(String str) {
            if (InviteUserActivity.this.isFinishing() || InviteUserActivity.this.isDestroyed()) {
                return;
            }
            if (InviteUserActivity.this.f23208b != null) {
                InviteUserActivity.this.f23208b.setText(InviteUserActivity.this.getString(R.string.ugc_claim));
            }
            InviteUserActivity.this.u0();
        }

        @Override // c8.a.h
        public void onError() {
            if (InviteUserActivity.this.isFinishing() || InviteUserActivity.this.isDestroyed()) {
                return;
            }
            InviteUserActivity.this.f23207a.setVisibility(8);
            ((TextView) InviteUserActivity.this.findViewById(R.id.method3)).setVisibility(8);
            InviteUserActivity.this.u0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                c8.a.r().y(InviteUserActivity.this.getActivity());
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void a();

        void b();
    }

    private void o0() {
        if (getCurrentUser().getRegType() != 2 && c8.a.r().q() != 0 && getCurrentUser().getRiskLevel() <= 1) {
            c8.a.r().w(this, new f());
            this.f23207a.setOnClickListener(new g());
            return;
        }
        this.f23207a.setVisibility(8);
        ((TextView) findViewById(R.id.method3)).setVisibility(8);
        u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            c8.a.r().y(getActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(View view) {
        this.f23211e.F(getWindow().getDecorView().getRootView(), this.f23212f, TextUtils.isEmpty(this.f23213g) ? this.f23214h : this.f23213g, null, this.f23214h, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        startActivity(new Intent(getActivity(), InvalitedActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s0(View view) {
        WebViewActivity.createBuilder().e(19).a(view.getContext());
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, InviteUserActivity.class));
    }

    private void t0(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.9f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.9f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(2000L);
        animatorSet.addListener(new b());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v2, types: [int, boolean] */
    public void u0() {
        ?? isShown = findViewById(R.id.invite_ll).isShown();
        TextView textView = (TextView) findViewById(R.id.method1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("%s: ");
        sb2.append(isShown == 0 ? "" : Integer.valueOf((int) isShown));
        textView.setText(String.format(sb2.toString(), getString(R.string.invite_user_earn_method)));
        int i9 = isShown;
        if (findViewById(R.id.method2_lay).isShown()) {
            i9 = isShown + 1;
        }
        TextView textView2 = (TextView) findViewById(R.id.method2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("%s: ");
        sb3.append(i9 == 0 ? "" : Integer.valueOf(i9));
        textView2.setText(String.format(sb3.toString(), getString(R.string.invite_user_earn_method)));
        int i10 = i9;
        if (this.f23207a.isShown()) {
            i10 = i9 + 1;
        }
        TextView textView3 = (TextView) findViewById(R.id.method3);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("%s: ");
        sb4.append(i10 != 0 ? Integer.valueOf(i10) : "");
        textView3.setText(String.format(sb4.toString(), getString(R.string.invite_user_earn_method)));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_invite_user;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle("");
        v vVar = this.mTitleBarHelper;
        if (vVar != null && (vVar.d() instanceof ImageButton)) {
            ((ImageButton) this.mTitleBarHelper.d()).setImageResource(R.drawable.icon_left_back_sign_center);
            this.mTitleBarHelper.d().setOnClickListener(new a());
        }
        this.f23207a = (ConstraintLayout) findViewById(R.id.ads_ll);
        this.f23208b = (TextView) findViewById(R.id.ads_tv);
        this.f23209c = (TextView) findViewById(R.id.tv_invite_diamonds);
        this.f23210d = (TextView) findViewById(R.id.tv_invite_users);
        t0((TextView) findViewById(R.id.invite_money));
        t0(this.f23208b);
        this.f23207a.setOnClickListener(new View.OnClickListener() { // from class: ha.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteUserActivity.this.p0(view);
            }
        });
        FontUtils.setFont(this.f23210d, 3);
        FontUtils.setFont(this.f23209c, 3);
        FontUtils.setFont((TextView) findViewById(R.id.price_invite_user), 3);
        TextViewUtils.setCustomBold(R.dimen.text_bold_level_1, (TextView) findViewById(R.id.tv_invite_users), (TextView) findViewById(R.id.tv_invite_diamonds), (TextView) findViewById(R.id.price_invite_user));
        this.f23211e = new eb.b(this);
        this.f23212f = SpUtils.getStr(this, Contants.USER_NICKNAME) + getResources().getString(R.string.invalite_friend);
        this.f23213g = getResources().getString(R.string.invalite_describ);
        String a10 = qa.a.a(SpUtils.getStr(this, Contants.USER_ID).getBytes());
        this.f23214h = "https://www.buzzcast.info/index.html?token=" + a10;
        findViewById(R.id.btn_invite_user).setOnClickListener(new View.OnClickListener() { // from class: ha.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteUserActivity.this.q0(view);
            }
        });
        t0(findViewById(R.id.btn_invite_user));
        findViewById(R.id.invite_register_users).setOnClickListener(new View.OnClickListener() { // from class: ha.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteUserActivity.this.r0(view);
            }
        });
        ((TextView) findViewById(R.id.rules_content)).setText("      " + getString(R.string.invite_money_rule_tip) + getString(R.string.invite_user_rules_content1) + getString(R.string.invite_user_rules_content2) + getString(R.string.invite_user_rules_content3) + getString(R.string.invite_user_rules_content4));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        UserFragmentKotlinBridge.checkInviteMoneyEnable(new c());
        UserFragmentKotlinBridge.checkInviteDiamondEnable(new d());
        findViewById(R.id.invite_ll).setOnClickListener(new View.OnClickListener() { // from class: ha.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InviteUserActivity.s0(view);
            }
        });
        o0();
        post("api/page/getInvitation").M(new e());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c8.a.r().z();
        v9.c.c();
    }
}
