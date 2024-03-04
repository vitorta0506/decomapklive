package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.loopView.LoopView;
import com.tencent.rtmp.TXVodConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class WithdrawalDatePickerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f24149a;

    /* renamed from: b  reason: collision with root package name */
    int f24150b;

    /* renamed from: c  reason: collision with root package name */
    int f24151c;

    /* renamed from: d  reason: collision with root package name */
    Calendar f24152d;

    /* renamed from: e  reason: collision with root package name */
    List<String> f24153e;

    /* renamed from: f  reason: collision with root package name */
    private int f24154f;

    /* renamed from: g  reason: collision with root package name */
    private int f24155g;

    /* renamed from: h  reason: collision with root package name */
    private e f24156h;

    /* renamed from: i  reason: collision with root package name */
    private String f24157i;

    /* renamed from: j  reason: collision with root package name */
    private String f24158j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f24159k;
    @BindView
    LoopView mWheelViewMonth;
    @BindView
    LoopView mWheelViewYear;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements na.a {
        a() {
        }

        @Override // na.a
        public void a(LoopView loopView, int i9, int i10, int i11, int i12) {
        }

        @Override // na.a
        public void b(LoopView loopView, int i9, int i10, int i11) {
            WithdrawalDatePickerView withdrawalDatePickerView = WithdrawalDatePickerView.this;
            withdrawalDatePickerView.f24157i = (String) withdrawalDatePickerView.f24149a.get(i9);
            WithdrawalDatePickerView withdrawalDatePickerView2 = WithdrawalDatePickerView.this;
            withdrawalDatePickerView2.k(withdrawalDatePickerView2.f24157i, WithdrawalDatePickerView.this.f24158j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements na.a {
        b() {
        }

        @Override // na.a
        public void a(LoopView loopView, int i9, int i10, int i11, int i12) {
        }

        @Override // na.a
        public void b(LoopView loopView, int i9, int i10, int i11) {
            WithdrawalDatePickerView withdrawalDatePickerView = WithdrawalDatePickerView.this;
            withdrawalDatePickerView.f24158j = withdrawalDatePickerView.f24153e.get(i9);
            WithdrawalDatePickerView withdrawalDatePickerView2 = WithdrawalDatePickerView.this;
            withdrawalDatePickerView2.k(withdrawalDatePickerView2.f24157i, WithdrawalDatePickerView.this.f24158j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements na.b {
        c() {
        }

        @Override // na.b
        public void a(int i9) {
            WithdrawalDatePickerView withdrawalDatePickerView = WithdrawalDatePickerView.this;
            withdrawalDatePickerView.f24157i = (String) withdrawalDatePickerView.f24149a.get(i9);
            if (!WithdrawalDatePickerView.this.getContext().getString(R.string.all).equals(WithdrawalDatePickerView.this.f24157i)) {
                if (WithdrawalDatePickerView.this.f24159k) {
                    if (i9 == WithdrawalDatePickerView.this.f24149a.size() - 2) {
                        WithdrawalDatePickerView withdrawalDatePickerView2 = WithdrawalDatePickerView.this;
                        withdrawalDatePickerView2.f24153e = withdrawalDatePickerView2.getThisYearMonthList();
                    } else {
                        WithdrawalDatePickerView withdrawalDatePickerView3 = WithdrawalDatePickerView.this;
                        withdrawalDatePickerView3.f24153e = withdrawalDatePickerView3.getMonthList();
                    }
                } else {
                    WithdrawalDatePickerView withdrawalDatePickerView4 = WithdrawalDatePickerView.this;
                    withdrawalDatePickerView4.f24153e = withdrawalDatePickerView4.getMonthList();
                }
                WithdrawalDatePickerView withdrawalDatePickerView5 = WithdrawalDatePickerView.this;
                withdrawalDatePickerView5.mWheelViewMonth.setItems(withdrawalDatePickerView5.f24153e);
                WithdrawalDatePickerView.this.mWheelViewMonth.setCurrentPosition(0);
                WithdrawalDatePickerView.this.mWheelViewMonth.a();
                WithdrawalDatePickerView.this.mWheelViewMonth.setVisibility(0);
                WithdrawalDatePickerView withdrawalDatePickerView6 = WithdrawalDatePickerView.this;
                withdrawalDatePickerView6.f24158j = withdrawalDatePickerView6.f24153e.get(0);
                WithdrawalDatePickerView withdrawalDatePickerView7 = WithdrawalDatePickerView.this;
                withdrawalDatePickerView7.k(withdrawalDatePickerView7.f24157i, WithdrawalDatePickerView.this.f24158j);
                return;
            }
            WithdrawalDatePickerView withdrawalDatePickerView8 = WithdrawalDatePickerView.this;
            withdrawalDatePickerView8.k(withdrawalDatePickerView8.f24157i, WithdrawalDatePickerView.this.f24158j);
            WithdrawalDatePickerView.this.mWheelViewMonth.setVisibility(4);
            WithdrawalDatePickerView.this.mWheelViewMonth.setCurrentPosition(0);
            WithdrawalDatePickerView withdrawalDatePickerView9 = WithdrawalDatePickerView.this;
            withdrawalDatePickerView9.f24158j = withdrawalDatePickerView9.f24153e.get(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements na.b {
        d() {
        }

        @Override // na.b
        public void a(int i9) {
            WithdrawalDatePickerView withdrawalDatePickerView = WithdrawalDatePickerView.this;
            withdrawalDatePickerView.f24158j = withdrawalDatePickerView.f24153e.get(i9);
            WithdrawalDatePickerView withdrawalDatePickerView2 = WithdrawalDatePickerView.this;
            withdrawalDatePickerView2.k(withdrawalDatePickerView2.f24157i, WithdrawalDatePickerView.this.f24158j);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void A0(Calendar calendar, String str, String str2);
    }

    public WithdrawalDatePickerView(Context context) {
        super(context);
        this.f24149a = new ArrayList();
        this.f24154f = 16;
        this.f24155g = 15;
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> getMonthList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getContext().getString(R.string.january));
        arrayList.add(getContext().getString(R.string.february));
        arrayList.add(getContext().getString(R.string.march));
        arrayList.add(getContext().getString(R.string.april));
        arrayList.add(getContext().getString(R.string.may));
        arrayList.add(getContext().getString(R.string.june));
        arrayList.add(getContext().getString(R.string.july));
        arrayList.add(getContext().getString(R.string.august));
        arrayList.add(getContext().getString(R.string.september));
        arrayList.add(getContext().getString(R.string.october));
        arrayList.add(getContext().getString(R.string.november));
        arrayList.add(getContext().getString(R.string.december));
        return arrayList;
    }

    private String getSelectMonth() {
        switch (this.f24151c + 1) {
            case 1:
                return getContext().getString(R.string.january);
            case 2:
                return getContext().getString(R.string.february);
            case 3:
                return getContext().getString(R.string.march);
            case 4:
                return getContext().getString(R.string.april);
            case 5:
                return getContext().getString(R.string.may);
            case 6:
                return getContext().getString(R.string.june);
            case 7:
                return getContext().getString(R.string.july);
            case 8:
                return getContext().getString(R.string.august);
            case 9:
                return getContext().getString(R.string.september);
            case 10:
                return getContext().getString(R.string.october);
            case 11:
                return getContext().getString(R.string.november);
            case 12:
                return getContext().getString(R.string.december);
            default:
                return getContext().getString(R.string.january);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> getThisYearMonthList() {
        int i9 = Calendar.getInstance().get(2) + 1;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getMonthList().size(); i10++) {
            if (i9 > i10) {
                arrayList.add(getMonthList().get(i10));
            }
        }
        return arrayList;
    }

    private List<String> getYearList() {
        int i9;
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.f24159k;
        if (z10) {
            i9 = Calendar.getInstance().get(1);
        } else {
            i9 = Calendar.getInstance().get(1) + 1;
        }
        for (int i10 = TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED; i10 <= i9; i10++) {
            if (Language.SIMPLE_CHINESE.equalsIgnoreCase(q7.a.e().c())) {
                arrayList.add(String.format(Locale.getDefault(), getContext().getString(R.string.year), Integer.valueOf(i10)));
            } else {
                arrayList.add(String.valueOf(i10));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(String str, String str2) {
        LogUtils.i("DatePickerView", "year:" + str + " month:" + str2);
        e eVar = this.f24156h;
        if (eVar != null) {
            eVar.A0(this.f24152d, str, str2);
        }
    }

    public e getOnDateChangedListener() {
        return this.f24156h;
    }

    public void j() {
        setOrientation(0);
        LayoutInflater.from(getContext()).inflate(R.layout.layout_withdrawal_date_view, this);
        ButterKnife.b(this);
        this.f24149a.clear();
        this.f24149a.addAll(getYearList());
        this.f24153e = getThisYearMonthList();
        this.mWheelViewYear.setItems(this.f24149a);
        this.mWheelViewYear.setItemsVisibleCount(6);
        this.mWheelViewYear.setTextSize(15.0f);
        this.mWheelViewYear.setInitPosition(this.f24149a.size() - 1);
        this.mWheelViewMonth.setItems(this.f24153e);
        this.mWheelViewMonth.setItemsVisibleCount(6);
        this.mWheelViewMonth.setTextSize(15.0f);
        this.mWheelViewMonth.setInitPosition(this.f24153e.indexOf(getSelectMonth()));
        if (this.f24152d == null) {
            this.mWheelViewMonth.setVisibility(4);
        } else {
            this.mWheelViewMonth.setVisibility(0);
        }
        List<String> list = this.f24149a;
        this.f24157i = list.get(list.size() - 1);
        String str = this.f24153e.get(0);
        this.f24158j = str;
        k(this.f24157i, str);
        this.mWheelViewYear.setOnItemScrollListener(new a());
        this.mWheelViewMonth.setOnItemScrollListener(new b());
        this.mWheelViewYear.setListener(new c());
        this.mWheelViewMonth.setListener(new d());
    }

    public void l() {
        if (Language.SIMPLE_CHINESE.equalsIgnoreCase(q7.a.e().c())) {
            this.mWheelViewYear.setInitPosition(this.f24149a.indexOf(String.format(getContext().getString(R.string.year), Integer.valueOf(this.f24150b))));
        } else {
            this.mWheelViewYear.setInitPosition(this.f24149a.indexOf(String.valueOf(this.f24150b)));
        }
        this.mWheelViewMonth.setInitPosition(getMonthList().indexOf(getSelectMonth()));
        this.f24157i = String.format(getContext().getString(R.string.year), Integer.valueOf(this.f24150b));
        String selectMonth = getSelectMonth();
        this.f24158j = selectMonth;
        k(this.f24157i, selectMonth);
    }

    public void setDefaultDate(Calendar calendar) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            this.f24152d = calendar2;
            this.f24150b = calendar2.get(1);
            this.f24151c = this.f24152d.get(2);
            l();
        }
    }

    public void setOnDateChangedListener(e eVar) {
        this.f24156h = eVar;
    }

    public void setShowAll(boolean z10) {
        this.f24159k = z10;
        if (z10) {
            this.f24149a.clear();
            this.f24149a.addAll(getYearList());
            this.f24149a.add(getContext().getString(R.string.all));
        } else {
            this.mWheelViewMonth.setVisibility(0);
            this.f24149a.clear();
            this.f24149a.addAll(getYearList());
            this.f24153e.clear();
            this.f24153e.addAll(getMonthList());
        }
        this.mWheelViewMonth.setItems(this.f24153e);
        this.mWheelViewYear.setItems(this.f24149a);
        this.mWheelViewYear.setInitPosition(this.f24149a.size() - 1);
        this.mWheelViewMonth.setInitPosition(this.f24153e.indexOf(getSelectMonth()));
    }

    public WithdrawalDatePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24149a = new ArrayList();
        this.f24154f = 16;
        this.f24155g = 15;
        j();
    }

    public WithdrawalDatePickerView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24149a = new ArrayList();
        this.f24154f = 16;
        this.f24155g = 15;
        j();
    }
}
