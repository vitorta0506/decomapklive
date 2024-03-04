package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.github.gzuliyujiang.wheelpicker.R$id;
import com.github.gzuliyujiang.wheelpicker.R$layout;
import com.github.gzuliyujiang.wheelpicker.R$styleable;
import com.github.gzuliyujiang.wheelpicker.entity.DateEntity;
import com.github.gzuliyujiang.wheelview.widget.NumberWheelView;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class DateWheelLayout extends BaseWheelLayout {

    /* renamed from: c  reason: collision with root package name */
    private NumberWheelView f5119c;

    /* renamed from: d  reason: collision with root package name */
    private NumberWheelView f5120d;

    /* renamed from: e  reason: collision with root package name */
    private NumberWheelView f5121e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f5122f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f5123g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f5124h;

    /* renamed from: i  reason: collision with root package name */
    private DateEntity f5125i;

    /* renamed from: j  reason: collision with root package name */
    private DateEntity f5126j;

    /* renamed from: k  reason: collision with root package name */
    private Integer f5127k;

    /* renamed from: l  reason: collision with root package name */
    private Integer f5128l;

    /* renamed from: m  reason: collision with root package name */
    private Integer f5129m;

    /* renamed from: n  reason: collision with root package name */
    private i1.c f5130n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DateWheelLayout.this.f5130n.a(DateWheelLayout.this.f5127k.intValue(), DateWheelLayout.this.f5128l.intValue(), DateWheelLayout.this.f5129m.intValue());
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DateEntity f5132a;

        b(DateEntity dateEntity) {
            this.f5132a = dateEntity;
        }

        @Override // java.lang.Runnable
        public void run() {
            DateWheelLayout dateWheelLayout = DateWheelLayout.this;
            dateWheelLayout.x(dateWheelLayout.f5125i, DateWheelLayout.this.f5126j, this.f5132a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i1.a f5134a;

        c(i1.a aVar) {
            this.f5134a = aVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5134a.c(((Integer) obj).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i1.a f5136a;

        d(i1.a aVar) {
            this.f5136a = aVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5136a.a(((Integer) obj).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i1.a f5138a;

        e(i1.a aVar) {
            this.f5138a = aVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5138a.b(((Integer) obj).intValue());
        }
    }

    public DateWheelLayout(Context context) {
        super(context);
    }

    private void q(int i9, int i10) {
        int u10;
        int i11;
        if (i9 == this.f5125i.getYear() && i10 == this.f5125i.getMonth() && i9 == this.f5126j.getYear() && i10 == this.f5126j.getMonth()) {
            i11 = this.f5125i.getDay();
            u10 = this.f5126j.getDay();
        } else if (i9 == this.f5125i.getYear() && i10 == this.f5125i.getMonth()) {
            int day = this.f5125i.getDay();
            u10 = u(i9, i10);
            i11 = day;
        } else {
            if (i9 == this.f5126j.getYear() && i10 == this.f5126j.getMonth()) {
                u10 = this.f5126j.getDay();
            } else {
                u10 = u(i9, i10);
            }
            i11 = 1;
        }
        if (this.f5129m == null) {
            this.f5129m = Integer.valueOf(i11);
        }
        this.f5121e.K(i11, u10, 1);
        this.f5121e.setDefaultValue(this.f5129m);
    }

    private void r(int i9) {
        int i10;
        if (this.f5125i.getYear() == this.f5126j.getYear()) {
            i10 = Math.min(this.f5125i.getMonth(), this.f5126j.getMonth());
            r2 = Math.max(this.f5125i.getMonth(), this.f5126j.getMonth());
        } else if (i9 == this.f5125i.getYear()) {
            i10 = this.f5125i.getMonth();
        } else {
            r2 = i9 == this.f5126j.getYear() ? this.f5126j.getMonth() : 12;
            i10 = 1;
        }
        if (this.f5128l == null) {
            this.f5128l = Integer.valueOf(i10);
        }
        this.f5120d.K(i10, r2, 1);
        this.f5120d.setDefaultValue(this.f5128l);
        q(i9, this.f5128l.intValue());
    }

    private void s() {
        int min = Math.min(this.f5125i.getYear(), this.f5126j.getYear());
        int max = Math.max(this.f5125i.getYear(), this.f5126j.getYear());
        if (this.f5127k == null) {
            this.f5127k = Integer.valueOf(min);
        }
        this.f5119c.K(min, max, 1);
        this.f5119c.setDefaultValue(this.f5127k);
        r(this.f5127k.intValue());
    }

    private void t() {
        if (this.f5130n == null) {
            return;
        }
        this.f5121e.post(new a());
    }

    private int u(int i9, int i10) {
        boolean z10 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                return (i10 == 3 || i10 == 5 || i10 == 10 || i10 == 12 || i10 == 7 || i10 == 8) ? 31 : 30;
            } else if (i9 <= 0) {
                return 29;
            } else {
                if ((i9 % 4 != 0 || i9 % 100 == 0) && i9 % 400 != 0) {
                    z10 = false;
                }
                return z10 ? 29 : 28;
            }
        }
        return 31;
    }

    @Override // k1.a
    public void d(WheelView wheelView, int i9) {
        int id2 = wheelView.getId();
        if (id2 == R$id.wheel_picker_date_year_wheel) {
            Integer num = (Integer) this.f5119c.v(i9);
            this.f5127k = num;
            this.f5128l = null;
            this.f5129m = null;
            r(num.intValue());
            t();
        } else if (id2 == R$id.wheel_picker_date_month_wheel) {
            this.f5128l = (Integer) this.f5120d.v(i9);
            this.f5129m = null;
            q(this.f5127k.intValue(), this.f5128l.intValue());
            t();
        } else if (id2 == R$id.wheel_picker_date_day_wheel) {
            this.f5129m = (Integer) this.f5121e.v(i9);
            t();
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.DateWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.DateWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.DateWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.DateWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.DateWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.DateWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.DateWheelLayout_wheel_indicatorColor, -1166541));
        setIndicatorSize(typedArray.getDimension(R$styleable.DateWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.DateWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.DateWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.DateWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.DateWheelLayout_wheel_itemTextAlign, 0));
        setDateMode(typedArray.getInt(R$styleable.DateWheelLayout_wheel_dateMode, 0));
        v(typedArray.getString(R$styleable.DateWheelLayout_wheel_yearLabel), typedArray.getString(R$styleable.DateWheelLayout_wheel_monthLabel), typedArray.getString(R$styleable.DateWheelLayout_wheel_dayLabel));
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void g(@NonNull Context context) {
        this.f5119c = (NumberWheelView) findViewById(R$id.wheel_picker_date_year_wheel);
        this.f5120d = (NumberWheelView) findViewById(R$id.wheel_picker_date_month_wheel);
        this.f5121e = (NumberWheelView) findViewById(R$id.wheel_picker_date_day_wheel);
        this.f5122f = (TextView) findViewById(R$id.wheel_picker_date_year_label);
        this.f5123g = (TextView) findViewById(R$id.wheel_picker_date_month_label);
        this.f5124h = (TextView) findViewById(R$id.wheel_picker_date_day_label);
        setDateFormatter(new j1.b());
        w(DateEntity.today(), DateEntity.yearOnFuture(30));
    }

    public final TextView getDayLabelView() {
        return this.f5124h;
    }

    public final NumberWheelView getDayWheelView() {
        return this.f5121e;
    }

    public final DateEntity getEndValue() {
        return this.f5126j;
    }

    public final TextView getMonthLabelView() {
        return this.f5123g;
    }

    public final NumberWheelView getMonthWheelView() {
        return this.f5120d;
    }

    public final int getSelectedDay() {
        return ((Integer) this.f5121e.getCurrentItem()).intValue();
    }

    public final int getSelectedMonth() {
        return ((Integer) this.f5120d.getCurrentItem()).intValue();
    }

    public final int getSelectedYear() {
        return ((Integer) this.f5119c.getCurrentItem()).intValue();
    }

    public final DateEntity getStartValue() {
        return this.f5125i;
    }

    public final TextView getYearLabelView() {
        return this.f5122f;
    }

    public final NumberWheelView getYearWheelView() {
        return this.f5119c;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int h() {
        return R$layout.wheel_picker_date;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.DateWheelLayout;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    public List<WheelView> j() {
        return Arrays.asList(this.f5119c, this.f5120d, this.f5121e);
    }

    public void setDateFormatter(i1.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f5119c.setFormatter(new c(aVar));
        this.f5120d.setFormatter(new d(aVar));
        this.f5121e.setFormatter(new e(aVar));
    }

    public void setDateMode(int i9) {
        if (i9 == -1) {
            this.f5119c.setVisibility(8);
            this.f5122f.setVisibility(8);
            this.f5120d.setVisibility(8);
            this.f5123g.setVisibility(8);
            this.f5121e.setVisibility(8);
            this.f5124h.setVisibility(8);
        } else if (i9 == 2) {
            this.f5119c.setVisibility(8);
            this.f5122f.setVisibility(8);
        } else if (i9 == 1) {
            this.f5121e.setVisibility(8);
            this.f5124h.setVisibility(8);
        }
    }

    public void setDefaultValue(@NonNull DateEntity dateEntity) {
        if (this.f5125i == null) {
            this.f5125i = DateEntity.today();
        }
        if (this.f5126j == null) {
            this.f5126j = DateEntity.yearOnFuture(30);
        }
        postDelayed(new b(dateEntity), 200L);
    }

    public void setOnDateSelectedListener(i1.c cVar) {
        this.f5130n = cVar;
    }

    public void v(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f5122f.setText(charSequence);
        this.f5123g.setText(charSequence2);
        this.f5124h.setText(charSequence3);
    }

    public void w(@NonNull DateEntity dateEntity, @NonNull DateEntity dateEntity2) {
        x(dateEntity, dateEntity2, null);
    }

    public void x(@NonNull DateEntity dateEntity, @NonNull DateEntity dateEntity2, @Nullable DateEntity dateEntity3) {
        this.f5125i = dateEntity;
        this.f5126j = dateEntity2;
        if (dateEntity3 != null) {
            this.f5127k = Integer.valueOf(dateEntity3.getYear());
            this.f5128l = Integer.valueOf(dateEntity3.getMonth());
            this.f5129m = Integer.valueOf(dateEntity3.getDay());
        }
        s();
    }

    public DateWheelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DateWheelLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
