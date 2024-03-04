package com.twitter.sdk.android.tweetui.internal;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
/* loaded from: classes4.dex */
public abstract class b extends ClickableSpan implements c {

    /* renamed from: a  reason: collision with root package name */
    public final int f35532a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35533b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f35534c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f35535d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f35536e;

    public b(int i9, int i10, boolean z10) {
        this(i9, i10, true, z10);
    }

    @Override // com.twitter.sdk.android.tweetui.internal.c
    public void a(boolean z10) {
        this.f35536e = z10;
    }

    @Override // com.twitter.sdk.android.tweetui.internal.c
    public boolean isSelected() {
        return this.f35536e;
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        if (this.f35534c) {
            textPaint.setColor(this.f35532a);
        } else {
            textPaint.setColor(textPaint.linkColor);
        }
        if (this.f35536e) {
            textPaint.bgColor = this.f35533b;
        } else {
            textPaint.bgColor = 0;
        }
        if (this.f35535d) {
            textPaint.setUnderlineText(true);
        }
    }

    b(int i9, int i10, boolean z10, boolean z11) {
        this.f35533b = i9;
        this.f35532a = i10;
        this.f35534c = z10;
        this.f35535d = z11;
    }
}
