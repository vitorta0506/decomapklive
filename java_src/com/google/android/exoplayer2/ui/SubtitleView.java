package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x2.b;
/* loaded from: classes2.dex */
public final class SubtitleView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private List<x2.b> f6725a;

    /* renamed from: b  reason: collision with root package name */
    private i3.b f6726b;

    /* renamed from: c  reason: collision with root package name */
    private int f6727c;

    /* renamed from: d  reason: collision with root package name */
    private float f6728d;

    /* renamed from: e  reason: collision with root package name */
    private float f6729e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6730f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6731g;

    /* renamed from: h  reason: collision with root package name */
    private int f6732h;

    /* renamed from: i  reason: collision with root package name */
    private a f6733i;

    /* renamed from: j  reason: collision with root package name */
    private View f6734j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a {
        void a(List<x2.b> list, i3.b bVar, float f10, int i9, float f11);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private x2.b a(x2.b bVar) {
        b.C0686b b10 = bVar.b();
        if (!this.f6730f) {
            b0.e(b10);
        } else if (!this.f6731g) {
            b0.f(b10);
        }
        return b10.a();
    }

    private void c(int i9, float f10) {
        this.f6727c = i9;
        this.f6728d = f10;
        f();
    }

    private void f() {
        this.f6733i.a(getCuesWithStylingPreferencesApplied(), this.f6726b, this.f6728d, this.f6727c, this.f6729e);
    }

    private List<x2.b> getCuesWithStylingPreferencesApplied() {
        if (this.f6730f && this.f6731g) {
            return this.f6725a;
        }
        ArrayList arrayList = new ArrayList(this.f6725a.size());
        for (int i9 = 0; i9 < this.f6725a.size(); i9++) {
            arrayList.add(a(this.f6725a.get(i9)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (l0.f6985a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private i3.b getUserCaptionStyle() {
        if (l0.f6985a >= 19 && !isInEditMode()) {
            CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
            if (captioningManager != null && captioningManager.isEnabled()) {
                return i3.b.a(captioningManager.getUserStyle());
            }
            return i3.b.f40939g;
        }
        return i3.b.f40939g;
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f6734j);
        View view = this.f6734j;
        if (view instanceof d0) {
            ((d0) view).g();
        }
        this.f6734j = t10;
        this.f6733i = t10;
        addView(t10);
    }

    public void b(float f10, boolean z10) {
        c(z10 ? 1 : 0, f10);
    }

    public void d() {
        setStyle(getUserCaptionStyle());
    }

    public void e() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f6731g = z10;
        f();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f6730f = z10;
        f();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f6729e = f10;
        f();
    }

    public void setCues(@Nullable List<x2.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f6725a = list;
        f();
    }

    public void setFractionalTextSize(float f10) {
        b(f10, false);
    }

    public void setStyle(i3.b bVar) {
        this.f6726b = bVar;
        f();
    }

    public void setViewType(int i9) {
        if (this.f6732h == i9) {
            return;
        }
        if (i9 == 1) {
            setView(new com.google.android.exoplayer2.ui.a(getContext()));
        } else if (i9 == 2) {
            setView(new d0(getContext()));
        } else {
            throw new IllegalArgumentException();
        }
        this.f6732h = i9;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6725a = Collections.emptyList();
        this.f6726b = i3.b.f40939g;
        this.f6727c = 0;
        this.f6728d = 0.0533f;
        this.f6729e = 0.08f;
        this.f6730f = true;
        this.f6731g = true;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context);
        this.f6733i = aVar;
        this.f6734j = aVar;
        addView(aVar);
        this.f6732h = 1;
    }
}
