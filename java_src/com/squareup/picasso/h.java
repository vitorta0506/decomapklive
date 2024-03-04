package com.squareup.picasso;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class h implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    final t f29937a;

    /* renamed from: b  reason: collision with root package name */
    final WeakReference<ImageView> f29938b;

    /* renamed from: c  reason: collision with root package name */
    e f29939c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(t tVar, ImageView imageView, e eVar) {
        this.f29937a = tVar;
        this.f29938b = new WeakReference<>(imageView);
        this.f29939c = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f29939c = null;
        ImageView imageView = this.f29938b.get();
        if (imageView == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f29938b.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width > 0 && height > 0) {
                viewTreeObserver.removeOnPreDrawListener(this);
                this.f29937a.l().k(width, height).g(imageView, this.f29939c);
            }
            return true;
        }
        return true;
    }
}
