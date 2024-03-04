package com.guochao.faceshow.aaspring.modulars.login.activity;

import android.app.Dialog;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.CalenderUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.DatePickerView;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.h;
import io.reactivex.k;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class ForcedUpdateActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private int f20293a;

    /* renamed from: b  reason: collision with root package name */
    Calendar f20294b;

    /* renamed from: c  reason: collision with root package name */
    private int f20295c;

    /* renamed from: d  reason: collision with root package name */
    private int f20296d;

    /* renamed from: e  reason: collision with root package name */
    private int f20297e;

    /* renamed from: f  reason: collision with root package name */
    SimpleDateFormat f20298f = new SimpleDateFormat("yyyy-MM-dd");
    @BindView
    ViewGroup mBoy;
    @BindView
    DatePickerView mDatePickerView;
    @BindView
    ViewGroup mGirl;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements DatePickerView.f {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.DatePickerView.f
        public void I1(Calendar calendar, int i9, int i10, int i11) {
            ForcedUpdateActivity.this.f20294b = Calendar.getInstance(Locale.US);
            ForcedUpdateActivity.this.f20294b.set(1, i9);
            ForcedUpdateActivity.this.f20294b.set(2, i10);
            ForcedUpdateActivity.this.f20294b.set(5, i11);
            ForcedUpdateActivity.this.f20294b.set(11, 0);
            ForcedUpdateActivity.this.f20294b.set(12, 0);
            ForcedUpdateActivity.this.f20294b.set(13, 0);
            ForcedUpdateActivity.this.d0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<Object> aVar) {
            ForcedUpdateActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ForcedUpdateActivity.this.dismissProgressDialog();
            ForcedUpdateActivity.this.finish();
            ForcedUpdateActivity.this.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends SimpleObserver<Integer> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            super.onNext((c) num);
            y7.a.a().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {
        d() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    private void e0() {
        String stringExtra = getIntent().getStringExtra("birthday");
        if (EmptyUtils.isEmpty(stringExtra)) {
            this.mDatePickerView.k(1999, 0, 1);
        } else {
            String[] split = stringExtra.split("-");
            try {
                this.f20295c = Integer.parseInt(split[0]);
                this.f20296d = Integer.parseInt(split[1]);
                this.f20297e = Integer.parseInt(split[2]);
            } catch (Exception unused) {
                this.f20295c = 1999;
                this.f20296d = 0;
                this.f20297e = 1;
            }
            this.mDatePickerView.k(this.f20295c, this.f20296d - 1, this.f20297e);
        }
        this.mDatePickerView.setOnDateChangedListener(new a());
    }

    private void g0() {
        int intExtra = getIntent().getIntExtra("sex", 0);
        if (EmptyUtils.isEmpty(Integer.valueOf(intExtra))) {
            this.mGirl.setSelected(true);
        } else if (intExtra != 0 && intExtra != 2) {
            this.f20293a = 1;
            this.mBoy.setSelected(true);
            this.mGirl.setSelected(false);
        } else {
            this.f20293a = 0;
            this.mBoy.setSelected(false);
            this.mGirl.setSelected(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        k.just(1).delay(500L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new c());
    }

    private void showDialog() {
        h.f(this, null, getString(R.string.could_not_reg_under_13), true, new d());
    }

    @OnClick
    public void confirmJumpMainAcitivity(View view) {
        if (DisableDoubleClickUtils.canClick(view) && this.f20294b != null) {
            if (((int) ((CalenderUtils.getDaysBetween(Calendar.getInstance(), this.f20294b) / 365) + 0.5d)) >= 18) {
                k0(this.f20293a, this.f20298f.format(this.f20294b.getTime()));
                return;
            }
            showDialog();
        }
    }

    public void d0() {
        findViewById(R.id.next).setEnabled((this.f20293a == 2 || this.f20294b == null) ? false : true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_forced_update;
    }

    @OnClick
    public void initGender(View view) {
        int id2 = view.getId();
        if (id2 == R.id.boy_fram) {
            this.mBoy.setSelected(true);
            this.mGirl.setSelected(false);
            this.f20293a = 1;
        } else if (id2 == R.id.girl_fram) {
            this.mBoy.setSelected(false);
            this.mGirl.setSelected(true);
            this.f20293a = 0;
        }
        d0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        g0();
        e0();
    }

    public void k0(int i9, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("sex", String.valueOf(i9));
        hashMap.put("birthday", str);
        showProgressDialog("");
        getHttpClient().b(this, "tokens/user/info/setUserSexAndBirthday", hashMap, new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        return i9 == 4;
    }
}
