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
public class SliderViewContainer extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f26749a;

    /* renamed from: b  reason: collision with root package name */
    private View f26750b;

    /* renamed from: c  reason: collision with root package name */
    private View f26751c;

    /* renamed from: d  reason: collision with root package name */
    private long f26752d;

    /* renamed from: e  reason: collision with root package name */
    private s f26753e;

    /* renamed from: f  reason: collision with root package name */
    private t f26754f;

    /* renamed from: g  reason: collision with root package name */
    private b f26755g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements t.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.t.a
        public void a(float f10) {
            long w6 = SliderViewContainer.this.f26753e.w(f10);
            int i9 = (w6 > 0L ? 1 : (w6 == 0L ? 0 : -1));
            if (i9 > 0 && (SliderViewContainer.this.f26753e.A() - SliderViewContainer.this.f26752d) - w6 < 0) {
                w6 = SliderViewContainer.this.f26753e.A() - SliderViewContainer.this.f26752d;
            } else if (i9 < 0 && SliderViewContainer.this.f26752d + w6 < 0) {
                w6 = -SliderViewContainer.this.f26752d;
            }
            if (w6 == 0) {
                return;
            }
            SliderViewContainer.this.f26752d += w6;
            SliderViewContainer.this.e();
        }

        @Override // com.guochao.faceshow.views.t.a
        public void b() {
            if (SliderViewContainer.this.f26755g != null) {
                SliderViewContainer.this.f26755g.a(SliderViewContainer.this.f26752d);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(long j10);
    }

    public SliderViewContainer(Context context) {
        super(context);
        f(context);
    }

    private void f(Context context) {
        this.f26749a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_repeat_slider, this);
        this.f26750b = inflate;
        View findViewById = inflate.findViewById(R.id.iv_slider);
        this.f26751c = findViewById;
        this.f26754f = new t(findViewById);
        g();
    }

    private void g() {
        this.f26754f.setOnPositionChangedListener(new a());
    }

    public void e() {
        if (this.f26753e != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26751c.getLayoutParams();
            marginLayoutParams.leftMargin = this.f26753e.t(this);
            this.f26751c.setLayoutParams(marginLayoutParams);
        }
    }

    public View getSliderView() {
        return this.f26751c;
    }

    public long getStartTimeMs() {
        return this.f26752d;
    }

    public void setOnStartTimeChangedListener(b bVar) {
        this.f26755g = bVar;
    }

    public void setStartTimeMs(long j10) {
        this.f26752d = j10;
        e();
    }

    public void setVideoProgressControlloer(s sVar) {
        this.f26753e = sVar;
    }

    public SliderViewContainer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        f(context);
    }

    public SliderViewContainer(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        f(context);
    }
}
