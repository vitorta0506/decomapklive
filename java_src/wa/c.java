package wa;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.mine.model.WithdrawalBean;
import com.guochao.faceshow.mine.view.BindCellPhoneActivity;
import com.guochao.faceshow.mine.view.PaymentPasswordSettingActivity;
import com.guochao.faceshow.mine.view.WithdrawalDiamondActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.n;
import java.util.List;
/* loaded from: classes4.dex */
public class c extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<WithdrawalBean> f59407a;

    /* renamed from: b  reason: collision with root package name */
    private Context f59408b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f59409c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WithdrawalBean f59410a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f59411b;

        /* renamed from: wa.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0678a implements e.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ WithdrawalDiamondActivity f59413a;

            C0678a(WithdrawalDiamondActivity withdrawalDiamondActivity) {
                this.f59413a = withdrawalDiamondActivity;
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    this.f59413a.startActivity(PaymentPasswordSettingActivity.class);
                    dialog.dismiss();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class b implements n.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ WithdrawalDiamondActivity f59415a;

            /* renamed from: wa.c$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            class C0679a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
                C0679a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<String> aVar) {
                    if (aVar.a() == -1) {
                        c.this.e();
                    } else if (aVar.a() == 0) {
                        WithdrawalDiamondActivity withdrawalDiamondActivity = b.this.f59415a;
                        ToastUtils.showToast(withdrawalDiamondActivity, withdrawalDiamondActivity.getResources().getString(R.string.password_wrong));
                        a.this.f59411b.f59421b.performClick();
                    } else {
                        ToastUtils.showToast(b.this.f59415a, aVar.c());
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                    b bVar = b.this;
                    a aVar = a.this;
                    c.this.d(aVar.f59410a, bVar.f59415a);
                }
            }

            b(WithdrawalDiamondActivity withdrawalDiamondActivity) {
                this.f59415a = withdrawalDiamondActivity;
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onClose(Dialog dialog, boolean z10) {
            }

            @Override // com.guochao.faceshow.views.n.b
            public void onConfirm(Dialog dialog, boolean z10, String str) {
                new PostRequest().O(this.f59415a).P(this.f59415a).Q(Contants.MATCH_OLD_PAY_PASSWORD).D(Contants.USER_ID, SpUtils.getStr(this.f59415a, Contants.USER_ID)).D("pasword", str).M(new C0679a());
                dialog.dismiss();
            }
        }

        a(WithdrawalBean withdrawalBean, d dVar) {
            this.f59410a = withdrawalBean;
            this.f59411b = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SpUtils.getInt(c.this.f59408b, Contants.FB) >= this.f59410a.getF()) {
                WithdrawalDiamondActivity withdrawalDiamondActivity = (WithdrawalDiamondActivity) c.this.f59408b;
                String str = SpUtils.getStr(withdrawalDiamondActivity, Contants.payPassword);
                if (str.equals("0")) {
                    new e(withdrawalDiamondActivity, R.style.commonDialog, withdrawalDiamondActivity.getResources().getString(R.string.payment_password_no), new C0678a(withdrawalDiamondActivity)).k(withdrawalDiamondActivity.getResources().getString(R.string.payment_password_setting)).show();
                    return;
                } else if (str.equals("1")) {
                    new n(withdrawalDiamondActivity, R.style.commonDialog, withdrawalDiamondActivity.getResources().getString(R.string.setting_enter_payment_password), new b(withdrawalDiamondActivity)).show();
                    return;
                } else {
                    return;
                }
            }
            ToastUtils.showToast(c.this.f59408b, c.this.f59408b.getResources().getString(R.string.fb_not_enough));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (aVar.a() == 100007) {
                Context context = c.this.f59408b;
                ToastUtils.showToast(context, c.this.f59408b.getString(R.string.unavailable) + ": " + c.this.f59408b.getString(R.string.payoneer_notice_tip2));
                return;
            }
            ToastUtils.showToast(c.this.f59408b, aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ToastUtils.showToast(c.this.f59408b, c.this.f59408b.getResources().getString(R.string.common_do_success));
            ((WithdrawalDiamondActivity) c.this.f59408b).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: wa.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0680c implements e.a {
        C0680c() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(c.this.f59408b, BindCellPhoneActivity.class);
                intent.putExtra("from", 3);
                c.this.f59408b.startActivity(intent);
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes4.dex */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        TextView f59420a;

        /* renamed from: b  reason: collision with root package name */
        TextView f59421b;

        d() {
        }
    }

    public c(Context context, List<WithdrawalBean> list, boolean z10) {
        this.f59408b = context;
        this.f59407a = list;
        this.f59409c = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(WithdrawalBean withdrawalBean, WithdrawalDiamondActivity withdrawalDiamondActivity) {
        new PostRequest().O(this.f59408b).P(withdrawalDiamondActivity).Q(Contants.TRANSFORMATION_DIAMOND).D(Contants.USER_ID, SpUtils.getStr(this.f59408b, Contants.USER_ID)).D("withdrawId", String.valueOf(withdrawalBean.getWithdraw_id())).M(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        e eVar = new e(this.f59408b, new C0680c());
        eVar.m(ContextCompat.getColor(this.f59408b, R.color.color_common_dialog_confirm));
        eVar.d(ContextCompat.getColor(this.f59408b, R.color.color_common_dialog_cancel));
        eVar.f(this.f59408b.getString(R.string.withdrawal_pwd_lock));
        eVar.show();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f59407a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i9) {
        return this.f59407a.get(i9);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        View view2;
        d dVar;
        if (view == null) {
            dVar = new d();
            view2 = LayoutInflater.from(this.f59408b).inflate(R.layout.withdrawal_diamond_list_item, (ViewGroup) null);
            dVar.f59420a = (TextView) view2.findViewById(R.id.tvPrice);
            dVar.f59421b = (TextView) view2.findViewById(R.id.btnWithdrawal);
            view2.setTag(dVar);
        } else {
            view2 = view;
            dVar = (d) view.getTag();
        }
        WithdrawalBean withdrawalBean = this.f59407a.get(i9);
        if (this.f59409c) {
            TextView textView = dVar.f59420a;
            textView.setText(withdrawalBean.getPrice_China() + " ");
        } else {
            TextView textView2 = dVar.f59420a;
            textView2.setText(withdrawalBean.getPrice_America() + " ");
        }
        TextView textView3 = dVar.f59421b;
        textView3.setText(withdrawalBean.getF() + "");
        dVar.f59421b.setOnClickListener(new a(withdrawalBean, dVar));
        return view2;
    }
}
