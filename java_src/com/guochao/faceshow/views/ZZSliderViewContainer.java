package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
/* loaded from: classes4.dex */
public class ZZSliderViewContainer extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f26876a;

    /* renamed from: b  reason: collision with root package name */
    private View f26877b;

    /* renamed from: c  reason: collision with root package name */
    private View f26878c;

    /* renamed from: d  reason: collision with root package name */
    private View f26879d;

    /* renamed from: e  reason: collision with root package name */
    private View f26880e;

    /* renamed from: f  reason: collision with root package name */
    private long f26881f;

    /* renamed from: g  reason: collision with root package name */
    private long f26882g;

    /* renamed from: h  reason: collision with root package name */
    private t f26883h;

    /* renamed from: i  reason: collision with root package name */
    private t f26884i;

    /* renamed from: j  reason: collision with root package name */
    private a f26885j;

    /* loaded from: classes4.dex */
    public interface a {
    }

    public ZZSliderViewContainer(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        this.f26876a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_range_slider, this);
        this.f26877b = inflate;
        this.f26878c = inflate.findViewById(R.id.iv_start_view);
        this.f26879d = this.f26877b.findViewById(R.id.iv_end_view);
        this.f26880e = this.f26877b.findViewById(R.id.middle_view);
        this.f26883h = new t(this.f26878c);
        this.f26884i = new t(this.f26879d);
    }

    public ViewGroup getContainer() {
        return (ViewGroup) this.f26877b;
    }

    public long getDuration() {
        return this.f26882g;
    }

    public View getEndView() {
        return this.f26879d;
    }

    public long getStartTimeUs() {
        return this.f26881f;
    }

    public View getStartView() {
        return this.f26878c;
    }

    public void setDurationChangeListener(a aVar) {
        this.f26885j = aVar;
    }

    public void setMiddleRangeColor(int i9) {
        this.f26880e.setBackgroundColor(i9);
    }

    public ZZSliderViewContainer(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public ZZSliderViewContainer(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(context);
    }
}
