package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.timepicker.TimeModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.views.wheelview.WheelView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class DatePickerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f23529a;

    /* renamed from: b  reason: collision with root package name */
    private int f23530b;

    /* renamed from: c  reason: collision with root package name */
    int f23531c;

    /* renamed from: d  reason: collision with root package name */
    int f23532d;

    /* renamed from: e  reason: collision with root package name */
    int f23533e;

    /* renamed from: f  reason: collision with root package name */
    Calendar f23534f;

    /* renamed from: g  reason: collision with root package name */
    private f f23535g;

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f23536h;

    /* renamed from: i  reason: collision with root package name */
    private final List<String> f23537i;

    /* renamed from: j  reason: collision with root package name */
    e f23538j;

    /* renamed from: k  reason: collision with root package name */
    e f23539k;

    /* renamed from: l  reason: collision with root package name */
    e f23540l;
    @BindView
    WheelView mWheelViewDay;
    @BindView
    WheelView mWheelViewMonth;
    @BindView
    WheelView mWheelViewYear;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements lb.b {
        a() {
        }

        @Override // lb.b
        public void a(WheelView wheelView, int i9, int i10) {
            int parseInt = Integer.parseInt((String) DatePickerView.this.f23537i.get(i10));
            DatePickerView datePickerView = DatePickerView.this;
            datePickerView.i(parseInt, datePickerView.f23534f.get(2), DatePickerView.this.f23534f.get(5));
            DatePickerView datePickerView2 = DatePickerView.this;
            datePickerView2.l(datePickerView2.f23538j.e(datePickerView2.mWheelViewYear.getCurrentItem()).toString(), DatePickerView.this.f23538j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements lb.b {
        b() {
        }

        @Override // lb.b
        public void a(WheelView wheelView, int i9, int i10) {
            DatePickerView datePickerView = DatePickerView.this;
            datePickerView.i(datePickerView.f23534f.get(1), i10, 1);
            DatePickerView.this.f23536h.clear();
            List list = DatePickerView.this.f23536h;
            DatePickerView datePickerView2 = DatePickerView.this;
            list.addAll(datePickerView2.g(datePickerView2.f23534f.get(1), DatePickerView.this.f23534f.get(2)));
            DatePickerView datePickerView3 = DatePickerView.this;
            WheelView wheelView2 = datePickerView3.mWheelViewDay;
            DatePickerView datePickerView4 = DatePickerView.this;
            e eVar = new e(datePickerView4.getContext(), DatePickerView.this.f23536h, 0);
            datePickerView3.f23540l = eVar;
            wheelView2.setViewAdapter(eVar);
            DatePickerView.this.mWheelViewDay.setCurrentItem(0);
            DatePickerView datePickerView5 = DatePickerView.this;
            datePickerView5.l(datePickerView5.f23539k.e(datePickerView5.mWheelViewMonth.getCurrentItem()).toString(), DatePickerView.this.f23539k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements lb.b {
        c() {
        }

        @Override // lb.b
        public void a(WheelView wheelView, int i9, int i10) {
            DatePickerView datePickerView = DatePickerView.this;
            datePickerView.i(datePickerView.f23534f.get(1), DatePickerView.this.f23534f.get(2), i10 + 1);
            DatePickerView datePickerView2 = DatePickerView.this;
            datePickerView2.l(datePickerView2.f23540l.e(datePickerView2.mWheelViewDay.getCurrentItem()).toString(), DatePickerView.this.f23540l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DatePickerView datePickerView = DatePickerView.this;
            datePickerView.l(datePickerView.f23538j.e(datePickerView.mWheelViewYear.getCurrentItem()).toString(), DatePickerView.this.f23538j);
            DatePickerView datePickerView2 = DatePickerView.this;
            datePickerView2.l(datePickerView2.f23539k.e(datePickerView2.mWheelViewMonth.getCurrentItem()).toString(), DatePickerView.this.f23539k);
            DatePickerView datePickerView3 = DatePickerView.this;
            datePickerView3.l(datePickerView3.f23540l.e(datePickerView3.mWheelViewDay.getCurrentItem()).toString(), DatePickerView.this.f23540l);
            DatePickerView.this.mWheelViewYear.invalidate();
            DatePickerView.this.mWheelViewMonth.invalidate();
            DatePickerView.this.mWheelViewDay.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e extends mb.b {

        /* renamed from: m  reason: collision with root package name */
        List<String> f23545m;

        protected e(Context context, List<String> list, int i9) {
            super(context, R.layout.item_birth_year, 0, i9, DatePickerView.this.f23530b, DatePickerView.this.f23530b);
            this.f23545m = list;
            i(R.id.tempValue);
        }

        @Override // mb.b, mb.c
        public View a(int i9, View view, ViewGroup viewGroup) {
            return super.a(i9, view, viewGroup);
        }

        @Override // mb.c
        public int b() {
            return this.f23545m.size();
        }

        @Override // mb.b
        protected CharSequence e(int i9) {
            return this.f23545m.get(i9) + "";
        }
    }

    /* loaded from: classes3.dex */
    public interface f {
        void I1(Calendar calendar, int i9, int i10, int i11);
    }

    public DatePickerView(Context context) {
        super(context);
        this.f23529a = 18;
        this.f23530b = 16;
        this.f23536h = new ArrayList();
        this.f23537i = new ArrayList();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003d A[LOOP:0: B:29:0x003b->B:30:0x003d, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> g(int r7, int r8) {
        /*
            r6 = this;
            r0 = 1
            int r8 = r8 + r0
            int r1 = r7 % 4
            r2 = 0
            if (r1 != 0) goto Ld
            int r7 = r7 % 100
            if (r7 == 0) goto Ld
            r7 = 1
            goto Le
        Ld:
            r7 = 0
        Le:
            if (r8 == r0) goto L33
            r1 = 2
            if (r8 == r1) goto L2b
            r7 = 3
            if (r8 == r7) goto L33
            r7 = 5
            if (r8 == r7) goto L33
            r7 = 10
            if (r8 == r7) goto L33
            r7 = 12
            if (r8 == r7) goto L33
            r7 = 7
            if (r8 == r7) goto L33
            r7 = 8
            if (r8 == r7) goto L33
            r7 = 30
            goto L35
        L2b:
            if (r7 == 0) goto L30
            r7 = 29
            goto L35
        L30:
            r7 = 28
            goto L35
        L33:
            r7 = 31
        L35:
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r1 = 1
        L3b:
            if (r1 > r7) goto L55
            java.util.Locale r3 = java.util.Locale.getDefault()
            java.lang.Object[] r4 = new java.lang.Object[r0]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r1)
            r4[r2] = r5
            java.lang.String r5 = "%d"
            java.lang.String r3 = java.lang.String.format(r3, r5, r4)
            r8.add(r3)
            int r1 = r1 + 1
            goto L3b
        L55:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.DatePickerView.g(int, int):java.util.List");
    }

    private List<String> getMonthList() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 1; i9 <= 12; i9++) {
            arrayList.add(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i9)));
        }
        return arrayList;
    }

    private List<String> getYearList() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 1950; i9 <= Calendar.getInstance().get(1); i9++) {
            arrayList.add(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i9)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i9, int i10, int i11) {
        LogUtils.i("DatePickerView", "year:" + i9 + " month:" + i10 + " day:" + i11);
        this.f23534f.set(1, i9);
        this.f23534f.set(2, i10);
        this.f23534f.set(5, i11);
        f fVar = this.f23535g;
        if (fVar != null) {
            fVar.I1(this.f23534f, i9, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str, e eVar) {
        ArrayList<View> f10 = eVar.f();
        int size = f10.size();
        for (int i9 = 0; i9 < size; i9++) {
            TextView textView = (TextView) f10.get(i9);
            if (textView.getText().toString().equals(str)) {
                textView.setTextSize(this.f23529a);
                textView.setTextColor(Color.parseColor("#222222"));
            } else {
                textView.setTextSize(this.f23530b);
                textView.setTextColor(Color.parseColor("#80333333"));
            }
        }
    }

    public f getOnDateChangedListener() {
        return this.f23535g;
    }

    public void h() {
        setOrientation(0);
        this.f23534f = Calendar.getInstance();
        LayoutInflater.from(getContext()).inflate(R.layout.layout_date_choose_view, this);
        ButterKnife.b(this);
        this.f23537i.clear();
        this.f23537i.addAll(getYearList());
        this.f23536h.clear();
        this.f23536h.addAll(g(this.f23534f.get(1), this.f23534f.get(2)));
        WheelView wheelView = this.mWheelViewYear;
        e eVar = new e(getContext(), this.f23537i, 0);
        this.f23538j = eVar;
        wheelView.setViewAdapter(eVar);
        WheelView wheelView2 = this.mWheelViewMonth;
        e eVar2 = new e(getContext(), getMonthList(), 0);
        this.f23539k = eVar2;
        wheelView2.setViewAdapter(eVar2);
        WheelView wheelView3 = this.mWheelViewDay;
        e eVar3 = new e(getContext(), this.f23536h, 0);
        this.f23540l = eVar3;
        wheelView3.setViewAdapter(eVar3);
        this.mWheelViewYear.addChangingListener(new a());
        this.mWheelViewMonth.addChangingListener(new b());
        this.mWheelViewDay.addChangingListener(new c());
        this.mWheelViewDay.postDelayed(new d(), 100L);
    }

    public void j() {
        this.mWheelViewYear.setCurrentItem(this.f23537i.indexOf(String.valueOf(this.f23531c)));
        this.mWheelViewMonth.setCurrentItem(getMonthList().indexOf(String.valueOf(this.f23533e + 1)));
        this.mWheelViewDay.setCurrentItem(this.f23536h.indexOf(String.valueOf(this.f23532d)));
    }

    public void k(int i9, int i10, int i11) {
        this.f23532d = i11;
        this.f23533e = i10;
        this.f23531c = i9;
        this.f23534f.set(1, i9);
        this.f23534f.set(2, i10);
        this.f23534f.set(5, i11);
        j();
    }

    public void setDefaultDate(Calendar calendar) {
        if (calendar == null) {
            this.f23534f = Calendar.getInstance();
        } else {
            this.f23534f = (Calendar) calendar.clone();
        }
        this.f23531c = this.f23534f.get(1);
        this.f23533e = this.f23534f.get(2);
        this.f23532d = this.f23534f.get(5);
        j();
    }

    public void setOnDateChangedListener(f fVar) {
        this.f23535g = fVar;
    }

    public DatePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23529a = 18;
        this.f23530b = 16;
        this.f23536h = new ArrayList();
        this.f23537i = new ArrayList();
        h();
    }

    public DatePickerView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23529a = 18;
        this.f23530b = 16;
        this.f23536h = new ArrayList();
        this.f23537i = new ArrayList();
        h();
    }
}
