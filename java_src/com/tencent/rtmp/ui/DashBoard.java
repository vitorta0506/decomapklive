package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes4.dex */
public class DashBoard extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    final StringBuilder f33422a;

    /* renamed from: b  reason: collision with root package name */
    TextView f33423b;

    /* renamed from: c  reason: collision with root package name */
    TextView f33424c;

    /* renamed from: d  reason: collision with root package name */
    private final SimpleDateFormat f33425d;

    /* renamed from: e  reason: collision with root package name */
    private ScrollView f33426e;

    /* renamed from: f  reason: collision with root package name */
    private int f33427f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f33428g;

    public DashBoard(Context context) {
        this(context, null);
    }

    public final void a(int i9, int i10, int i11, int i12) {
        TextView textView = this.f33423b;
        if (textView != null) {
            textView.setPadding(i9, i10, i11, 0);
        }
        ScrollView scrollView = this.f33426e;
        if (scrollView != null) {
            scrollView.setPadding(i9, 0, i11, i12);
        }
    }

    public void setEventTextSize(float f10) {
        TextView textView = this.f33424c;
        if (textView != null) {
            textView.setTextSize(f10);
        }
    }

    public void setMessageMaxLength(int i9) {
        this.f33427f = i9;
    }

    public void setShowLevel(int i9) {
        if (i9 == 0) {
            TextView textView = this.f33423b;
            if (textView != null) {
                textView.setVisibility(4);
            }
            ScrollView scrollView = this.f33426e;
            if (scrollView != null) {
                scrollView.setVisibility(4);
            }
            setVisibility(4);
        } else if (i9 != 1) {
            a();
            this.f33423b.setVisibility(0);
            this.f33426e.setVisibility(0);
            setVisibility(0);
        } else {
            a();
            this.f33423b.setVisibility(0);
            this.f33426e.setVisibility(4);
            setVisibility(0);
        }
    }

    public void setStatusText(CharSequence charSequence) {
        TextView textView = this.f33423b;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setStatusTextSize(float f10) {
        TextView textView = this.f33423b;
        if (textView != null) {
            textView.setTextSize(f10);
        }
    }

    public DashBoard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33422a = new StringBuilder();
        this.f33425d = new SimpleDateFormat("HH:mm:ss.SSS", Locale.ENGLISH);
        this.f33427f = 3000;
        this.f33428g = false;
        setOrientation(1);
        setVisibility(8);
    }

    private void a() {
        if (this.f33423b != null) {
            return;
        }
        this.f33423b = new TextView(getContext());
        this.f33424c = new TextView(getContext());
        this.f33426e = new ScrollView(getContext());
        this.f33423b.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f33423b.setTextColor(-49023);
        this.f33423b.setTypeface(Typeface.MONOSPACE);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.f33426e.setPadding(0, 10, 0, 0);
        this.f33426e.setLayoutParams(layoutParams);
        this.f33426e.setVerticalScrollBarEnabled(true);
        this.f33426e.setScrollbarFadingEnabled(true);
        this.f33424c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f33424c.setTextColor(-49023);
        this.f33426e.addView(this.f33424c);
        addView(this.f33423b);
        addView(this.f33426e);
        if (this.f33422a.length() <= 0) {
            this.f33422a.append("liteav sdk version:\n");
        }
        this.f33424c.setText(this.f33422a.toString());
    }
}
