package com.guochao.faceshow.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private boolean f26901a;

    /* renamed from: b  reason: collision with root package name */
    RecyclerView f26902b;

    /* renamed from: c  reason: collision with root package name */
    b f26903c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.views.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0266a extends RecyclerView.Adapter<BaseViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f26904a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.views.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0267a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f26906a;

            View$OnClickListenerC0267a(int i9) {
                this.f26906a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C0266a c0266a = C0266a.this;
                if (a.this.f26903c == null) {
                    return;
                }
                int intValue = ((Integer) c0266a.f26904a.get(this.f26906a)).intValue();
                if (intValue != 1) {
                    switch (intValue) {
                        case 4:
                            a aVar = a.this;
                            aVar.f26903c.onBankCardPay(aVar);
                            return;
                        case 5:
                            a aVar2 = a.this;
                            aVar2.f26903c.onPayPalClick(aVar2);
                            return;
                        case 6:
                            a aVar3 = a.this;
                            aVar3.f26903c.onPayonnerClick(aVar3);
                            return;
                        case 7:
                            a aVar4 = a.this;
                            aVar4.f26903c.onUSDTClick(aVar4);
                            return;
                        case 8:
                            a aVar5 = a.this;
                            aVar5.f26903c.onPayonnerV2Click(aVar5);
                            return;
                        default:
                            return;
                    }
                }
                a aVar6 = a.this;
                aVar6.f26903c.onAliPayClick(aVar6);
            }
        }

        C0266a(List list) {
            this.f26904a = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f26904a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_alipay_name);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_alipay_logo);
            int intValue = ((Integer) this.f26904a.get(i9)).intValue();
            if (intValue != 1) {
                switch (intValue) {
                    case 4:
                        textView.setText(R.string.bank_card);
                        imageView.setImageResource(R.mipmap.withdrawal_yhk);
                        break;
                    case 5:
                        imageView.setImageResource(R.mipmap.withdrawal_paypal);
                        textView.setText(R.string.paypal);
                        break;
                    case 6:
                    case 8:
                        imageView.setImageResource(R.mipmap.withdrawal_payoneer);
                        textView.setText(R.string.payoneer);
                        break;
                    case 7:
                        imageView.setImageResource(R.mipmap.withdrawal_usdt);
                        textView.setText(R.string.withdraw_USDT);
                        break;
                }
            } else {
                textView.setText(R.string.alipay);
                imageView.setImageResource(R.mipmap.withdrawal_zfb);
            }
            baseViewHolder.itemView.setOnClickListener(new View$OnClickListenerC0267a(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(a.this.getLayoutInflater().inflate(R.layout.list_item_withdraw_item, viewGroup, false));
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void onAliPayClick(Dialog dialog);

        void onBankCardPay(Dialog dialog);

        void onPayPalClick(Dialog dialog);

        void onPayonnerClick(Dialog dialog);

        void onPayonnerV2Click(Dialog dialog);

        void onUSDTClick(Dialog dialog);
    }

    public a(Context context, boolean z10, int i9, b bVar) {
        super(context, i9);
        this.f26901a = z10;
        this.f26903c = bVar;
    }

    private void a() {
        this.f26902b = (RecyclerView) findViewById(R.id.recycler_view);
        ArrayList arrayList = new ArrayList();
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getAliPaySwitch() == 1) {
            arrayList.add(1);
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitchV2() == 1) {
            arrayList.add(8);
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getPayoneerSwitch() == 1) {
            arrayList.add(6);
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getUsdtSwitch() == 1) {
            arrayList.add(7);
        }
        if (com.guochao.faceshow.aaspring.manager.i.u().s().getPaypalSwitch() == 1) {
            arrayList.add(5);
        }
        this.f26902b.setAdapter(new C0266a(arrayList));
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_bank_alipay);
        setCanceledOnTouchOutside(false);
        a();
    }
}
