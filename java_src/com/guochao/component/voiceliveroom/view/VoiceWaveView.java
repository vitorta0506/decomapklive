package com.guochao.component.voiceliveroom.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class VoiceWaveView extends View {

    /* renamed from: a  reason: collision with root package name */
    private float f15986a;

    /* renamed from: b  reason: collision with root package name */
    private float f15987b;

    /* renamed from: c  reason: collision with root package name */
    private long f15988c;

    /* renamed from: d  reason: collision with root package name */
    private int f15989d;

    /* renamed from: e  reason: collision with root package name */
    private float f15990e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15991f;

    /* renamed from: g  reason: collision with root package name */
    private d f15992g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15993h;

    /* renamed from: i  reason: collision with root package name */
    private long f15994i;

    /* renamed from: j  reason: collision with root package name */
    private List<c> f15995j;

    /* renamed from: k  reason: collision with root package name */
    private Runnable f15996k;

    /* renamed from: l  reason: collision with root package name */
    private Interpolator f15997l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f15998m;

    /* renamed from: n  reason: collision with root package name */
    private Runnable f15999n;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VoiceWaveView.this.f15993h) {
                VoiceWaveView.this.k();
                VoiceWaveView voiceWaveView = VoiceWaveView.this;
                voiceWaveView.postDelayed(voiceWaveView.f15996k, VoiceWaveView.this.f15989d);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("Runnable", "stopImmediately = sDelayed;");
            VoiceWaveView.this.f15993h = false;
            VoiceWaveView.this.f15995j.clear();
            VoiceWaveView.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        private long f16002a = System.currentTimeMillis();

        c() {
        }

        int b() {
            return (int) (255.0f - (VoiceWaveView.this.f15997l.getInterpolation((c() - VoiceWaveView.this.f15986a) / (VoiceWaveView.this.f15987b - VoiceWaveView.this.f15986a)) * 255.0f));
        }

        float c() {
            return VoiceWaveView.this.f15986a + (VoiceWaveView.this.f15997l.getInterpolation((((float) (System.currentTimeMillis() - this.f16002a)) * 1.0f) / ((float) VoiceWaveView.this.f15988c)) * (VoiceWaveView.this.f15987b - VoiceWaveView.this.f15986a));
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
    }

    public VoiceWaveView(Context context) {
        super(context);
        this.f15986a = 40.0f;
        this.f15988c = 700L;
        this.f15989d = 300;
        this.f15990e = 1.0f;
        this.f15995j = new ArrayList();
        this.f15996k = new a();
        this.f15997l = new LinearInterpolator();
        this.f15998m = new Paint(1);
        this.f15999n = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f15994i < this.f15989d) {
            return;
        }
        this.f15995j.add(new c());
        invalidate();
        this.f15994i = currentTimeMillis;
    }

    public void l() {
        removeCallbacks(this.f15999n);
        if (this.f15993h) {
            return;
        }
        this.f15993h = true;
        this.f15996k.run();
    }

    public void m() {
        this.f15993h = false;
        this.f15995j.clear();
        invalidate();
    }

    public void n() {
        if (this.f15993h) {
            removeCallbacks(this.f15999n);
            postDelayed(this.f15999n, 200L);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Iterator<c> it = this.f15995j.iterator();
        while (it.hasNext()) {
            c next = it.next();
            float c10 = next.c();
            if (System.currentTimeMillis() - next.f16002a < this.f15988c) {
                this.f15998m.setAlpha(next.b());
                canvas.drawCircle(getWidth() / 2, getHeight() / 2, c10, this.f15998m);
            } else {
                it.remove();
            }
        }
        if (this.f15995j.size() > 0) {
            postInvalidateDelayed(10L);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        if (this.f15991f) {
            return;
        }
        this.f15987b = (Math.min(i9, i10) * this.f15990e) / 2.0f;
    }

    public void setColor(int i9) {
        this.f15998m.setColor(i9);
    }

    public void setDelayedStopListener(d dVar) {
        this.f15992g = dVar;
    }

    public void setDuration(long j10) {
        this.f15988c = j10;
    }

    public void setInitialRadius(float f10) {
        this.f15986a = f10;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f15997l = interpolator;
        if (interpolator == null) {
            this.f15997l = new LinearInterpolator();
        }
    }

    public void setMaxRadius(float f10) {
        this.f15987b = f10;
        this.f15991f = true;
    }

    public void setMaxRadiusRate(float f10) {
        this.f15990e = f10;
    }

    public void setSpeed(int i9) {
        this.f15989d = i9;
    }

    public void setStyle(Paint.Style style) {
        this.f15998m.setStyle(style);
    }

    public VoiceWaveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15986a = 40.0f;
        this.f15988c = 700L;
        this.f15989d = 300;
        this.f15990e = 1.0f;
        this.f15995j = new ArrayList();
        this.f15996k = new a();
        this.f15997l = new LinearInterpolator();
        this.f15998m = new Paint(1);
        this.f15999n = new b();
    }
}
