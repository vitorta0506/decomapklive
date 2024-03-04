package com.scwang.smartrefresh.layout.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.impl.RefreshFooterWrapper;
import com.scwang.smartrefresh.layout.impl.RefreshHeaderWrapper;
import wd.f;
import wd.g;
import wd.h;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public abstract class InternalAbstract extends RelativeLayout implements h {

    /* renamed from: a  reason: collision with root package name */
    protected View f29433a;

    /* renamed from: b  reason: collision with root package name */
    protected SpinnerStyle f29434b;

    /* renamed from: c  reason: collision with root package name */
    protected h f29435c;

    /* JADX INFO: Access modifiers changed from: protected */
    public InternalAbstract(@NonNull View view) {
        this(view, view instanceof h ? (h) view : null);
    }

    public void a(@NonNull j jVar, int i9, int i10) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        hVar.a(jVar, i9, i10);
    }

    public int c(@NonNull j jVar, boolean z10) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return 0;
        }
        return hVar.c(jVar, z10);
    }

    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        if ((this instanceof RefreshFooterWrapper) && (hVar instanceof g)) {
            if (refreshState.isFooter) {
                refreshState = refreshState.toHeader();
            }
            if (refreshState2.isFooter) {
                refreshState2 = refreshState2.toHeader();
            }
        } else if ((this instanceof RefreshHeaderWrapper) && (hVar instanceof f)) {
            if (refreshState.isHeader) {
                refreshState = refreshState.toFooter();
            }
            if (refreshState2.isHeader) {
                refreshState2 = refreshState2.toFooter();
            }
        }
        h hVar2 = this.f29435c;
        if (hVar2 != null) {
            hVar2.e(jVar, refreshState, refreshState2);
        }
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        return (obj instanceof h) && getView() == ((h) obj).getView();
    }

    public void g(@NonNull i iVar, int i9, int i10) {
        h hVar = this.f29435c;
        if (hVar != null && hVar != this) {
            hVar.g(iVar, i9, i10);
            return;
        }
        View view = this.f29433a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.l) {
                iVar.j(this, ((SmartRefreshLayout.l) layoutParams).f29356a);
            }
        }
    }

    @Override // wd.h
    @NonNull
    public SpinnerStyle getSpinnerStyle() {
        int i9;
        SpinnerStyle spinnerStyle = this.f29434b;
        if (spinnerStyle != null) {
            return spinnerStyle;
        }
        h hVar = this.f29435c;
        if (hVar != null && hVar != this) {
            return hVar.getSpinnerStyle();
        }
        View view = this.f29433a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.l) {
                SpinnerStyle spinnerStyle2 = ((SmartRefreshLayout.l) layoutParams).f29357b;
                this.f29434b = spinnerStyle2;
                if (spinnerStyle2 != null) {
                    return spinnerStyle2;
                }
            }
            if (layoutParams != null && ((i9 = layoutParams.height) == 0 || i9 == -1)) {
                SpinnerStyle spinnerStyle3 = SpinnerStyle.Scale;
                this.f29434b = spinnerStyle3;
                return spinnerStyle3;
            }
        }
        SpinnerStyle spinnerStyle4 = SpinnerStyle.Translate;
        this.f29434b = spinnerStyle4;
        return spinnerStyle4;
    }

    @Override // wd.h
    @NonNull
    public View getView() {
        View view = this.f29433a;
        return view == null ? this : view;
    }

    public void h(float f10, int i9, int i10) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        hVar.h(f10, i9, i10);
    }

    public boolean j() {
        h hVar = this.f29435c;
        return (hVar == null || hVar == this || !hVar.j()) ? false : true;
    }

    public void k(@NonNull j jVar, int i9, int i10) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        hVar.k(jVar, i9, i10);
    }

    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        hVar.o(z10, f10, i9, i10, i11);
    }

    public void setPrimaryColors(@ColorInt int... iArr) {
        h hVar = this.f29435c;
        if (hVar == null || hVar == this) {
            return;
        }
        hVar.setPrimaryColors(iArr);
    }

    protected InternalAbstract(@NonNull View view, @Nullable h hVar) {
        super(view.getContext(), null, 0);
        this.f29433a = view;
        this.f29435c = hVar;
        if ((this instanceof RefreshFooterWrapper) && (hVar instanceof g) && hVar.getSpinnerStyle() == SpinnerStyle.MatchLayout) {
            hVar.getView().setScaleY(-1.0f);
        } else if (this instanceof RefreshHeaderWrapper) {
            h hVar2 = this.f29435c;
            if ((hVar2 instanceof f) && hVar2.getSpinnerStyle() == SpinnerStyle.MatchLayout) {
                hVar.getView().setScaleY(-1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InternalAbstract(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
