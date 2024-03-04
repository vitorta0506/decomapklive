package com.scwang.smartrefresh.layout.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.R$styleable;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.d;
import wd.g;
import wd.h;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public class TwoLevelHeader extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected int f29419d;

    /* renamed from: e  reason: collision with root package name */
    protected float f29420e;

    /* renamed from: f  reason: collision with root package name */
    protected float f29421f;

    /* renamed from: g  reason: collision with root package name */
    protected float f29422g;

    /* renamed from: h  reason: collision with root package name */
    protected float f29423h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f29424i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f29425j;

    /* renamed from: k  reason: collision with root package name */
    protected int f29426k;

    /* renamed from: l  reason: collision with root package name */
    protected int f29427l;

    /* renamed from: m  reason: collision with root package name */
    protected h f29428m;

    /* renamed from: n  reason: collision with root package name */
    protected i f29429n;

    /* renamed from: o  reason: collision with root package name */
    protected d f29430o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29431a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f29432b;

        static {
            int[] iArr = new int[SpinnerStyle.values().length];
            f29432b = iArr;
            try {
                iArr[SpinnerStyle.Translate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29432b[SpinnerStyle.Scale.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[RefreshState.values().length];
            f29431a = iArr2;
            try {
                iArr2[RefreshState.TwoLevelReleased.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29431a[RefreshState.TwoLevel.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29431a[RefreshState.TwoLevelFinish.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29431a[RefreshState.PullDownToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public TwoLevelHeader(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        h hVar = this.f29428m;
        if (hVar != null) {
            hVar.e(jVar, refreshState, refreshState2);
            int i9 = a.f29431a[refreshState2.ordinal()];
            boolean z10 = true;
            if (i9 != 1) {
                if (i9 != 3) {
                    if (i9 == 4 && hVar.getView().getAlpha() == 0.0f && hVar.getView() != this) {
                        hVar.getView().setAlpha(1.0f);
                        return;
                    }
                    return;
                } else if (hVar.getView() != this) {
                    hVar.getView().animate().alpha(1.0f).setDuration(this.f29426k / 2);
                    return;
                } else {
                    return;
                }
            }
            if (hVar.getView() != this) {
                hVar.getView().animate().alpha(0.0f).setDuration(this.f29426k / 2);
            }
            i iVar = this.f29429n;
            if (iVar != null) {
                d dVar = this.f29430o;
                if (dVar != null && !dVar.a(jVar)) {
                    z10 = false;
                }
                iVar.f(z10);
            }
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract
    public boolean equals(Object obj) {
        h hVar = this.f29428m;
        return (hVar != null && hVar.equals(obj)) || super.equals(obj);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        h hVar = this.f29428m;
        if (hVar == null) {
            return;
        }
        if (((i10 + i9) * 1.0f) / i9 != this.f29421f && this.f29427l == 0) {
            this.f29427l = i9;
            this.f29428m = null;
            iVar.k().e(this.f29421f);
            this.f29428m = hVar;
        }
        if (this.f29429n == null && hVar.getSpinnerStyle() == SpinnerStyle.Translate && !isInEditMode()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) hVar.getView().getLayoutParams();
            marginLayoutParams.topMargin -= i9;
            hVar.getView().setLayoutParams(marginLayoutParams);
        }
        this.f29427l = i9;
        this.f29429n = iVar;
        iVar.e(this.f29426k);
        iVar.a(this, !this.f29425j);
        hVar.g(iVar, i9, i10);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        r(i9);
        h hVar = this.f29428m;
        i iVar = this.f29429n;
        if (hVar != null) {
            hVar.o(z10, f10, i9, i10, i11);
        }
        if (z10) {
            float f11 = this.f29420e;
            float f12 = this.f29422g;
            if (f11 < f12 && f10 >= f12 && this.f29424i) {
                iVar.b(RefreshState.ReleaseToTwoLevel);
            } else if (f11 >= f12 && f10 < this.f29423h) {
                iVar.b(RefreshState.PullDownToRefresh);
            } else if (f11 >= f12 && f10 < f12) {
                iVar.b(RefreshState.ReleaseToRefresh);
            }
            this.f29420e = f10;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f29434b = SpinnerStyle.MatchLayout;
        if (this.f29428m == null) {
            s(new ClassicsHeader(getContext()));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f29434b = SpinnerStyle.FixedBehind;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        int i9 = 0;
        while (true) {
            if (i9 >= childCount) {
                break;
            }
            View childAt = getChildAt(i9);
            if (childAt instanceof g) {
                this.f29428m = (g) childAt;
                this.f29435c = (h) childAt;
                bringChildToFront(childAt);
                break;
            }
            i9++;
        }
        if (this.f29428m == null) {
            s(new ClassicsHeader(getContext()));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        h hVar = this.f29428m;
        if (hVar != null) {
            if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
                hVar.getView().measure(i9, i10);
                super.setMeasuredDimension(View.resolveSize(super.getSuggestedMinimumWidth(), i9), hVar.getView().getMeasuredHeight());
                return;
            }
            super.onMeasure(i9, i10);
            return;
        }
        super.onMeasure(i9, i10);
    }

    protected void r(int i9) {
        h hVar = this.f29428m;
        if (this.f29419d == i9 || hVar == null) {
            return;
        }
        this.f29419d = i9;
        int i10 = a.f29432b[hVar.getSpinnerStyle().ordinal()];
        if (i10 == 1) {
            hVar.getView().setTranslationY(i9);
        } else if (i10 != 2) {
        } else {
            View view = hVar.getView();
            view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getTop() + Math.max(0, i9));
        }
    }

    public TwoLevelHeader s(g gVar) {
        return t(gVar, -1, -2);
    }

    public TwoLevelHeader t(g gVar, int i9, int i10) {
        if (gVar != null) {
            h hVar = this.f29428m;
            if (hVar != null) {
                removeView(hVar.getView());
            }
            if (gVar.getSpinnerStyle() == SpinnerStyle.FixedBehind) {
                addView(gVar.getView(), 0, new RelativeLayout.LayoutParams(i9, i10));
            } else {
                addView(gVar.getView(), i9, i10);
            }
            this.f29428m = gVar;
            this.f29435c = gVar;
        }
        return this;
    }

    public TwoLevelHeader(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoLevelHeader(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29420e = 0.0f;
        this.f29421f = 2.5f;
        this.f29422g = 1.9f;
        this.f29423h = 1.0f;
        this.f29424i = true;
        this.f29425j = true;
        this.f29426k = 1000;
        this.f29434b = SpinnerStyle.FixedBehind;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TwoLevelHeader);
        this.f29421f = obtainStyledAttributes.getFloat(R$styleable.TwoLevelHeader_srlMaxRage, this.f29421f);
        this.f29422g = obtainStyledAttributes.getFloat(R$styleable.TwoLevelHeader_srlFloorRage, this.f29422g);
        this.f29423h = obtainStyledAttributes.getFloat(R$styleable.TwoLevelHeader_srlRefreshRage, this.f29423h);
        this.f29426k = obtainStyledAttributes.getInt(R$styleable.TwoLevelHeader_srlFloorDuration, this.f29426k);
        this.f29424i = obtainStyledAttributes.getBoolean(R$styleable.TwoLevelHeader_srlEnableTwoLevel, this.f29424i);
        this.f29425j = obtainStyledAttributes.getBoolean(R$styleable.TwoLevelHeader_srlEnablePullToCloseTwoLevel, this.f29425j);
        obtainStyledAttributes.recycle();
    }
}
