package com.guochao.faceshow.aaspring.modulars.dressmarket.send;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.modulars.chat.models.DressPresentMessage;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.SendUserResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BuyDressSuccessDialog;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendActivity;
import com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipContainerDialogFragment;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.r;
import java.util.ArrayList;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;
import p9.a;
/* loaded from: classes3.dex */
public class DressUpSendActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private View f17696a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<String> f17697b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private TextView f17698c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f17699d;

    /* renamed from: e  reason: collision with root package name */
    private DressResponse.DressBean f17700e;

    /* renamed from: f  reason: collision with root package name */
    private DressSpecBean f17701f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f17702g;

    /* loaded from: classes3.dex */
    class a implements DressUpSendFragment.c {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendFragment.c
        public void a(SendUserResponse.SendUser sendUser) {
            DressUpSendActivity.this.f17697b.remove(sendUser.getCurrentUserId());
            DressUpSendActivity.this.y0();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendFragment.c
        public void b(SendUserResponse.SendUser sendUser) {
            if (!DressUpSendActivity.this.f17697b.contains(sendUser.getCurrentUserId())) {
                DressUpSendActivity.this.f17697b.add(sendUser.getCurrentUserId());
            }
            DressUpSendActivity.this.y0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                BuyVipContainerDialogFragment.P1(0, DressUpSendActivity.this.getSupportFragmentManager());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {
        c() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                BuyVipContainerDialogFragment.P1(4, DressUpSendActivity.this.getSupportFragmentManager());
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f17706a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements e.a {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendActivity$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0171a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
                C0171a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                /* renamed from: a */
                public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
                    ChatStatusBean chatStatusBean = new ChatStatusBean();
                    chatStatusBean.setChat_switch(1);
                    DressPresentMessage from = DressPresentMessage.from(DressUpSendActivity.this.f17700e.getType(), String.valueOf(DressUpSendActivity.this.f17700e.getMallId()), DressUpSendActivity.this.f17700e.getThumbnailImage(), TextUtils.isEmpty(DressUpSendActivity.this.f17700e.getArThumbnailImage()) ? DressUpSendActivity.this.f17700e.getThumbnailImage() : DressUpSendActivity.this.f17700e.getArThumbnailImage());
                    Iterator it = d.this.f17706a.iterator();
                    while (it.hasNext()) {
                        Integer num2 = (Integer) it.next();
                        SendMessageHandle.sendC2CMessage(String.valueOf(num2), from.getMessage(), o9.b.d().a(chatStatusBean, String.valueOf(num2), from), null);
                    }
                    p9.a.g().C(p9.a.g().f() - DressUpSendActivity.this.f17701f.getLastPrice(), false);
                    FloatMarqueeFragment.d dVar = new FloatMarqueeFragment.d();
                    dVar.f17681a = DressUpSendActivity.this.f17700e.getName();
                    dVar.f17682b = DressUpSendActivity.this.f17700e.getType();
                    EventBus.getDefault().post(dVar);
                    d dVar2 = d.this;
                    DressUpSendActivity.this.A0(dVar2.f17706a);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
                public void onCompleted() {
                    super.onCompleted();
                    DressUpSendActivity.this.f17702g = false;
                    DressUpSendActivity.this.f17699d.setVisibility(8);
                    DressUpSendActivity.this.f17696a.setVisibility(0);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<Integer> aVar) {
                    if (aVar.a() != 0 || aVar.d() == null) {
                        return;
                    }
                    if (aVar.d().intValue() == 0 || aVar.d().intValue() == 1) {
                        DressUpSendActivity.this.showToast(R.string.f_dress_send_error);
                    }
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    DressUpSendActivity.this.f17702g = true;
                    DressUpSendActivity.this.f17699d.setVisibility(0);
                    ((AnimationDrawable) DressUpSendActivity.this.f17699d.getDrawable()).start();
                    DressUpSendActivity.this.f17696a.setVisibility(8);
                    DressUpSendActivity.this.post("tokens/mall/giveGood").y("goodId", Long.valueOf(DressUpSendActivity.this.f17700e.getMallId())).y("ruleId", Long.valueOf(DressUpSendActivity.this.f17701f.getRuleId())).y("acceptId", d.this.f17706a).M(new C0171a());
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        d(ArrayList arrayList) {
            this.f17706a = arrayList;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            RechargeDialog.showDialog(DressUpSendActivity.this.getSupportFragmentManager(), 0, 6);
        }

        @Override // p9.a.f
        public void onResponse() {
            DressUpSendActivity dressUpSendActivity = DressUpSendActivity.this;
            dressUpSendActivity.alert("", dressUpSendActivity.r0(dressUpSendActivity.f17701f), new a(), false).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(final ArrayList<Integer> arrayList) {
        finish();
        HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: r8.b
            @Override // java.lang.Runnable
            public final void run() {
                DressUpSendActivity.this.u0(arrayList);
            }
        }, 500L);
    }

    public static void B0(Context context, DressResponse.DressBean dressBean) {
        Intent intent = new Intent(context, DressUpSendActivity.class);
        intent.putExtra("dressBean", dressBean);
        context.startActivity(intent);
    }

    private void E0() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i9 = 0; i9 < q0().size(); i9++) {
            arrayList.add(Integer.valueOf(Integer.parseInt(q0().get(i9))));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        for (Fragment fragment : getSupportFragmentManager().getFragments()) {
            if (fragment instanceof DressUpSendFragment) {
                DressSpecBean T1 = ((DressUpSendFragment) fragment).T1();
                this.f17701f = T1;
                if (T1 != null) {
                    break;
                }
            }
        }
        if (this.f17701f == null) {
            return;
        }
        if (this.f17700e.getIsVip() == 1) {
            if (getCurrentUser().getVipLevel() == 0) {
                alert("", s0(this.f17700e, false), new b(), false).show();
            } else {
                v0(arrayList);
            }
        } else if (this.f17700e.getIsVip() == 2) {
            if (getCurrentUser().getVipLevel() < 2) {
                alert("", s0(this.f17700e, true), new c(), false).show();
            } else {
                v0(arrayList);
            }
        } else {
            v0(arrayList);
        }
    }

    private CharSequence p0(TextView textView, int i9, String str) {
        int i10;
        Context context = textView.getContext();
        Drawable drawable = ContextCompat.getDrawable(context, R.mipmap.icon_game_diamond);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(context.getString(R.string.f_dress_send_confirm_tip, String.valueOf(i9), String.valueOf(str), "{diamond}"));
        if (drawable == null) {
            return spannableStringBuilder;
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView2 = new TextView(textView.getContext());
        textView2.setTextSize(2, 10.0f);
        textView2.measure(0, 0);
        float measuredHeight = textView2.getMeasuredHeight();
        drawable.setBounds(0, 0, (int) ((measuredHeight / minimumHeight) * minimumWidth), (int) measuredHeight);
        r rVar = new r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
        if (indexOf >= 0 && (i10 = indexOf + 9) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf, i10, 17);
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence r0(DressSpecBean dressSpecBean) {
        if (this.f17700e.getType() == 0) {
            return String.format(getString(R.string.f_dress_alert_send_car), getResources().getQuantityString(dressSpecBean.getQuantityTime(dressSpecBean.getUnit()), dressSpecBean.getDuration(), Integer.valueOf(dressSpecBean.getDuration())), this.f17700e.getName());
        }
        if (this.f17700e.getType() == 2) {
            return String.format(getString(R.string.f_dress_alert_send_chatshading), getResources().getQuantityString(dressSpecBean.getQuantityTime(dressSpecBean.getUnit()), dressSpecBean.getDuration(), Integer.valueOf(dressSpecBean.getDuration())), this.f17700e.getName());
        }
        return this.f17700e.getType() == 1 ? String.format(getString(R.string.f_dress_alert_send_pendant), getResources().getQuantityString(dressSpecBean.getQuantityTime(dressSpecBean.getUnit()), dressSpecBean.getDuration(), Integer.valueOf(dressSpecBean.getDuration())), this.f17700e.getName()) : "";
    }

    private CharSequence s0(DressResponse.DressBean dressBean, boolean z10) {
        if (this.f17700e.getType() == 0) {
            String string = getString(R.string.f_dress_alert_privilege_car);
            Object[] objArr = new Object[2];
            objArr[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string, objArr);
        } else if (this.f17700e.getType() == 2) {
            String string2 = getString(R.string.f_dress_alert_privilege_chatshading);
            Object[] objArr2 = new Object[2];
            objArr2[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr2[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string2, objArr2);
        } else if (this.f17700e.getType() == 1) {
            String string3 = getString(R.string.f_dress_alert_privilege_pendant);
            Object[] objArr3 = new Object[2];
            objArr3[0] = z10 ? "SVIP" : "VIP/SVIP";
            objArr3[1] = z10 ? "SVIP" : "VIP/SVIP";
            return String.format(string3, objArr3);
        } else {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(View view) {
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(ArrayList arrayList) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            BuyDressSuccessDialog.V1(((BaseActivity) currTopActivity).getSupportFragmentManager(), 2, this.f17700e, arrayList);
        }
    }

    private void v0(ArrayList<Integer> arrayList) {
        p9.a.g().q(this, this.f17701f.getLastPrice(), false, true, new d(arrayList));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_dressup_send;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f17700e = (DressResponse.DressBean) getIntent().getParcelableExtra("dressBean");
        setTitle(getString(R.string.f_dress_up_market));
        DressUpSendFragment S1 = DressUpSendFragment.S1(this.f17700e);
        S1.setOnSelectUserChangedListener(new a());
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, S1).commitAllowingStateLoss();
        this.f17696a = findViewById(R.id.layout_confirm);
        this.f17699d = (ImageView) findViewById(R.id.send_loading);
        this.f17696a.setOnClickListener(new View.OnClickListener() { // from class: r8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DressUpSendActivity.this.t0(view);
            }
        });
        this.f17698c = (TextView) findViewById(R.id.confirm_tip);
        y0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f17702g) {
            return;
        }
        super.onBackPressed();
    }

    public ArrayList<String> q0() {
        return this.f17697b;
    }

    public void y0() {
        if (this.f17697b.isEmpty()) {
            ((ViewGroup) this.f17696a.getParent()).setEnabled(false);
            this.f17698c.setText("");
            this.f17698c.setVisibility(8);
        } else {
            ((ViewGroup) this.f17696a.getParent()).setEnabled(true);
            DressSpecBean dressSpecBean = null;
            for (Fragment fragment : getSupportFragmentManager().getFragments()) {
                if ((fragment instanceof DressUpSendFragment) && (dressSpecBean = ((DressUpSendFragment) fragment).T1()) != null) {
                    break;
                }
            }
            if (dressSpecBean == null) {
                return;
            }
            TextView textView = this.f17698c;
            textView.setText(p0(textView, this.f17697b.size(), String.valueOf(this.f17697b.size() * dressSpecBean.getLastPrice())));
            this.f17698c.setVisibility(0);
        }
        for (Fragment fragment2 : getSupportFragmentManager().getFragments()) {
            if (fragment2 instanceof DressUpSendFragment) {
                ((DressUpSendFragment) fragment2).U1();
            }
        }
    }
}
