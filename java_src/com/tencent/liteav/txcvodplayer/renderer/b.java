package com.tencent.liteav.txcvodplayer.renderer;

import android.view.View;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    int f31623a;

    /* renamed from: b  reason: collision with root package name */
    int f31624b;

    /* renamed from: c  reason: collision with root package name */
    int f31625c;

    /* renamed from: d  reason: collision with root package name */
    int f31626d = 0;

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<View> f31627e;

    /* renamed from: f  reason: collision with root package name */
    private int f31628f;

    /* renamed from: g  reason: collision with root package name */
    private int f31629g;

    /* renamed from: h  reason: collision with root package name */
    private int f31630h;

    /* renamed from: i  reason: collision with root package name */
    private int f31631i;

    public b(View view) {
        this.f31627e = new WeakReference<>(view);
    }

    public final void a(int i9, int i10) {
        this.f31628f = i9;
        this.f31629g = i10;
    }

    public final void b(int i9, int i10) {
        this.f31630h = i9;
        this.f31631i = i10;
    }

    public final void c(int i9, int i10) {
        int i11;
        float f10;
        int i12;
        int i13 = this.f31623a;
        if (i13 == 90 || i13 == 270) {
            i10 = i9;
            i9 = i10;
        }
        int defaultSize = View.getDefaultSize(this.f31628f, i9);
        int defaultSize2 = View.getDefaultSize(this.f31629g, i10);
        if (this.f31626d != 3) {
            if (this.f31628f <= 0 || this.f31629g <= 0) {
                i9 = defaultSize;
                i10 = defaultSize2;
            } else {
                int mode = View.MeasureSpec.getMode(i9);
                i9 = View.MeasureSpec.getSize(i9);
                int mode2 = View.MeasureSpec.getMode(i10);
                i10 = View.MeasureSpec.getSize(i10);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f11 = i9 / i10;
                    int i14 = this.f31626d;
                    if (i14 == 4) {
                        int i15 = this.f31623a;
                        f10 = (i15 == 90 || i15 == 270) ? 0.5625f : 1.7777778f;
                    } else if (i14 != 5) {
                        f10 = this.f31628f / this.f31629g;
                        int i16 = this.f31630h;
                        if (i16 > 0 && (i12 = this.f31631i) > 0) {
                            f10 = (f10 * i16) / i12;
                        }
                    } else {
                        int i17 = this.f31623a;
                        f10 = (i17 == 90 || i17 == 270) ? 0.75f : 1.3333334f;
                    }
                    boolean z10 = f10 > f11;
                    if (i14 != 0) {
                        if (i14 == 1) {
                            if (z10) {
                                this.f31625c = i10;
                                this.f31624b = (int) (i10 * f10);
                                return;
                            }
                            this.f31624b = i9;
                            this.f31625c = (int) (i9 / f10);
                            return;
                        } else if (i14 != 4 && i14 != 5) {
                            if (z10) {
                                int min = Math.min(this.f31628f, i9);
                                this.f31624b = min;
                                this.f31625c = (int) (min / f10);
                                return;
                            }
                            int min2 = Math.min(this.f31629g, i10);
                            this.f31625c = min2;
                            this.f31624b = (int) (min2 * f10);
                            return;
                        }
                    }
                    if (z10) {
                        this.f31624b = i9;
                        this.f31625c = (int) (i9 / f10);
                        return;
                    }
                    this.f31625c = i10;
                    this.f31624b = (int) (i10 * f10);
                    return;
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i18 = this.f31628f;
                    int i19 = i18 * i10;
                    int i20 = this.f31629g;
                    if (i19 < i9 * i20) {
                        i9 = (i18 * i10) / i20;
                    } else if (i18 * i10 > i9 * i20) {
                        i10 = (i20 * i9) / i18;
                    }
                } else if (mode == 1073741824) {
                    int i21 = (this.f31629g * i9) / this.f31628f;
                    if (mode2 != Integer.MIN_VALUE || i21 <= i10) {
                        i10 = i21;
                    }
                } else if (mode2 == 1073741824) {
                    int i22 = (this.f31628f * i10) / this.f31629g;
                    if (mode != Integer.MIN_VALUE || i22 <= i9) {
                        i9 = i22;
                    }
                } else {
                    int i23 = this.f31628f;
                    int i24 = this.f31629g;
                    if (mode2 != Integer.MIN_VALUE || i24 <= i10) {
                        i11 = i23;
                        i10 = i24;
                    } else {
                        i11 = (i10 * i23) / i24;
                    }
                    if (mode != Integer.MIN_VALUE || i11 <= i9) {
                        i9 = i11;
                    } else {
                        i10 = (i24 * i9) / i23;
                    }
                }
            }
        }
        this.f31624b = i9;
        this.f31625c = i10;
    }
}
