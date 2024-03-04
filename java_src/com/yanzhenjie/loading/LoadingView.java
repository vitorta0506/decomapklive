package com.yanzhenjie.loading;

import ag.b;
import ag.c;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes5.dex */
public class LoadingView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private c f37765a;

    /* renamed from: b  reason: collision with root package name */
    private b f37766b;

    public LoadingView(Context context) {
        super(context);
    }

    private void b() {
        c cVar = this.f37765a;
        if (cVar != null) {
            cVar.start();
        }
    }

    private void c() {
        c cVar = this.f37765a;
        if (cVar != null) {
            cVar.stop();
        }
    }

    public void a(int i9, int i10, int i11) {
        this.f37766b.w(i9, i10, i11);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i9) {
        super.onVisibilityChanged(view, i9);
        if (i9 == 0) {
            b();
        } else {
            c();
        }
    }

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37766b = new b(context);
        c cVar = new c(this.f37766b);
        this.f37765a = cVar;
        setImageDrawable(cVar);
    }
}
