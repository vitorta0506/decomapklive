package com.guochao.faceshow.aaspring.modulars.dressmarket.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BuyDressSuccessDialog;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import java.util.ArrayList;
import q7.a;
/* loaded from: classes3.dex */
public class BuyDressSuccessDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private int f17655a = 1;

    /* renamed from: b  reason: collision with root package name */
    private TextView f17656b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f17657c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f17658d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f17659e;

    /* renamed from: f  reason: collision with root package name */
    private View f17660f;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S1(View view) {
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U1(View view) {
        dismissAllowingStateLoss();
    }

    public static void V1(FragmentManager fragmentManager, int i9, DressResponse.DressBean dressBean, ArrayList<Integer> arrayList) {
        BuyDressSuccessDialog buyDressSuccessDialog = new BuyDressSuccessDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putParcelable("dressBean", dressBean);
        bundle.putIntegerArrayList("account", arrayList);
        buyDressSuccessDialog.setArguments(bundle);
        buyDressSuccessDialog.show(fragmentManager, BuyDressSuccessDialog.class.getSimpleName());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_buy_dress_success;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        DressResponse.DressBean dressBean;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f17655a = arguments.getInt("type", 1);
            dressBean = (DressResponse.DressBean) arguments.getParcelable("dressBean");
            arguments.getIntegerArrayList("account");
        } else {
            dressBean = null;
        }
        if (dressBean == null) {
            return;
        }
        view.findViewById(R.id.bg_view).setOnClickListener(new View.OnClickListener() { // from class: o8.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BuyDressSuccessDialog.this.S1(view2);
            }
        });
        this.f17656b = (TextView) view.findViewById(R.id.primary_title);
        this.f17657c = (ImageView) view.findViewById(R.id.dress_image);
        this.f17658d = (TextView) view.findViewById(R.id.primary_content);
        this.f17659e = (TextView) view.findViewById(R.id.i_know);
        this.f17660f = view.findViewById(R.id.close_view);
        String format = String.format("\"%s\"", dressBean.getName());
        if (this.f17655a == 1) {
            this.f17656b.setText(R.string.f_dress_buy_success_1);
            this.f17658d.setText(getString(R.string.f_dress_buy_success_content, format));
        } else {
            this.f17656b.setText(R.string.f_dress_send_success_1);
            this.f17658d.setText(getString(R.string.f_dress_send_success_content, format));
        }
        String trim = this.f17658d.getText().toString().trim();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(trim);
        int color = ContextCompat.getColor(this.f17658d.getContext(), R.color.color_buy_dress_success);
        int intValue = SpanColorUtils.getFirstCharIndex(trim, format).intValue();
        if (intValue >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(color), intValue, format.length() + intValue, 18);
            spannableStringBuilder.setSpan(new TextAppearanceSpan(getContext(), R.style.style_bold), intValue, format.length() + intValue, 18);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(color), 0, 0, 18);
        }
        this.f17658d.setText(spannableStringBuilder);
        c.v(this.f17657c).r((!a.e().j() || TextUtils.isEmpty(dressBean.getArThumbnailImage())) ? dressBean.getThumbnailImage() : dressBean.getArThumbnailImage()).b0(R.mipmap.f_dress_empty).Q0(this.f17657c);
        this.f17659e.setOnClickListener(new View.OnClickListener() { // from class: o8.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BuyDressSuccessDialog.this.T1(view2);
            }
        });
        this.f17660f.setOnClickListener(new View.OnClickListener() { // from class: o8.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BuyDressSuccessDialog.this.U1(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(true);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }
}
