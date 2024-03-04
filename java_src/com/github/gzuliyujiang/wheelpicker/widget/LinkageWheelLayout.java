package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.github.gzuliyujiang.wheelpicker.R$id;
import com.github.gzuliyujiang.wheelpicker.R$layout;
import com.github.gzuliyujiang.wheelpicker.R$styleable;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import i1.b;
import i1.e;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class LinkageWheelLayout extends BaseWheelLayout {

    /* renamed from: c  reason: collision with root package name */
    private WheelView f5149c;

    /* renamed from: d  reason: collision with root package name */
    private WheelView f5150d;

    /* renamed from: e  reason: collision with root package name */
    private WheelView f5151e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f5152f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f5153g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f5154h;

    /* renamed from: i  reason: collision with root package name */
    private Object f5155i;

    /* renamed from: j  reason: collision with root package name */
    private Object f5156j;

    /* renamed from: k  reason: collision with root package name */
    private Object f5157k;

    /* renamed from: l  reason: collision with root package name */
    private int f5158l;

    /* renamed from: m  reason: collision with root package name */
    private int f5159m;

    /* renamed from: n  reason: collision with root package name */
    private int f5160n;

    /* renamed from: o  reason: collision with root package name */
    private b f5161o;

    /* renamed from: p  reason: collision with root package name */
    private e f5162p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkageWheelLayout.this.f5162p.a(LinkageWheelLayout.this.f5149c.getCurrentItem(), LinkageWheelLayout.this.f5150d.getCurrentItem(), LinkageWheelLayout.this.f5151e.getCurrentItem());
        }
    }

    public LinkageWheelLayout(Context context) {
        super(context);
    }

    private void o() {
        this.f5149c.setData(this.f5161o.e());
        this.f5149c.setDefaultPosition(this.f5158l);
    }

    private void p() {
        this.f5150d.setData(this.f5161o.b(this.f5158l));
        this.f5150d.setDefaultPosition(this.f5159m);
    }

    private void q() {
        if (this.f5161o.f()) {
            this.f5151e.setData(this.f5161o.g(this.f5158l, this.f5159m));
            this.f5151e.setDefaultPosition(this.f5160n);
        }
    }

    private void r() {
        if (this.f5162p == null) {
            return;
        }
        this.f5151e.post(new a());
    }

    @Override // k1.a
    public void d(WheelView wheelView, int i9) {
        int id2 = wheelView.getId();
        if (id2 == R$id.wheel_picker_linkage_first_wheel) {
            this.f5158l = i9;
            this.f5159m = 0;
            this.f5160n = 0;
            p();
            q();
            r();
        } else if (id2 == R$id.wheel_picker_linkage_second_wheel) {
            this.f5159m = i9;
            this.f5160n = 0;
            q();
            r();
        } else if (id2 == R$id.wheel_picker_linkage_third_wheel) {
            this.f5160n = i9;
            r();
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.LinkageWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.LinkageWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.LinkageWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.LinkageWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.LinkageWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.LinkageWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.LinkageWheelLayout_wheel_indicatorColor, -3552823));
        setIndicatorSize(typedArray.getDimension(R$styleable.LinkageWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.LinkageWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.LinkageWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.LinkageWheelLayout_wheel_itemTextAlign, 0));
        setFirstVisible(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_firstVisible, true));
        setThirdVisible(typedArray.getBoolean(R$styleable.LinkageWheelLayout_wheel_thirdVisible, true));
        s(typedArray.getString(R$styleable.LinkageWheelLayout_wheel_firstLabel), typedArray.getString(R$styleable.LinkageWheelLayout_wheel_secondLabel), typedArray.getString(R$styleable.LinkageWheelLayout_wheel_thirdLabel));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    public void g(@NonNull Context context) {
        this.f5149c = (WheelView) findViewById(R$id.wheel_picker_linkage_first_wheel);
        this.f5150d = (WheelView) findViewById(R$id.wheel_picker_linkage_second_wheel);
        this.f5151e = (WheelView) findViewById(R$id.wheel_picker_linkage_third_wheel);
        this.f5152f = (TextView) findViewById(R$id.wheel_picker_linkage_first_label);
        this.f5153g = (TextView) findViewById(R$id.wheel_picker_linkage_second_label);
        this.f5154h = (TextView) findViewById(R$id.wheel_picker_linkage_third_label);
    }

    public final TextView getFirstLabelView() {
        return this.f5152f;
    }

    public final WheelView getFirstWheelView() {
        return this.f5149c;
    }

    public final TextView getSecondLabelView() {
        return this.f5153g;
    }

    public final WheelView getSecondWheelView() {
        return this.f5150d;
    }

    public final TextView getThirdLabelView() {
        return this.f5154h;
    }

    public final WheelView getThirdWheelView() {
        return this.f5151e;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int h() {
        return R$layout.wheel_picker_linkage;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.LinkageWheelLayout;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected List<WheelView> j() {
        return Arrays.asList(this.f5149c, this.f5150d, this.f5151e);
    }

    public void s(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        this.f5152f.setText(charSequence);
        this.f5153g.setText(charSequence2);
        this.f5154h.setText(charSequence3);
    }

    public void setData(@NonNull b bVar) {
        this.f5161o = bVar;
        setFirstVisible(bVar.h());
        setThirdVisible(bVar.f());
        int a10 = bVar.a(this.f5155i);
        this.f5158l = a10;
        int c10 = bVar.c(a10, this.f5156j);
        this.f5159m = c10;
        this.f5160n = bVar.d(this.f5158l, c10, this.f5157k);
        o();
        p();
        q();
    }

    public void setFirstVisible(boolean z10) {
        if (z10) {
            this.f5149c.setVisibility(0);
            this.f5152f.setVisibility(0);
            return;
        }
        this.f5149c.setVisibility(8);
        this.f5152f.setVisibility(8);
    }

    public void setOnLinkageSelectedListener(e eVar) {
        this.f5162p = eVar;
    }

    public void setThirdVisible(boolean z10) {
        if (z10) {
            this.f5151e.setVisibility(0);
            this.f5154h.setVisibility(0);
            return;
        }
        this.f5151e.setVisibility(8);
        this.f5154h.setVisibility(8);
    }

    public LinkageWheelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LinkageWheelLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
