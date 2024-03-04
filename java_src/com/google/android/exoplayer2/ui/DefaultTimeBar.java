package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.exoplayer2.ui.c0;
import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public class DefaultTimeBar extends View implements c0 {
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    @Nullable
    private long[] N;
    @Nullable
    private boolean[] O;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f6562a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f6563b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f6564c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f6565d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f6566e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f6567f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f6568g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f6569h;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f6570i;

    /* renamed from: j  reason: collision with root package name */
    private final Paint f6571j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final Drawable f6572k;

    /* renamed from: l  reason: collision with root package name */
    private final int f6573l;

    /* renamed from: m  reason: collision with root package name */
    private final int f6574m;

    /* renamed from: n  reason: collision with root package name */
    private final int f6575n;

    /* renamed from: o  reason: collision with root package name */
    private final int f6576o;

    /* renamed from: p  reason: collision with root package name */
    private final int f6577p;

    /* renamed from: q  reason: collision with root package name */
    private final int f6578q;

    /* renamed from: r  reason: collision with root package name */
    private final int f6579r;

    /* renamed from: s  reason: collision with root package name */
    private final int f6580s;

    /* renamed from: t  reason: collision with root package name */
    private final int f6581t;

    /* renamed from: u  reason: collision with root package name */
    private final StringBuilder f6582u;

    /* renamed from: v  reason: collision with root package name */
    private final Formatter f6583v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f6584w;

    /* renamed from: x  reason: collision with root package name */
    private final CopyOnWriteArraySet<c0.a> f6585x;

    /* renamed from: y  reason: collision with root package name */
    private final Point f6586y;

    /* renamed from: z  reason: collision with root package name */
    private final float f6587z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    private static int d(float f10, int i9) {
        return (int) ((i9 * f10) + 0.5f);
    }

    private void e(Canvas canvas) {
        int i9;
        if (this.J <= 0) {
            return;
        }
        Rect rect = this.f6565d;
        int p10 = l0.p(rect.right, rect.left, this.f6563b.right);
        int centerY = this.f6565d.centerY();
        Drawable drawable = this.f6572k;
        if (drawable == null) {
            if (!this.H && !isFocused()) {
                i9 = isEnabled() ? this.f6577p : this.f6578q;
            } else {
                i9 = this.f6579r;
            }
            canvas.drawCircle(p10, centerY, (int) ((i9 * this.F) / 2.0f), this.f6571j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.f6572k.getIntrinsicHeight() * this.F)) / 2;
        this.f6572k.setBounds(p10 - intrinsicWidth, centerY - intrinsicHeight, p10 + intrinsicWidth, centerY + intrinsicHeight);
        this.f6572k.draw(canvas);
    }

    private void f(Canvas canvas) {
        int height = this.f6563b.height();
        int centerY = this.f6563b.centerY() - (height / 2);
        int i9 = height + centerY;
        if (this.J <= 0) {
            Rect rect = this.f6563b;
            canvas.drawRect(rect.left, centerY, rect.right, i9, this.f6568g);
            return;
        }
        Rect rect2 = this.f6564c;
        int i10 = rect2.left;
        int i11 = rect2.right;
        int max = Math.max(Math.max(this.f6563b.left, i11), this.f6565d.right);
        int i12 = this.f6563b.right;
        if (max < i12) {
            canvas.drawRect(max, centerY, i12, i9, this.f6568g);
        }
        int max2 = Math.max(i10, this.f6565d.right);
        if (i11 > max2) {
            canvas.drawRect(max2, centerY, i11, i9, this.f6567f);
        }
        if (this.f6565d.width() > 0) {
            Rect rect3 = this.f6565d;
            canvas.drawRect(rect3.left, centerY, rect3.right, i9, this.f6566e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.e(this.N);
        boolean[] zArr = (boolean[]) com.google.android.exoplayer2.util.a.e(this.O);
        int i13 = this.f6576o / 2;
        for (int i14 = 0; i14 < this.M; i14++) {
            long q10 = l0.q(jArr[i14], 0L, this.J);
            Rect rect4 = this.f6563b;
            int min = rect4.left + Math.min(rect4.width() - this.f6576o, Math.max(0, ((int) ((this.f6563b.width() * q10) / this.J)) - i13));
            canvas.drawRect(min, centerY, min + this.f6576o, i9, zArr[i14] ? this.f6570i : this.f6569h);
        }
    }

    private long getPositionIncrement() {
        long j10 = this.B;
        if (j10 == -9223372036854775807L) {
            long j11 = this.J;
            if (j11 == -9223372036854775807L) {
                return 0L;
            }
            return j11 / this.A;
        }
        return j10;
    }

    private String getProgressText() {
        return l0.b0(this.f6582u, this.f6583v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f6563b.width() <= 0 || this.J == -9223372036854775807L) {
            return 0L;
        }
        return (this.f6565d.width() * this.J) / this.f6563b.width();
    }

    private boolean i(float f10, float f11) {
        return this.f6562a.contains((int) f10, (int) f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        v(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f6562a);
    }

    private void l(float f10) {
        Rect rect = this.f6565d;
        Rect rect2 = this.f6563b;
        rect.right = l0.p((int) f10, rect2.left, rect2.right);
    }

    private static int m(float f10, int i9) {
        return (int) (i9 / f10);
    }

    private Point n(MotionEvent motionEvent) {
        this.f6586y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f6586y;
    }

    private boolean o(long j10) {
        long j11 = this.J;
        if (j11 <= 0) {
            return false;
        }
        long j12 = this.H ? this.I : this.K;
        long q10 = l0.q(j12 + j10, 0L, j11);
        if (q10 == j12) {
            return false;
        }
        if (!this.H) {
            u(q10);
        } else {
            y(q10);
        }
        w();
        return true;
    }

    private boolean p(Drawable drawable) {
        return l0.f6985a >= 23 && q(drawable, getLayoutDirection());
    }

    private static boolean q(Drawable drawable, int i9) {
        return l0.f6985a >= 23 && drawable.setLayoutDirection(i9);
    }

    @RequiresApi(29)
    private void r(int i9, int i10) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i9 && this.D.height() == i10) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i9, i10);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void u(long j10) {
        this.I = j10;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<c0.a> it = this.f6585x.iterator();
        while (it.hasNext()) {
            it.next().E(this, j10);
        }
    }

    private void v(boolean z10) {
        removeCallbacks(this.f6584w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<c0.a> it = this.f6585x.iterator();
        while (it.hasNext()) {
            it.next().D(this, this.I, z10);
        }
    }

    private void w() {
        this.f6564c.set(this.f6563b);
        this.f6565d.set(this.f6563b);
        long j10 = this.H ? this.I : this.K;
        if (this.J > 0) {
            int width = (int) ((this.f6563b.width() * this.L) / this.J);
            Rect rect = this.f6564c;
            Rect rect2 = this.f6563b;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f6563b.width() * j10) / this.J);
            Rect rect3 = this.f6565d;
            Rect rect4 = this.f6563b;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f6564c;
            int i9 = this.f6563b.left;
            rect5.right = i9;
            this.f6565d.right = i9;
        }
        invalidate(this.f6562a);
    }

    private void x() {
        Drawable drawable = this.f6572k;
        if (drawable != null && drawable.isStateful() && this.f6572k.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void y(long j10) {
        if (this.I == j10) {
            return;
        }
        this.I = j10;
        Iterator<c0.a> it = this.f6585x.iterator();
        while (it.hasNext()) {
            it.next().r(this, j10);
        }
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void a(@Nullable long[] jArr, @Nullable boolean[] zArr, int i9) {
        com.google.android.exoplayer2.util.a.a(i9 == 0 || !(jArr == null || zArr == null));
        this.M = i9;
        this.N = jArr;
        this.O = zArr;
        w();
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void addListener(c0.a aVar) {
        com.google.android.exoplayer2.util.a.e(aVar);
        this.f6585x.add(aVar);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        x();
    }

    public void g(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.E.setFloatValues(this.F, 0.0f);
        this.E.setDuration(j10);
        this.E.start();
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public long getPreferredUpdateDelay() {
        int m10 = m(this.f6587z, this.f6563b.width());
        if (m10 != 0) {
            long j10 = this.J;
            if (j10 != 0 && j10 != -9223372036854775807L) {
                return j10 / m10;
            }
        }
        return Long.MAX_VALUE;
    }

    public void h(boolean z10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = z10;
        this.F = 0.0f;
        invalidate(this.f6562a);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f6572k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        f(canvas);
        e(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i9, @Nullable Rect rect) {
        super.onFocusChanged(z10, i9, rect);
        if (!this.H || z10) {
            return;
        }
        v(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        if (l0.f6985a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.o(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.f6584w
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.f6584w
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.H
            if (r0 == 0) goto L30
            r5 = 0
            r4.v(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = i11 - i9;
        int i16 = i12 - i10;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i15 - getPaddingRight();
        int i17 = this.G ? 0 : this.f6580s;
        if (this.f6575n == 1) {
            i13 = (i16 - getPaddingBottom()) - this.f6574m;
            int i18 = this.f6573l;
            i14 = ((i16 - getPaddingBottom()) - i18) - Math.max(i17 - (i18 / 2), 0);
        } else {
            i13 = (i16 - this.f6574m) / 2;
            i14 = (i16 - this.f6573l) / 2;
        }
        this.f6562a.set(paddingLeft, i13, paddingRight, this.f6574m + i13);
        Rect rect = this.f6563b;
        Rect rect2 = this.f6562a;
        rect.set(rect2.left + i17, i14, rect2.right - i17, this.f6573l + i14);
        if (l0.f6985a >= 29) {
            r(i15, i16);
        }
        w();
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == 0) {
            size = this.f6574m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f6574m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i9), size);
        x();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i9) {
        Drawable drawable = this.f6572k;
        if (drawable == null || !q(drawable, i9)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r3 != 3) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L76
            long r2 = r7.J
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L76
        L10:
            android.graphics.Point r0 = r7.n(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5d
            r5 = 3
            if (r3 == r4) goto L4e
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4e
            goto L76
        L28:
            boolean r8 = r7.H
            if (r8 == 0) goto L76
            int r8 = r7.f6581t
            if (r0 >= r8) goto L3a
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.l(r8)
            goto L40
        L3a:
            r7.C = r2
            float r8 = (float) r2
            r7.l(r8)
        L40:
            long r0 = r7.getScrubberPosition()
            r7.y(r0)
            r7.w()
            r7.invalidate()
            return r4
        L4e:
            boolean r0 = r7.H
            if (r0 == 0) goto L76
            int r8 = r8.getAction()
            if (r8 != r5) goto L59
            r1 = 1
        L59:
            r7.v(r1)
            return r4
        L5d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.i(r8, r0)
            if (r0 == 0) goto L76
            r7.l(r8)
            long r0 = r7.getScrubberPosition()
            r7.u(r0)
            r7.w()
            r7.invalidate()
            return r4
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i9, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i9, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i9 == 8192) {
            if (o(-getPositionIncrement())) {
                v(false);
            }
        } else if (i9 != 4096) {
            return false;
        } else {
            if (o(getPositionIncrement())) {
                v(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void removeListener(c0.a aVar) {
        this.f6585x.remove(aVar);
    }

    public void s() {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.F = 1.0f;
        invalidate(this.f6562a);
    }

    public void setAdMarkerColor(@ColorInt int i9) {
        this.f6569h.setColor(i9);
        invalidate(this.f6562a);
    }

    public void setBufferedColor(@ColorInt int i9) {
        this.f6567f.setColor(i9);
        invalidate(this.f6562a);
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void setBufferedPosition(long j10) {
        if (this.L == j10) {
            return;
        }
        this.L = j10;
        w();
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void setDuration(long j10) {
        if (this.J == j10) {
            return;
        }
        this.J = j10;
        if (this.H && j10 == -9223372036854775807L) {
            v(true);
        }
        w();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.c0
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (!this.H || z10) {
            return;
        }
        v(true);
    }

    public void setKeyCountIncrement(int i9) {
        com.google.android.exoplayer2.util.a.a(i9 > 0);
        this.A = i9;
        this.B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j10) {
        com.google.android.exoplayer2.util.a.a(j10 > 0);
        this.A = -1;
        this.B = j10;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i9) {
        this.f6570i.setColor(i9);
        invalidate(this.f6562a);
    }

    public void setPlayedColor(@ColorInt int i9) {
        this.f6566e.setColor(i9);
        invalidate(this.f6562a);
    }

    @Override // com.google.android.exoplayer2.ui.c0
    public void setPosition(long j10) {
        if (this.K == j10) {
            return;
        }
        this.K = j10;
        setContentDescription(getProgressText());
        w();
    }

    public void setScrubberColor(@ColorInt int i9) {
        this.f6571j.setColor(i9);
        invalidate(this.f6562a);
    }

    public void setUnplayedColor(@ColorInt int i9) {
        this.f6568g.setColor(i9);
        invalidate(this.f6562a);
    }

    public void t(long j10) {
        if (this.E.isStarted()) {
            this.E.cancel();
        }
        this.G = false;
        this.E.setFloatValues(this.F, 1.0f);
        this.E.setDuration(j10);
        this.E.start();
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i9, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i9, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i9, @Nullable AttributeSet attributeSet2, int i10) {
        super(context, attributeSet, i9);
        this.f6562a = new Rect();
        this.f6563b = new Rect();
        this.f6564c = new Rect();
        this.f6565d = new Rect();
        Paint paint = new Paint();
        this.f6566e = paint;
        Paint paint2 = new Paint();
        this.f6567f = paint2;
        Paint paint3 = new Paint();
        this.f6568g = paint3;
        Paint paint4 = new Paint();
        this.f6569h = paint4;
        Paint paint5 = new Paint();
        this.f6570i = paint5;
        Paint paint6 = new Paint();
        this.f6571j = paint6;
        paint6.setAntiAlias(true);
        this.f6585x = new CopyOnWriteArraySet<>();
        this.f6586y = new Point();
        float f10 = context.getResources().getDisplayMetrics().density;
        this.f6587z = f10;
        this.f6581t = d(f10, -50);
        int d10 = d(f10, 4);
        int d11 = d(f10, 26);
        int d12 = d(f10, 4);
        int d13 = d(f10, 12);
        int d14 = d(f10, 0);
        int d15 = d(f10, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.DefaultTimeBar, i9, i10);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.DefaultTimeBar_scrubber_drawable);
                this.f6572k = drawable;
                if (drawable != null) {
                    p(drawable);
                    d11 = Math.max(drawable.getMinimumHeight(), d11);
                }
                this.f6573l = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_bar_height, d10);
                this.f6574m = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_touch_target_height, d11);
                this.f6575n = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_bar_gravity, 0);
                this.f6576o = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_ad_marker_width, d12);
                this.f6577p = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_enabled_size, d13);
                this.f6578q = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_disabled_size, d14);
                this.f6579r = obtainStyledAttributes.getDimensionPixelSize(R$styleable.DefaultTimeBar_scrubber_dragged_size, d15);
                int i11 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_color, -1);
                int i12 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_scrubber_color, -1);
                int i13 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_buffered_color, -855638017);
                int i14 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i15 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i16 = obtainStyledAttributes.getInt(R$styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i11);
                paint6.setColor(i12);
                paint2.setColor(i13);
                paint3.setColor(i14);
                paint4.setColor(i15);
                paint5.setColor(i16);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f6573l = d10;
            this.f6574m = d11;
            this.f6575n = 0;
            this.f6576o = d12;
            this.f6577p = d13;
            this.f6578q = d14;
            this.f6579r = d15;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f6572k = null;
        }
        StringBuilder sb2 = new StringBuilder();
        this.f6582u = sb2;
        this.f6583v = new Formatter(sb2, Locale.getDefault());
        this.f6584w = new Runnable() { // from class: i3.d
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.j();
            }
        };
        Drawable drawable2 = this.f6572k;
        if (drawable2 != null) {
            this.f6580s = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f6580s = (Math.max(this.f6578q, Math.max(this.f6577p, this.f6579r)) + 1) / 2;
        }
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: i3.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.k(valueAnimator2);
            }
        });
        this.J = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
