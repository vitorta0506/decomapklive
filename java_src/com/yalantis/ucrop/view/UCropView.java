package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R$id;
import com.yalantis.ucrop.R$layout;
import com.yalantis.ucrop.R$styleable;
import wf.c;
import wf.d;
/* loaded from: classes5.dex */
public class UCropView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private GestureCropImageView f37742a;

    /* renamed from: b  reason: collision with root package name */
    private final OverlayView f37743b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements c {
        a() {
        }

        @Override // wf.c
        public void a(float f10) {
            UCropView.this.f37743b.setTargetAspectRatio(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements d {
        b() {
        }

        @Override // wf.d
        public void a(RectF rectF) {
            UCropView.this.f37742a.setCropRect(rectF);
        }
    }

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void c() {
        this.f37742a.setCropBoundsChangeListener(new a());
        this.f37743b.setOverlayViewChangeListener(new b());
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.f37742a;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.f37743b;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public UCropView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        LayoutInflater.from(context).inflate(R$layout.ucrop_view, (ViewGroup) this, true);
        this.f37742a = (GestureCropImageView) findViewById(R$id.image_view_crop);
        OverlayView overlayView = (OverlayView) findViewById(R$id.view_overlay);
        this.f37743b = overlayView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ucrop_UCropView);
        overlayView.g(obtainStyledAttributes);
        this.f37742a.w(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        c();
    }
}
