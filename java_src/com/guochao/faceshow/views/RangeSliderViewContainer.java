package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.t;
/* loaded from: classes4.dex */
public class RangeSliderViewContainer extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f26705a;

    /* renamed from: b  reason: collision with root package name */
    private View f26706b;

    /* renamed from: c  reason: collision with root package name */
    private View f26707c;

    /* renamed from: d  reason: collision with root package name */
    private View f26708d;

    /* renamed from: e  reason: collision with root package name */
    private View f26709e;

    /* renamed from: f  reason: collision with root package name */
    private long f26710f;

    /* renamed from: g  reason: collision with root package name */
    private long f26711g;

    /* renamed from: h  reason: collision with root package name */
    private long f26712h;

    /* renamed from: i  reason: collision with root package name */
    private long f26713i;

    /* renamed from: j  reason: collision with root package name */
    private int f26714j;

    /* renamed from: k  reason: collision with root package name */
    private t f26715k;

    /* renamed from: l  reason: collision with root package name */
    private t f26716l;

    /* renamed from: m  reason: collision with root package name */
    private s f26717m;

    /* renamed from: n  reason: collision with root package name */
    private c f26718n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements t.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.t.a
        public void a(float f10) {
            long w6 = RangeSliderViewContainer.this.f26717m.w(f10);
            int i9 = (w6 > 0L ? 1 : (w6 == 0L ? 0 : -1));
            if (i9 > 0 && RangeSliderViewContainer.this.f26711g - w6 < 0) {
                w6 = RangeSliderViewContainer.this.f26711g;
            } else if (i9 < 0 && RangeSliderViewContainer.this.f26710f + w6 < 0) {
                w6 = -RangeSliderViewContainer.this.f26710f;
            }
            if (w6 == 0) {
                return;
            }
            RangeSliderViewContainer.d(RangeSliderViewContainer.this, w6);
            RangeSliderViewContainer.this.f26710f += w6;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) RangeSliderViewContainer.this.f26707c.getLayoutParams();
            int i10 = marginLayoutParams.leftMargin;
            RangeSliderViewContainer.this.m();
            ((ViewGroup.MarginLayoutParams) RangeSliderViewContainer.this.f26709e.getLayoutParams()).width -= marginLayoutParams.leftMargin - i10;
        }

        @Override // com.guochao.faceshow.views.t.a
        public void b() {
            RangeSliderViewContainer.this.f26717m.C(true);
            RangeSliderViewContainer.this.f26717m.B(RangeSliderViewContainer.this.f26710f);
            if (RangeSliderViewContainer.this.f26718n != null) {
                RangeSliderViewContainer.this.f26718n.a(RangeSliderViewContainer.this.f26710f, RangeSliderViewContainer.this.f26712h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements t.a {
        b() {
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0054 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
        @Override // com.guochao.faceshow.views.t.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(float r9) {
            /*
                r8 = this;
                com.guochao.faceshow.views.RangeSliderViewContainer r0 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                com.guochao.faceshow.views.s r0 = com.guochao.faceshow.views.RangeSliderViewContainer.a(r0)
                long r0 = r0.w(r9)
                r2 = 0
                int r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r9 >= 0) goto L30
                com.guochao.faceshow.views.RangeSliderViewContainer r4 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r4 = com.guochao.faceshow.views.RangeSliderViewContainer.j(r4)
                long r4 = r4 + r0
                com.guochao.faceshow.views.RangeSliderViewContainer r6 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r6 = com.guochao.faceshow.views.RangeSliderViewContainer.e(r6)
                long r4 = r4 - r6
                int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
                if (r6 >= 0) goto L30
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r0 = com.guochao.faceshow.views.RangeSliderViewContainer.e(r9)
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r4 = com.guochao.faceshow.views.RangeSliderViewContainer.j(r9)
            L2e:
                long r0 = r0 - r4
                goto L50
            L30:
                if (r9 <= 0) goto L50
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r4 = com.guochao.faceshow.views.RangeSliderViewContainer.j(r9)
                long r4 = r4 + r0
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r6 = com.guochao.faceshow.views.RangeSliderViewContainer.l(r9)
                int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r9 <= 0) goto L50
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r0 = com.guochao.faceshow.views.RangeSliderViewContainer.l(r9)
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r4 = com.guochao.faceshow.views.RangeSliderViewContainer.j(r9)
                goto L2e
            L50:
                int r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r9 != 0) goto L55
                return
            L55:
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                com.guochao.faceshow.views.RangeSliderViewContainer.c(r9, r0)
                com.guochao.faceshow.views.RangeSliderViewContainer r9 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                android.view.View r9 = com.guochao.faceshow.views.RangeSliderViewContainer.h(r9)
                android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
                com.guochao.faceshow.views.RangeSliderViewContainer r2 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                com.guochao.faceshow.views.s r2 = com.guochao.faceshow.views.RangeSliderViewContainer.a(r2)
                com.guochao.faceshow.views.RangeSliderViewContainer r3 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r3 = com.guochao.faceshow.views.RangeSliderViewContainer.b(r3)
                int r2 = r2.x(r3)
                r9.width = r2
                com.guochao.faceshow.views.RangeSliderViewContainer r2 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                long r3 = com.guochao.faceshow.views.RangeSliderViewContainer.j(r2)
                long r3 = r3 + r0
                com.guochao.faceshow.views.RangeSliderViewContainer.k(r2, r3)
                com.guochao.faceshow.views.RangeSliderViewContainer r0 = com.guochao.faceshow.views.RangeSliderViewContainer.this
                android.view.View r0 = com.guochao.faceshow.views.RangeSliderViewContainer.h(r0)
                r0.setLayoutParams(r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.RangeSliderViewContainer.b.a(float):void");
        }

        @Override // com.guochao.faceshow.views.t.a
        public void b() {
            RangeSliderViewContainer.this.f26717m.C(true);
            RangeSliderViewContainer.this.f26717m.B(RangeSliderViewContainer.this.f26712h);
            if (RangeSliderViewContainer.this.f26718n != null) {
                RangeSliderViewContainer.this.f26718n.a(RangeSliderViewContainer.this.f26710f, RangeSliderViewContainer.this.f26712h);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(long j10, long j11);
    }

    public RangeSliderViewContainer(Context context) {
        super(context);
        o(context);
    }

    static /* synthetic */ long c(RangeSliderViewContainer rangeSliderViewContainer, long j10) {
        long j11 = rangeSliderViewContainer.f26711g + j10;
        rangeSliderViewContainer.f26711g = j11;
        return j11;
    }

    static /* synthetic */ long d(RangeSliderViewContainer rangeSliderViewContainer, long j10) {
        long j11 = rangeSliderViewContainer.f26711g - j10;
        rangeSliderViewContainer.f26711g = j11;
        return j11;
    }

    private void o(Context context) {
        this.f26705a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_range_slider, this);
        this.f26706b = inflate;
        this.f26707c = inflate.findViewById(R.id.iv_start_view);
        this.f26708d = this.f26706b.findViewById(R.id.iv_end_view);
        this.f26709e = this.f26706b.findViewById(R.id.middle_view);
        this.f26715k = new t(this.f26707c);
        this.f26716l = new t(this.f26708d);
    }

    private void p() {
        this.f26715k.setOnPositionChangedListener(new a());
        this.f26716l.setOnPositionChangedListener(new b());
    }

    public ViewGroup getContainer() {
        return (ViewGroup) this.f26706b;
    }

    public long getDuration() {
        return this.f26711g;
    }

    public View getEndView() {
        return this.f26708d;
    }

    public long getStartTimeUs() {
        return this.f26710f;
    }

    public View getStartView() {
        return this.f26707c;
    }

    public void m() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26707c.getLayoutParams();
        marginLayoutParams.leftMargin = this.f26717m.u(this);
        this.f26707c.setLayoutParams(marginLayoutParams);
    }

    public void n(s sVar, long j10, long j11, long j12) {
        this.f26717m = sVar;
        this.f26710f = j10;
        this.f26711g = j11;
        this.f26713i = j12;
        this.f26712h = j10 + j11;
        this.f26714j = sVar.x(j11);
        ViewGroup.LayoutParams layoutParams = this.f26709e.getLayoutParams();
        layoutParams.width = this.f26714j;
        this.f26709e.setLayoutParams(layoutParams);
        setMiddleRangeColor(this.f26705a.getResources().getColor(R.color.white));
        p();
    }

    public void setDurationChangeListener(c cVar) {
        this.f26718n = cVar;
    }

    public void setMiddleRangeColor(int i9) {
        this.f26709e.setBackgroundResource(R.drawable.shape_rect_sidewhite2);
    }

    public RangeSliderViewContainer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        o(context);
    }

    public RangeSliderViewContainer(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        o(context);
    }
}
