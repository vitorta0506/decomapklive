package com.guochao.faceshow.aaspring.modulars.onevone.filter;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterTipDialog;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
/* loaded from: classes3.dex */
public class FilterSexDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private int f20924a;

    /* renamed from: b  reason: collision with root package name */
    private e f20925b;
    @BindView
    ImageView bgManFilter;
    @BindView
    ImageView bgNoneFilter;
    @BindView
    ImageView bgWomanFilter;
    @BindView
    ImageView manChecker;
    @BindView
    ImageView noneChecker;
    @BindView
    ImageView womenChecker;

    /* loaded from: classes3.dex */
    class a implements FilterRechargeDialog.a {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterRechargeDialog.a
        public void onConfirm() {
            FilterSexDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class b implements FilterTipDialog.a {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterTipDialog.a
        public void onConfirm() {
            FilterSexDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements FilterRechargeDialog.a {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterRechargeDialog.a
        public void onConfirm() {
            FilterSexDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    class d implements FilterTipDialog.a {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterTipDialog.a
        public void onConfirm() {
            FilterSexDialog.this.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onSelect(int i9);
    }

    public FilterSexDialog(@NonNull Context context) {
        super(context);
    }

    private Activity a() {
        Context context = getContext();
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    private void c(int i9) {
        this.f20924a = i9;
        this.noneChecker.setVisibility(4);
        this.manChecker.setVisibility(4);
        this.womenChecker.setVisibility(4);
        this.bgNoneFilter.setSelected(false);
        this.bgManFilter.setSelected(false);
        this.bgWomanFilter.setSelected(false);
        if (i9 == 0) {
            this.noneChecker.setVisibility(0);
            this.bgNoneFilter.setSelected(true);
        } else if (i9 == 1) {
            this.manChecker.setVisibility(0);
            this.bgManFilter.setSelected(true);
        } else if (i9 == 2) {
            this.womenChecker.setVisibility(0);
            this.bgWomanFilter.setSelected(true);
        }
        Context context = getContext();
        if (context instanceof ContextThemeWrapper) {
            context = ((ContextThemeWrapper) context).getBaseContext();
        }
        if (context instanceof F2fMatchContainer) {
            ((F2fMatchContainer) context).setGenderSelection(this.f20924a);
        }
    }

    private void d(int i9) {
        this.f20924a = i9;
    }

    public static FilterSexDialog e(Activity activity, int i9) {
        FilterSexDialog filterSexDialog = new FilterSexDialog(activity);
        filterSexDialog.d(i9);
        filterSexDialog.show();
        return filterSexDialog;
    }

    public int b() {
        return R.layout.dialog_filter_sex;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(b());
        setCanceledOnTouchOutside(true);
        if (getWindow() != null) {
            Window window = getWindow();
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            ButterKnife.c(this, window.getDecorView());
            window.setDimAmount(0.0f);
            window.getDecorView().setSystemUiVisibility(256);
            window.addFlags(Integer.MIN_VALUE);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.bg_empty /* 2131362094 */:
                dismiss();
                return;
            case R.id.man_checker_lay /* 2131363646 */:
                EventTrackingUtils.getInstance().track(EventTrackingUtils.OVO_PREPARE_GENDER_MALE_CHICK);
                if (this.f20924a == 1) {
                    dismiss();
                    return;
                } else if (!p9.a.g().k()) {
                    FilterRechargeDialog A = p9.a.g().A(a());
                    if (A != null) {
                        A.setOnConfirmListener(new a());
                        return;
                    }
                    return;
                } else {
                    c(1);
                    FilterTipDialog v10 = p9.a.g().v(a());
                    if (v10 != null) {
                        v10.setOnConfirmListener(new b());
                    } else {
                        dismiss();
                    }
                    e eVar = this.f20925b;
                    if (eVar != null) {
                        eVar.onSelect(this.f20924a);
                        return;
                    }
                    return;
                }
            case R.id.none_checker_lay /* 2131363870 */:
                EventTrackingUtils.getInstance().track(EventTrackingUtils.OVO_PREPARE_GENDER_CHICK);
                c(0);
                e eVar2 = this.f20925b;
                if (eVar2 != null) {
                    eVar2.onSelect(this.f20924a);
                }
                dismiss();
                return;
            case R.id.women_checker_lay /* 2131365489 */:
                EventTrackingUtils.getInstance().track(EventTrackingUtils.OVO_PREPARE_GENDER_FEMALE_CHICK);
                if (this.f20924a == 2) {
                    dismiss();
                    return;
                } else if (!p9.a.g().k()) {
                    FilterRechargeDialog A2 = p9.a.g().A(a());
                    if (A2 != null) {
                        A2.setOnConfirmListener(new c());
                        return;
                    }
                    return;
                } else {
                    c(2);
                    FilterTipDialog v11 = p9.a.g().v(a());
                    if (v11 != null) {
                        v11.setOnConfirmListener(new d());
                    } else {
                        dismiss();
                    }
                    e eVar3 = this.f20925b;
                    if (eVar3 != null) {
                        eVar3.onSelect(this.f20924a);
                        return;
                    }
                    return;
                }
            default:
                return;
        }
    }

    public void setOnSelectListener(e eVar) {
        this.f20925b = eVar;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        int i9 = this.f20924a;
        if (i9 == -1) {
            c(0);
        } else if (i9 != 1) {
            c(2);
        } else {
            c(1);
        }
    }
}
