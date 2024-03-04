package jd;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
import com.rd.draw.data.RtlMode;
import com.rd.pageindicatorview.R$styleable;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private kd.a f53210a;

    public a(@NonNull kd.a aVar) {
        this.f53210a = aVar;
    }

    private AnimationType a(int i9) {
        switch (i9) {
            case 0:
                return AnimationType.NONE;
            case 1:
                return AnimationType.COLOR;
            case 2:
                return AnimationType.SCALE;
            case 3:
                return AnimationType.WORM;
            case 4:
                return AnimationType.SLIDE;
            case 5:
                return AnimationType.FILL;
            case 6:
                return AnimationType.THIN_WORM;
            case 7:
                return AnimationType.DROP;
            case 8:
                return AnimationType.SWAP;
            case 9:
                return AnimationType.SCALE_DOWN;
            default:
                return AnimationType.NONE;
        }
    }

    private RtlMode b(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return RtlMode.Auto;
                }
                return RtlMode.Auto;
            }
            return RtlMode.Off;
        }
        return RtlMode.On;
    }

    private void d(@NonNull TypedArray typedArray) {
        boolean z10 = typedArray.getBoolean(R$styleable.PageIndicatorView_piv_interactiveAnimation, false);
        long j10 = typedArray.getInt(R$styleable.PageIndicatorView_piv_animationDuration, 350);
        if (j10 < 0) {
            j10 = 0;
        }
        AnimationType a10 = a(typedArray.getInt(R$styleable.PageIndicatorView_piv_animationType, AnimationType.NONE.ordinal()));
        RtlMode b10 = b(typedArray.getInt(R$styleable.PageIndicatorView_piv_rtl_mode, RtlMode.Off.ordinal()));
        boolean z11 = typedArray.getBoolean(R$styleable.PageIndicatorView_piv_fadeOnIdle, false);
        long j11 = typedArray.getInt(R$styleable.PageIndicatorView_piv_idleDuration, 3000);
        this.f53210a.A(j10);
        this.f53210a.J(z10);
        this.f53210a.B(a10);
        this.f53210a.S(b10);
        this.f53210a.F(z11);
        this.f53210a.I(j11);
    }

    private void e(@NonNull TypedArray typedArray) {
        int color = typedArray.getColor(R$styleable.PageIndicatorView_piv_unselectedColor, Color.parseColor("#33ffffff"));
        int color2 = typedArray.getColor(R$styleable.PageIndicatorView_piv_selectedColor, Color.parseColor("#ffffff"));
        this.f53210a.Y(color);
        this.f53210a.U(color2);
    }

    private void f(@NonNull TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R$styleable.PageIndicatorView_piv_viewPager, -1);
        boolean z10 = typedArray.getBoolean(R$styleable.PageIndicatorView_piv_autoVisibility, true);
        int i9 = 0;
        boolean z11 = typedArray.getBoolean(R$styleable.PageIndicatorView_piv_dynamicCount, false);
        int i10 = typedArray.getInt(R$styleable.PageIndicatorView_piv_count, -1);
        if (i10 == -1) {
            i10 = 3;
        }
        int i11 = typedArray.getInt(R$styleable.PageIndicatorView_piv_select, 0);
        if (i11 >= 0 && (i10 <= 0 || i11 <= i10 - 1)) {
            i9 = i11;
        }
        this.f53210a.Z(resourceId);
        this.f53210a.C(z10);
        this.f53210a.E(z11);
        this.f53210a.D(i10);
        this.f53210a.V(i9);
        this.f53210a.W(i9);
        this.f53210a.K(i9);
    }

    private void g(@NonNull TypedArray typedArray) {
        int i9 = R$styleable.PageIndicatorView_piv_orientation;
        Orientation orientation = Orientation.HORIZONTAL;
        if (typedArray.getInt(i9, orientation.ordinal()) != 0) {
            orientation = Orientation.VERTICAL;
        }
        int dimension = (int) typedArray.getDimension(R$styleable.PageIndicatorView_piv_radius, nd.b.a(6));
        if (dimension < 0) {
            dimension = 0;
        }
        int dimension2 = (int) typedArray.getDimension(R$styleable.PageIndicatorView_piv_padding, nd.b.a(8));
        if (dimension2 < 0) {
            dimension2 = 0;
        }
        float f10 = typedArray.getFloat(R$styleable.PageIndicatorView_piv_scaleFactor, 0.7f);
        if (f10 < 0.3f) {
            f10 = 0.3f;
        } else if (f10 > 1.0f) {
            f10 = 1.0f;
        }
        int dimension3 = (int) typedArray.getDimension(R$styleable.PageIndicatorView_piv_strokeWidth, nd.b.a(1));
        if (dimension3 > dimension) {
            dimension3 = dimension;
        }
        int i10 = this.f53210a.b() == AnimationType.FILL ? dimension3 : 0;
        this.f53210a.R(dimension);
        this.f53210a.L(orientation);
        this.f53210a.M(dimension2);
        this.f53210a.T(f10);
        this.f53210a.X(i10);
    }

    public void c(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PageIndicatorView, 0, 0);
        f(obtainStyledAttributes);
        e(obtainStyledAttributes);
        d(obtainStyledAttributes);
        g(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }
}
