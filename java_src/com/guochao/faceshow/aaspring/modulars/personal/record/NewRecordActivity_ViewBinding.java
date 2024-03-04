package com.guochao.faceshow.aaspring.modulars.personal.record;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class NewRecordActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private NewRecordActivity f21589c;

    /* renamed from: d  reason: collision with root package name */
    private View f21590d;

    /* renamed from: e  reason: collision with root package name */
    private View f21591e;

    /* renamed from: f  reason: collision with root package name */
    private View f21592f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordActivity f21593a;

        a(NewRecordActivity newRecordActivity) {
            this.f21593a = newRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21593a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordActivity f21595a;

        b(NewRecordActivity newRecordActivity) {
            this.f21595a = newRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21595a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewRecordActivity f21597a;

        c(NewRecordActivity newRecordActivity) {
            this.f21597a = newRecordActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21597a.onClick(view);
        }
    }

    @UiThread
    public NewRecordActivity_ViewBinding(NewRecordActivity newRecordActivity, View view) {
        super(newRecordActivity, view);
        this.f21589c = newRecordActivity;
        View c10 = butterknife.internal.c.c(view, R.id.tv_date, "field 'tvDate' and method 'onClick'");
        newRecordActivity.tvDate = (TextView) butterknife.internal.c.a(c10, R.id.tv_date, "field 'tvDate'", TextView.class);
        this.f21590d = c10;
        c10.setOnClickListener(new a(newRecordActivity));
        newRecordActivity.tvIncome = (TextView) butterknife.internal.c.d(view, R.id.tv_income, "field 'tvIncome'", TextView.class);
        newRecordActivity.tvSpending = (TextView) butterknife.internal.c.d(view, R.id.tv_spending, "field 'tvSpending'", TextView.class);
        newRecordActivity.tvMore = (TextView) butterknife.internal.c.d(view, R.id.tv_more, "field 'tvMore'", TextView.class);
        newRecordActivity.topLL = butterknife.internal.c.c(view, R.id.topLL, "field 'topLL'");
        View c11 = butterknife.internal.c.c(view, R.id.ll_more, "method 'onClick'");
        this.f21591e = c11;
        c11.setOnClickListener(new b(newRecordActivity));
        View c12 = butterknife.internal.c.c(view, R.id.tv_time_zone, "method 'onClick'");
        this.f21592f = c12;
        c12.setOnClickListener(new c(newRecordActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        NewRecordActivity newRecordActivity = this.f21589c;
        if (newRecordActivity != null) {
            this.f21589c = null;
            newRecordActivity.tvDate = null;
            newRecordActivity.tvIncome = null;
            newRecordActivity.tvSpending = null;
            newRecordActivity.tvMore = null;
            newRecordActivity.topLL = null;
            this.f21590d.setOnClickListener(null);
            this.f21590d = null;
            this.f21591e.setOnClickListener(null);
            this.f21591e = null;
            this.f21592f.setOnClickListener(null);
            this.f21592f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
