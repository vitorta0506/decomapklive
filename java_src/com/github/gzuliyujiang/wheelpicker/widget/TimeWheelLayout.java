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
import com.github.gzuliyujiang.wheelpicker.entity.TimeEntity;
import com.github.gzuliyujiang.wheelview.widget.NumberWheelView;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import i1.h;
import i1.i;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class TimeWheelLayout extends BaseWheelLayout {

    /* renamed from: c  reason: collision with root package name */
    private NumberWheelView f5168c;

    /* renamed from: d  reason: collision with root package name */
    private NumberWheelView f5169d;

    /* renamed from: e  reason: collision with root package name */
    private NumberWheelView f5170e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f5171f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f5172g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f5173h;

    /* renamed from: i  reason: collision with root package name */
    private TimeEntity f5174i;

    /* renamed from: j  reason: collision with root package name */
    private TimeEntity f5175j;

    /* renamed from: k  reason: collision with root package name */
    private Integer f5176k;

    /* renamed from: l  reason: collision with root package name */
    private Integer f5177l;

    /* renamed from: m  reason: collision with root package name */
    private Integer f5178m;

    /* renamed from: n  reason: collision with root package name */
    private int f5179n;

    /* renamed from: o  reason: collision with root package name */
    private h f5180o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TimeWheelLayout.this.f5180o.a(TimeWheelLayout.this.f5176k.intValue(), TimeWheelLayout.this.f5177l.intValue(), TimeWheelLayout.this.f5178m.intValue());
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TimeEntity f5182a;

        b(TimeEntity timeEntity) {
            this.f5182a = timeEntity;
        }

        @Override // java.lang.Runnable
        public void run() {
            TimeWheelLayout timeWheelLayout = TimeWheelLayout.this;
            timeWheelLayout.u(timeWheelLayout.f5174i, TimeWheelLayout.this.f5175j, this.f5182a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f5184a;

        c(i iVar) {
            this.f5184a = iVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5184a.formatHour(((Integer) obj).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f5186a;

        d(i iVar) {
            this.f5186a = iVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5186a.formatMinute(((Integer) obj).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements k1.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f5188a;

        e(i iVar) {
            this.f5188a = iVar;
        }

        @Override // k1.c
        public String a(@NonNull Object obj) {
            return this.f5188a.formatSecond(((Integer) obj).intValue());
        }
    }

    public TimeWheelLayout(Context context) {
        super(context);
        this.f5179n = 1;
    }

    private void q() {
        int i9 = this.f5179n;
        int i10 = (i9 == 2 || i9 == 3) ? 12 : 23;
        int min = Math.min(this.f5174i.getHour(), this.f5175j.getHour());
        int max = Math.max(this.f5174i.getHour(), this.f5175j.getHour());
        int min2 = Math.min(i10, min);
        int min3 = Math.min(i10, max);
        if (this.f5176k == null) {
            this.f5176k = Integer.valueOf(min2);
        }
        this.f5168c.K(min2, min3, 1);
        this.f5168c.setDefaultValue(this.f5176k);
        r(this.f5176k.intValue());
    }

    private void r(int i9) {
        int i10 = 0;
        int i11 = 59;
        if (i9 == this.f5174i.getHour() && i9 == this.f5175j.getHour()) {
            i10 = this.f5174i.getMinute();
            i11 = this.f5175j.getMinute();
        } else if (i9 == this.f5174i.getHour()) {
            i10 = this.f5174i.getMinute();
        } else if (i9 == this.f5175j.getHour()) {
            i11 = this.f5175j.getMinute();
        }
        if (this.f5177l == null) {
            this.f5177l = Integer.valueOf(i10);
        }
        this.f5169d.K(i10, i11, 1);
        this.f5169d.setDefaultValue(this.f5177l);
        s();
    }

    private void s() {
        if (this.f5178m == null) {
            this.f5178m = 0;
        }
        this.f5170e.K(0, 59, 1);
        this.f5170e.setDefaultValue(this.f5178m);
    }

    private void w() {
        if (this.f5180o == null) {
            return;
        }
        this.f5170e.post(new a());
    }

    @Override // k1.a
    public void d(WheelView wheelView, int i9) {
        int id2 = wheelView.getId();
        if (id2 == R$id.wheel_picker_time_hour_wheel) {
            Integer num = (Integer) this.f5168c.v(i9);
            this.f5176k = num;
            this.f5177l = null;
            this.f5178m = null;
            r(num.intValue());
            w();
        } else if (id2 == R$id.wheel_picker_time_minute_wheel) {
            this.f5177l = (Integer) this.f5169d.v(i9);
            this.f5178m = null;
            s();
            w();
        } else if (id2 == R$id.wheel_picker_time_second_wheel) {
            this.f5178m = (Integer) this.f5170e.v(i9);
            w();
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.TimeWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.TimeWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.TimeWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.TimeWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.TimeWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.TimeWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.TimeWheelLayout_wheel_indicatorColor, -1166541));
        setIndicatorSize(typedArray.getDimension(R$styleable.TimeWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.TimeWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.TimeWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.TimeWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.TimeWheelLayout_wheel_itemTextAlign, 0));
        setTimeMode(typedArray.getInt(R$styleable.TimeWheelLayout_wheel_timeMode, 0));
        v(typedArray.getString(R$styleable.TimeWheelLayout_wheel_hourLabel), typedArray.getString(R$styleable.TimeWheelLayout_wheel_minuteLabel), typedArray.getString(R$styleable.TimeWheelLayout_wheel_secondLabel));
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void g(@NonNull Context context) {
        this.f5168c = (NumberWheelView) findViewById(R$id.wheel_picker_time_hour_wheel);
        this.f5169d = (NumberWheelView) findViewById(R$id.wheel_picker_time_minute_wheel);
        this.f5170e = (NumberWheelView) findViewById(R$id.wheel_picker_time_second_wheel);
        this.f5171f = (TextView) findViewById(R$id.wheel_picker_time_hour_label);
        this.f5172g = (TextView) findViewById(R$id.wheel_picker_time_minute_label);
        this.f5173h = (TextView) findViewById(R$id.wheel_picker_time_second_label);
        setTimeFormatter(new j1.c());
        t(TimeEntity.now(), TimeEntity.hourOnFuture(12));
    }

    public final TimeEntity getEndValue() {
        return this.f5175j;
    }

    public final TextView getHourLabelView() {
        return this.f5171f;
    }

    public final NumberWheelView getHourWheelView() {
        return this.f5168c;
    }

    public final TextView getMinuteLabelView() {
        return this.f5172g;
    }

    public final NumberWheelView getMinuteWheelView() {
        return this.f5169d;
    }

    public final TextView getSecondLabelView() {
        return this.f5173h;
    }

    public final NumberWheelView getSecondWheelView() {
        return this.f5170e;
    }

    public final int getSelectedHour() {
        return ((Integer) this.f5168c.getCurrentItem()).intValue();
    }

    public final int getSelectedMinute() {
        return ((Integer) this.f5169d.getCurrentItem()).intValue();
    }

    public final int getSelectedSecond() {
        return ((Integer) this.f5170e.getCurrentItem()).intValue();
    }

    public final TimeEntity getStartValue() {
        return this.f5174i;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int h() {
        return R$layout.wheel_picker_time;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.TimeWheelLayout;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    public List<WheelView> j() {
        return Arrays.asList(this.f5168c, this.f5169d, this.f5170e);
    }

    public void setDefaultValue(@NonNull TimeEntity timeEntity) {
        if (this.f5174i == null) {
            this.f5174i = TimeEntity.now();
        }
        if (this.f5175j == null) {
            this.f5175j = TimeEntity.hourOnFuture(12);
        }
        postDelayed(new b(timeEntity), 200L);
    }

    public void setOnTimeSelectedListener(h hVar) {
        this.f5180o = hVar;
    }

    public void setTimeFormatter(i iVar) {
        if (iVar == null) {
            return;
        }
        this.f5168c.setFormatter(new c(iVar));
        this.f5169d.setFormatter(new d(iVar));
        this.f5170e.setFormatter(new e(iVar));
    }

    public void setTimeMode(int i9) {
        if (i9 == -1) {
            this.f5168c.setVisibility(8);
            this.f5171f.setVisibility(8);
            this.f5169d.setVisibility(8);
            this.f5172g.setVisibility(8);
            this.f5170e.setVisibility(8);
            this.f5173h.setVisibility(8);
            this.f5179n = i9;
            return;
        }
        if (i9 == 0 || i9 == 2) {
            this.f5170e.setVisibility(8);
            this.f5173h.setVisibility(8);
        }
        this.f5179n = i9;
    }

    public void t(@NonNull TimeEntity timeEntity, @NonNull TimeEntity timeEntity2) {
        u(timeEntity, timeEntity2, null);
    }

    public void u(@NonNull TimeEntity timeEntity, @NonNull TimeEntity timeEntity2, @Nullable TimeEntity timeEntity3) {
        this.f5174i = timeEntity;
        this.f5175j = timeEntity2;
        if (timeEntity3 != null) {
            this.f5176k = Integer.valueOf(timeEntity3.getHour());
            this.f5177l = Integer.valueOf(timeEntity3.getMinute());
            this.f5178m = Integer.valueOf(timeEntity3.getSecond());
        }
        q();
    }

    public void v(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f5171f.setText(charSequence);
        this.f5172g.setText(charSequence2);
        this.f5173h.setText(charSequence3);
    }

    public TimeWheelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5179n = 1;
    }

    public TimeWheelLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f5179n = 1;
    }
}
