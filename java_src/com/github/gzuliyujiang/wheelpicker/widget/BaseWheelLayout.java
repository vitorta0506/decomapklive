package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import com.github.gzuliyujiang.wheelpicker.R$attr;
import com.github.gzuliyujiang.wheelpicker.R$style;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import java.util.ArrayList;
import java.util.List;
import k1.a;
/* loaded from: classes.dex */
public abstract class BaseWheelLayout extends LinearLayout implements a {

    /* renamed from: a  reason: collision with root package name */
    private final List<WheelView> f5117a;

    /* renamed from: b  reason: collision with root package name */
    private AttributeSet f5118b;

    public BaseWheelLayout(Context context) {
        super(context);
        this.f5117a = new ArrayList();
        e(context, null);
    }

    private void e(Context context, AttributeSet attributeSet) {
        this.f5118b = attributeSet;
        setOrientation(1);
        LinearLayout.inflate(context, h(), this);
        g(context);
        this.f5117a.addAll(j());
        for (WheelView wheelView : this.f5117a) {
            wheelView.setOnWheelChangedListener(this);
        }
    }

    @Override // k1.a
    public void a(WheelView wheelView) {
    }

    @Override // k1.a
    public void b(WheelView wheelView, int i9) {
    }

    @Override // k1.a
    public void c(WheelView wheelView, int i9) {
    }

    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
    }

    protected void g(@NonNull Context context) {
    }

    @LayoutRes
    protected abstract int h();

    @StyleableRes
    protected abstract int[] i();

    protected abstract List<WheelView> j();

    public void setAtmosphericEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setAtmosphericEnabled(z10);
        }
    }

    public void setCurtainColor(@ColorInt int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setCurtainColor(i9);
        }
    }

    public void setCurtainEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setCurtainEnabled(z10);
        }
    }

    public void setCurvedEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setCurvedEnabled(z10);
        }
    }

    public void setCurvedMaxAngle(int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setCurvedMaxAngle(i9);
        }
    }

    public void setCyclicEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setCyclicEnabled(z10);
        }
    }

    public void setDefaultItemPosition(int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setDefaultPosition(i9);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        for (WheelView wheelView : this.f5117a) {
            wheelView.setEnabled(z10);
        }
    }

    public void setIndicatorColor(@ColorInt int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setIndicatorColor(i9);
        }
    }

    public void setIndicatorEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setIndicatorEnabled(z10);
        }
    }

    public void setIndicatorSize(@Px float f10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setIndicatorSize(f10);
        }
    }

    public void setItemSpace(@Px int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setItemSpace(i9);
        }
    }

    public void setMaxWidthText(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (WheelView wheelView : this.f5117a) {
            wheelView.setMaxWidthText(str);
        }
    }

    public void setSameWidthEnabled(boolean z10) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setSameWidthEnabled(z10);
        }
    }

    public void setSelectedTextColor(@ColorInt int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setSelectedTextColor(i9);
        }
    }

    public void setStyle(@StyleRes int i9) {
        if (this.f5118b != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(this.f5118b, i(), R$attr.WheelStyle, i9);
            f(getContext(), obtainStyledAttributes);
            obtainStyledAttributes.recycle();
            requestLayout();
            postInvalidate();
            return;
        }
        throw new RuntimeException("Please use " + getClass().getSimpleName() + " in xml");
    }

    public void setTextAlign(int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setTextAlign(i9);
        }
    }

    public void setTextColor(@ColorInt int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setTextColor(i9);
        }
    }

    public void setTextSize(@Px int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setTextSize(i9);
        }
    }

    public void setVisibleItemCount(int i9) {
        for (WheelView wheelView : this.f5117a) {
            wheelView.setVisibleItemCount(i9);
        }
    }

    public BaseWheelLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5117a = new ArrayList();
        e(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i(), R$attr.WheelStyle, R$style.WheelDefault);
        f(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public BaseWheelLayout(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f5117a = new ArrayList();
        e(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i(), i9, R$style.WheelDefault);
        f(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }
}
