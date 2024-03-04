package com.guochao.faceshow.aaspring.modulars.cancelaccount;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.CancelAccountRequestBean;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelConditionActivity;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.WarnDialog;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class CancelConditionActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private View f16602a;

    /* renamed from: b  reason: collision with root package name */
    private View f16603b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16604c;

    /* renamed from: d  reason: collision with root package name */
    private CancelAccountRequestBean f16605d;

    /* loaded from: classes3.dex */
    class a extends TypeToken<Map<Integer, Boolean>> {
        a() {
        }
    }

    public static void A0(Context context, Map<Integer, Boolean> map, CancelAccountRequestBean cancelAccountRequestBean) {
        Intent intent = new Intent(context, CancelConditionActivity.class);
        intent.putExtra("requestMap", GsonGetter.getGson().toJson(map));
        intent.putExtra("requestData", cancelAccountRequestBean);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(View view, int i9) {
        ((ImageView) ((ViewGroup) findViewById(R.id.second_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        view.setVisibility(8);
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(final View view) {
        WarnDialog.T1(getSupportFragmentManager(), 1).setOnConfirmClickListener(new WarnDialog.a() { // from class: d8.m
            @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.WarnDialog.a
            public final void a(int i9) {
                CancelConditionActivity.this.n0(view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p0(View view, int i9) {
        ((ImageView) ((ViewGroup) findViewById(R.id.third_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        view.setVisibility(8);
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q0(final View view) {
        WarnDialog.T1(getSupportFragmentManager(), 2).setOnConfirmClickListener(new WarnDialog.a() { // from class: d8.l
            @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.WarnDialog.a
            public final void a(int i9) {
                CancelConditionActivity.this.p0(view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view, int i9) {
        ((ImageView) ((ViewGroup) findViewById(R.id.forth_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        view.setVisibility(8);
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s0(final View view) {
        WarnDialog.T1(getSupportFragmentManager(), 3).setOnConfirmClickListener(new WarnDialog.a() { // from class: d8.n
            @Override // com.guochao.faceshow.aaspring.modulars.cancelaccount.warndialog.WarnDialog.a
            public final void a(int i9) {
                CancelConditionActivity.this.r0(view, i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(View view) {
        View view2 = this.f16603b;
        view2.setSelected(!view2.isSelected());
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(View view) {
        CancelAccountRequestBean cancelAccountRequestBean = this.f16605d;
        if (cancelAccountRequestBean != null) {
            cancelAccountRequestBean.setCheckList("1,2,3,4");
        }
        CancelImportantTipActivity.e0(view.getContext(), this.f16605d);
    }

    private void v0() {
        boolean z10 = true;
        this.f16602a.setEnabled(((this.f16604c && findViewById(R.id.condition_detail2).getVisibility() == 8 && findViewById(R.id.condition_detail3).getVisibility() == 8 && findViewById(R.id.condition_detail4).getVisibility() == 8) && this.f16603b.isSelected()) ? false : false);
    }

    private void y0(@Nullable Map<Integer, Boolean> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        Boolean bool = map.get(0);
        Boolean bool2 = map.get(1);
        Boolean bool3 = map.get(2);
        if (bool != null && bool.booleanValue()) {
            this.f16604c = true;
            ((ImageView) ((ViewGroup) findViewById(R.id.first_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        } else {
            this.f16604c = false;
            ((ImageView) ((ViewGroup) findViewById(R.id.first_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_warn);
        }
        if (bool2 != null && bool2.booleanValue()) {
            findViewById(R.id.condition_detail2).setVisibility(8);
            ((ImageView) ((ViewGroup) findViewById(R.id.second_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        } else {
            findViewById(R.id.condition_detail2).setVisibility(0);
            ((ImageView) ((ViewGroup) findViewById(R.id.second_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_warn);
        }
        if (bool3 != null && bool3.booleanValue()) {
            findViewById(R.id.condition_detail3).setVisibility(8);
            ((ImageView) ((ViewGroup) findViewById(R.id.third_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
        } else {
            findViewById(R.id.condition_detail3).setVisibility(0);
            ((ImageView) ((ViewGroup) findViewById(R.id.third_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_warn);
        }
        if (bool3 != null && bool3.booleanValue()) {
            findViewById(R.id.condition_detail4).setVisibility(8);
            ((ImageView) ((ViewGroup) findViewById(R.id.forth_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_normal);
            return;
        }
        findViewById(R.id.condition_detail4).setVisibility(0);
        ((ImageView) ((ViewGroup) findViewById(R.id.forth_warn_lay)).getChildAt(0)).setImageResource(R.mipmap.icon_cancel_condition_warn);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_cancel_condition;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        String stringExtra = getIntent().getStringExtra("requestMap");
        CancelAccountRequestBean cancelAccountRequestBean = (CancelAccountRequestBean) getIntent().getParcelableExtra("requestData");
        this.f16605d = cancelAccountRequestBean;
        if (cancelAccountRequestBean == null) {
            finish();
            return;
        }
        ((TextView) findViewById(R.id.cancel_account_condition_tip)).setText(getString(R.string.notice) + ":\n" + getString(R.string.cancel_account_condition_tip) + IOUtils.LINE_SEPARATOR_UNIX + getString(R.string.cancel_account_condition_tips));
        Map<Integer, Boolean> map = stringExtra != null ? (Map) GsonGetter.getGson().fromJson(stringExtra, new a().getType()) : null;
        setTitle(R.string.cancel_account_condition);
        findViewById(R.id.condition_detail2).setOnClickListener(new View.OnClickListener() { // from class: d8.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelConditionActivity.this.o0(view);
            }
        });
        findViewById(R.id.condition_detail3).setOnClickListener(new View.OnClickListener() { // from class: d8.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelConditionActivity.this.q0(view);
            }
        });
        findViewById(R.id.condition_detail4).setOnClickListener(new View.OnClickListener() { // from class: d8.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelConditionActivity.this.s0(view);
            }
        });
        this.f16603b = findViewById(R.id.image_view);
        this.f16602a = findViewById(R.id.next_step);
        ((ViewGroup) this.f16603b.getParent()).setOnClickListener(new View.OnClickListener() { // from class: d8.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelConditionActivity.this.t0(view);
            }
        });
        this.f16602a.setOnClickListener(new View.OnClickListener() { // from class: d8.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelConditionActivity.this.u0(view);
            }
        });
        y0(map);
        v0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
