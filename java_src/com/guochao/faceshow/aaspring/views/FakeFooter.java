package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
/* loaded from: classes3.dex */
public class FakeFooter extends FrameLayout implements wd.f {

    /* renamed from: a  reason: collision with root package name */
    private wd.f f23661a;

    public FakeFooter(@NonNull Context context) {
        super(context);
    }

    @Override // wd.h
    public void a(@NonNull wd.j jVar, int i9, int i10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.a(jVar, i9, i10);
        }
    }

    @Override // wd.f
    public boolean b(boolean z10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            return fVar.b(z10);
        }
        return true;
    }

    @Override // wd.h
    public int c(@NonNull wd.j jVar, boolean z10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            return fVar.c(jVar, z10);
        }
        return 0;
    }

    @Override // zd.f
    public void e(@NonNull wd.j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.e(jVar, refreshState, refreshState2);
        }
    }

    @Override // wd.h
    public void g(@NonNull wd.i iVar, int i9, int i10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.g(iVar, i9, i10);
        }
    }

    @Override // wd.h
    @NonNull
    public SpinnerStyle getSpinnerStyle() {
        return SpinnerStyle.Translate;
    }

    @Override // wd.h
    @NonNull
    public View getView() {
        return this;
    }

    @Override // wd.h
    public void h(float f10, int i9, int i10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.h(f10, i9, i10);
        }
    }

    @Override // wd.h
    public boolean j() {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            return fVar.j();
        }
        return false;
    }

    @Override // wd.h
    public void k(@NonNull wd.j jVar, int i9, int i10) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.k(jVar, i9, i10);
        }
    }

    @Override // wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.o(z10, f10, i9, i10, i11);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(5, BasicMeasure.EXACTLY));
    }

    public void setDelegate(wd.f fVar) {
        this.f23661a = fVar;
    }

    @Override // wd.h
    public void setPrimaryColors(int... iArr) {
        wd.f fVar = this.f23661a;
        if (fVar != null) {
            fVar.setPrimaryColors(iArr);
        }
    }

    public FakeFooter(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FakeFooter(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
