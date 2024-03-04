package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.ZZTimeRangeSlider;
import com.guochao.faceshow.views.t;
/* loaded from: classes4.dex */
public class TimeSeekBar extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f26835a;

    /* renamed from: b  reason: collision with root package name */
    private long f26836b;

    /* renamed from: c  reason: collision with root package name */
    private ZZTimeRangeSlider f26837c;

    /* renamed from: d  reason: collision with root package name */
    private long f26838d;

    /* renamed from: e  reason: collision with root package name */
    private long f26839e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f26840f;

    /* renamed from: g  reason: collision with root package name */
    private long f26841g;

    /* renamed from: h  reason: collision with root package name */
    private View f26842h;

    /* renamed from: i  reason: collision with root package name */
    private int f26843i;

    /* renamed from: j  reason: collision with root package name */
    private t f26844j;

    /* renamed from: k  reason: collision with root package name */
    private View f26845k;

    /* renamed from: l  reason: collision with root package name */
    private LinearLayout f26846l;

    /* renamed from: m  reason: collision with root package name */
    private d f26847m;

    /* renamed from: n  reason: collision with root package name */
    private c f26848n;

    /* renamed from: o  reason: collision with root package name */
    private int f26849o;

    /* renamed from: p  reason: collision with root package name */
    boolean f26850p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements t.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.t.a
        public void a(float f10) {
            int i9;
            TimeSeekBar timeSeekBar = TimeSeekBar.this;
            if (timeSeekBar.f26850p) {
                ViewGroup.LayoutParams layoutParams = timeSeekBar.f26845k.getLayoutParams();
                if (layoutParams.width > TimeSeekBar.this.f26843i || (i9 = layoutParams.width) < 0) {
                    return;
                }
                int i10 = (int) (i9 + f10);
                layoutParams.width = i10;
                if (i10 >= TimeSeekBar.this.f26843i) {
                    layoutParams.width = TimeSeekBar.this.f26843i;
                }
                if (layoutParams.width <= 0) {
                    layoutParams.width = 0;
                }
                TimeSeekBar.this.f26849o = layoutParams.width;
                TimeSeekBar.this.f26845k.setLayoutParams(layoutParams);
            }
        }

        @Override // com.guochao.faceshow.views.t.a
        public void b() {
            TimeSeekBar timeSeekBar = TimeSeekBar.this;
            if (timeSeekBar.f26850p) {
                long j10 = (timeSeekBar.f26849o * TimeSeekBar.this.f26841g) / TimeSeekBar.this.f26843i;
                if (TimeSeekBar.this.f26848n != null) {
                    TimeSeekBar.this.f26848n.a(j10);
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements ZZTimeRangeSlider.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.ZZTimeRangeSlider.a
        public void a(int i9, int i10, int i11) {
            TimeSeekBar timeSeekBar = TimeSeekBar.this;
            timeSeekBar.f26838d = (timeSeekBar.f26841g * i10) / 100;
            TimeSeekBar timeSeekBar2 = TimeSeekBar.this;
            timeSeekBar2.f26839e = (timeSeekBar2.f26841g * i11) / 100;
            if (TimeSeekBar.this.f26847m != null) {
                TimeSeekBar.this.f26847m.a(TimeSeekBar.this.f26838d, TimeSeekBar.this.f26839e);
            }
        }

        @Override // com.guochao.faceshow.views.ZZTimeRangeSlider.a
        public void b(int i9) {
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(long j10);
    }

    /* loaded from: classes4.dex */
    public interface d {
        void a(long j10, long j11);
    }

    public TimeSeekBar(Context context) {
        super(context);
        this.f26850p = false;
        n(context);
    }

    private void n(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_time_seekbar, this);
        this.f26835a = inflate;
        this.f26837c = (ZZTimeRangeSlider) inflate.findViewById(R.id.time_range_slider);
        this.f26840f = (ImageView) this.f26835a.findViewById(R.id.palygreed);
        this.f26842h = this.f26835a.findViewById(R.id.long_bg);
        this.f26846l = (LinearLayout) this.f26835a.findViewById(R.id.progresslay);
        this.f26844j = new t(this.f26840f);
        this.f26845k = this.f26835a.findViewById(R.id.middle_view);
        this.f26844j.setOnPositionChangedListener(new a());
    }

    public void l() {
        this.f26837c.setVisibility(8);
        this.f26846l.setVisibility(0);
    }

    public void m(long j10, long j11) {
        long j12 = j11 + j10;
        this.f26836b = j12;
        ZZTimeRangeSlider zZTimeRangeSlider = this.f26837c;
        long j13 = this.f26841g;
        zZTimeRangeSlider.k((int) ((j10 * 100) / j13), (int) ((j12 * 100) / j13));
        this.f26837c.setRangeChangeListener(new b());
    }

    public void o(long j10, long j11) {
        ZZTimeRangeSlider zZTimeRangeSlider = this.f26837c;
        long j12 = this.f26841g;
        zZTimeRangeSlider.j((int) ((j10 * 100) / j12), (int) ((j11 * 100) / j12));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f26843i = this.f26842h.getMeasuredWidth();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY), i10);
    }

    public void p() {
        this.f26837c.setVisibility(0);
        this.f26846l.setVisibility(8);
    }

    public void setCurrentTimeMs(int i9) {
        ViewGroup.LayoutParams layoutParams = this.f26845k.getLayoutParams();
        layoutParams.width = (int) ((i9 * this.f26843i) / this.f26841g);
        this.f26845k.setLayoutParams(layoutParams);
    }

    public void setMaxDurationMs(long j10) {
        this.f26841g = j10;
    }

    public void setProgressChange(boolean z10) {
        this.f26850p = z10;
    }

    public void setProgressChangeListener(c cVar) {
        this.f26848n = cVar;
    }

    public void setRangeChangeListener(d dVar) {
        this.f26847m = dVar;
    }

    public TimeSeekBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26850p = false;
        n(context);
    }

    public TimeSeekBar(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26850p = false;
        n(context);
    }
}
