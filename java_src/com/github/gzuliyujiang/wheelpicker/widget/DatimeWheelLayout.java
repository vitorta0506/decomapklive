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
import com.github.gzuliyujiang.wheelpicker.entity.DatimeEntity;
import com.github.gzuliyujiang.wheelpicker.entity.TimeEntity;
import com.github.gzuliyujiang.wheelview.widget.NumberWheelView;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import i1.d;
import i1.i;
import j1.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DatimeWheelLayout extends BaseWheelLayout {

    /* renamed from: c  reason: collision with root package name */
    private DateWheelLayout f5140c;

    /* renamed from: d  reason: collision with root package name */
    private TimeWheelLayout f5141d;

    /* renamed from: e  reason: collision with root package name */
    private DatimeEntity f5142e;

    /* renamed from: f  reason: collision with root package name */
    private DatimeEntity f5143f;

    /* renamed from: g  reason: collision with root package name */
    private int f5144g;

    /* renamed from: h  reason: collision with root package name */
    private d f5145h;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DatimeWheelLayout.this.f5145h.a(DatimeWheelLayout.this.f5140c.getSelectedYear(), DatimeWheelLayout.this.f5140c.getSelectedMonth(), DatimeWheelLayout.this.f5140c.getSelectedDay(), DatimeWheelLayout.this.f5141d.getSelectedHour(), DatimeWheelLayout.this.f5141d.getSelectedMinute(), DatimeWheelLayout.this.f5141d.getSelectedSecond());
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatimeEntity f5147a;

        b(DatimeEntity datimeEntity) {
            this.f5147a = datimeEntity;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatimeWheelLayout datimeWheelLayout = DatimeWheelLayout.this;
            datimeWheelLayout.r(datimeWheelLayout.f5142e, DatimeWheelLayout.this.f5143f, this.f5147a);
        }
    }

    public DatimeWheelLayout(Context context) {
        super(context);
        this.f5144g = 1;
    }

    @Override // k1.a
    public void d(WheelView wheelView, int i9) {
        this.f5140c.d(wheelView, i9);
        this.f5141d.d(wheelView, i9);
        if (this.f5145h == null) {
            return;
        }
        this.f5141d.post(new a());
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.DatimeWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.DatimeWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.DatimeWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.DatimeWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.DatimeWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.DatimeWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.DatimeWheelLayout_wheel_indicatorColor, -1166541));
        setIndicatorSize(typedArray.getDimension(R$styleable.DatimeWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.DatimeWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.DatimeWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.DatimeWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.DatimeWheelLayout_wheel_itemTextAlign, 0));
        setDateMode(typedArray.getInt(R$styleable.DatimeWheelLayout_wheel_dateMode, 0));
        setTimeMode(typedArray.getInt(R$styleable.DatimeWheelLayout_wheel_timeMode, 0));
        p(typedArray.getString(R$styleable.DatimeWheelLayout_wheel_yearLabel), typedArray.getString(R$styleable.DatimeWheelLayout_wheel_monthLabel), typedArray.getString(R$styleable.DatimeWheelLayout_wheel_dayLabel));
        s(typedArray.getString(R$styleable.DatimeWheelLayout_wheel_hourLabel), typedArray.getString(R$styleable.DatimeWheelLayout_wheel_minuteLabel), typedArray.getString(R$styleable.DatimeWheelLayout_wheel_secondLabel));
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void g(@NonNull Context context) {
        this.f5140c = (DateWheelLayout) findViewById(R$id.wheel_picker_date_wheel);
        this.f5141d = (TimeWheelLayout) findViewById(R$id.wheel_picker_time_wheel);
        setDateFormatter(new j1.b());
        setTimeFormatter(new c());
        q(DatimeEntity.now(), DatimeEntity.yearOnFuture(30));
    }

    public final TextView getDayLabelView() {
        return this.f5140c.getDayLabelView();
    }

    public final NumberWheelView getDayWheelView() {
        return this.f5140c.getDayWheelView();
    }

    public final DatimeEntity getEndValue() {
        return this.f5143f;
    }

    public final TextView getHourLabelView() {
        return this.f5141d.getHourLabelView();
    }

    public final NumberWheelView getHourWheelView() {
        return this.f5141d.getHourWheelView();
    }

    public final TextView getMinuteLabelView() {
        return this.f5141d.getMinuteLabelView();
    }

    public final NumberWheelView getMinuteWheelView() {
        return this.f5141d.getMinuteWheelView();
    }

    public final TextView getMonthLabelView() {
        return this.f5140c.getMonthLabelView();
    }

    public final NumberWheelView getMonthWheelView() {
        return this.f5140c.getMonthWheelView();
    }

    public final TextView getSecondLabelView() {
        return this.f5141d.getSecondLabelView();
    }

    public final NumberWheelView getSecondWheelView() {
        return this.f5141d.getSecondWheelView();
    }

    public final int getSelectedDay() {
        return this.f5140c.getSelectedDay();
    }

    public final int getSelectedHour() {
        return this.f5141d.getSelectedHour();
    }

    public final int getSelectedMinute() {
        return this.f5141d.getSelectedMinute();
    }

    public final int getSelectedMonth() {
        return this.f5140c.getSelectedMonth();
    }

    public final int getSelectedSecond() {
        return this.f5141d.getSelectedSecond();
    }

    public final int getSelectedYear() {
        return this.f5140c.getSelectedYear();
    }

    public final DatimeEntity getStartValue() {
        return this.f5142e;
    }

    public final TextView getYearLabelView() {
        return this.f5140c.getYearLabelView();
    }

    public final NumberWheelView getYearWheelView() {
        return this.f5140c.getYearWheelView();
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int h() {
        return R$layout.wheel_picker_datime;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.DatimeWheelLayout;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected List<WheelView> j() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f5140c.j());
        arrayList.addAll(this.f5141d.j());
        return arrayList;
    }

    public void p(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f5140c.v(charSequence, charSequence2, charSequence3);
    }

    public void q(@NonNull DatimeEntity datimeEntity, @NonNull DatimeEntity datimeEntity2) {
        r(datimeEntity, datimeEntity2, null);
    }

    public void r(@NonNull DatimeEntity datimeEntity, @NonNull DatimeEntity datimeEntity2, @Nullable DatimeEntity datimeEntity3) {
        if (datimeEntity3 == null) {
            datimeEntity3 = datimeEntity;
        }
        this.f5140c.x(datimeEntity.getDate(), datimeEntity2.getDate(), datimeEntity3.getDate());
        TimeEntity target = TimeEntity.target(0, 0, 0);
        int i9 = this.f5144g;
        this.f5141d.u(target, TimeEntity.target((i9 == 2 || i9 == 3) ? 12 : 23, 59, 59), datimeEntity3.getTime());
        this.f5142e = datimeEntity;
        this.f5143f = datimeEntity2;
    }

    public void s(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f5141d.v(charSequence, charSequence2, charSequence3);
    }

    public void setDateFormatter(i1.a aVar) {
        this.f5140c.setDateFormatter(aVar);
    }

    public void setDateMode(int i9) {
        this.f5140c.setDateMode(i9);
    }

    public void setDefaultValue(@NonNull DatimeEntity datimeEntity) {
        if (this.f5142e == null) {
            this.f5142e = DatimeEntity.now();
        }
        if (this.f5143f == null) {
            this.f5143f = DatimeEntity.yearOnFuture(30);
        }
        postDelayed(new b(datimeEntity), 200L);
    }

    public void setOnDatimeSelectedListener(d dVar) {
        this.f5145h = dVar;
    }

    public void setTimeFormatter(i iVar) {
        this.f5141d.setTimeFormatter(iVar);
    }

    public void setTimeMode(int i9) {
        this.f5141d.setTimeMode(i9);
        this.f5144g = i9;
    }

    public DatimeWheelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5144g = 1;
    }

    public DatimeWheelLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f5144g = 1;
    }
}
