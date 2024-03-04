package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x2.b;
/* loaded from: classes2.dex */
final class a extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<y> f6752a;

    /* renamed from: b  reason: collision with root package name */
    private List<x2.b> f6753b;

    /* renamed from: c  reason: collision with root package name */
    private int f6754c;

    /* renamed from: d  reason: collision with root package name */
    private float f6755d;

    /* renamed from: e  reason: collision with root package name */
    private i3.b f6756e;

    /* renamed from: f  reason: collision with root package name */
    private float f6757f;

    public a(Context context) {
        this(context, null);
    }

    private static x2.b b(x2.b bVar) {
        b.C0686b p10 = bVar.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (bVar.f59551f == 0) {
            p10.h(1.0f - bVar.f59550e, 0);
        } else {
            p10.h((-bVar.f59550e) - 1.0f, 1);
        }
        int i9 = bVar.f59552g;
        if (i9 == 0) {
            p10.i(2);
        } else if (i9 == 2) {
            p10.i(0);
        }
        return p10.a();
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<x2.b> list, i3.b bVar, float f10, int i9, float f11) {
        this.f6753b = list;
        this.f6756e = bVar;
        this.f6755d = f10;
        this.f6754c = i9;
        this.f6757f = f11;
        while (this.f6752a.size() < list.size()) {
            this.f6752a.add(new y(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<x2.b> list = this.f6753b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i9 = paddingBottom - paddingTop;
        float h10 = b0.h(this.f6754c, this.f6755d, height, i9);
        if (h10 <= 0.0f) {
            return;
        }
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            x2.b bVar = list.get(i10);
            if (bVar.f59561p != Integer.MIN_VALUE) {
                bVar = b(bVar);
            }
            x2.b bVar2 = bVar;
            int i11 = paddingBottom;
            this.f6752a.get(i10).b(bVar2, this.f6756e, h10, b0.h(bVar2.f59559n, bVar2.f59560o, height, i9), this.f6757f, canvas, paddingLeft, paddingTop, width, i11);
            i10++;
            size = size;
            i9 = i9;
            paddingBottom = i11;
            width = width;
        }
    }

    public a(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6752a = new ArrayList();
        this.f6753b = Collections.emptyList();
        this.f6754c = 0;
        this.f6755d = 0.0533f;
        this.f6756e = i3.b.f40939g;
        this.f6757f = 0.08f;
    }
}
