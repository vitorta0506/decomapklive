package com.scwang.smartrefresh.layout.footer;

import ae.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.R$string;
import com.scwang.smartrefresh.layout.R$styleable;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalClassics;
import wd.f;
import wd.j;
import yd.c;
/* loaded from: classes4.dex */
public class ClassicsFooter extends InternalClassics<ClassicsFooter> implements f {
    public static String A;
    public static String B;
    public static String C;
    public static String D;
    public static String E;
    public static String F;

    /* renamed from: z  reason: collision with root package name */
    public static String f29373z;

    /* renamed from: r  reason: collision with root package name */
    protected String f29374r;

    /* renamed from: s  reason: collision with root package name */
    protected String f29375s;

    /* renamed from: t  reason: collision with root package name */
    protected String f29376t;

    /* renamed from: u  reason: collision with root package name */
    protected String f29377u;

    /* renamed from: v  reason: collision with root package name */
    protected String f29378v;

    /* renamed from: w  reason: collision with root package name */
    protected String f29379w;

    /* renamed from: x  reason: collision with root package name */
    protected String f29380x;

    /* renamed from: y  reason: collision with root package name */
    protected boolean f29381y;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29382a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29382a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29382a[RefreshState.PullUpToLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29382a[RefreshState.Loading.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29382a[RefreshState.LoadReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29382a[RefreshState.ReleaseToLoad.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29382a[RefreshState.Refreshing.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ClassicsFooter(Context context) {
        this(context, null);
    }

    @Override // wd.f
    public boolean b(boolean z10) {
        if (this.f29381y != z10) {
            this.f29381y = z10;
            ImageView imageView = this.f29437e;
            if (z10) {
                this.f29436d.setText(this.f29380x);
                imageView.setVisibility(8);
                return true;
            }
            this.f29436d.setText(this.f29374r);
            imageView.setVisibility(0);
            return true;
        }
        return true;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        if (this.f29381y) {
            return 0;
        }
        this.f29436d.setText(z10 ? this.f29378v : this.f29379w);
        return super.c(jVar, z10);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ImageView imageView = this.f29437e;
        if (this.f29381y) {
            return;
        }
        switch (a.f29382a[refreshState2.ordinal()]) {
            case 1:
                imageView.setVisibility(0);
                break;
            case 2:
                break;
            case 3:
            case 4:
                imageView.setVisibility(8);
                this.f29436d.setText(this.f29376t);
                return;
            case 5:
                this.f29436d.setText(this.f29375s);
                imageView.animate().rotation(0.0f);
                return;
            case 6:
                this.f29436d.setText(this.f29377u);
                imageView.setVisibility(8);
                return;
            default:
                return;
        }
        this.f29436d.setText(this.f29374r);
        imageView.animate().rotation(180.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        if (this.f29381y) {
            return;
        }
        super.k(jVar, i9, i10);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (this.f29434b == SpinnerStyle.FixedBehind) {
            super.setPrimaryColors(iArr);
        }
    }

    public ClassicsFooter(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClassicsFooter(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f29374r = null;
        this.f29375s = null;
        this.f29376t = null;
        this.f29377u = null;
        this.f29378v = null;
        this.f29379w = null;
        this.f29380x = null;
        this.f29381y = false;
        ImageView imageView = this.f29437e;
        ImageView imageView2 = this.f29438f;
        b bVar = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClassicsFooter);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ClassicsFooter_srlDrawableMarginRight, bVar.a(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        int i10 = R$styleable.ClassicsFooter_srlDrawableArrowSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(i10, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(i10, layoutParams.height);
        int i11 = R$styleable.ClassicsFooter_srlDrawableProgressSize;
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(i11, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(i11, layoutParams2.height);
        int i12 = R$styleable.ClassicsFooter_srlDrawableSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(i12, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(i12, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(i12, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(i12, layoutParams2.height);
        this.f29446n = obtainStyledAttributes.getInt(R$styleable.ClassicsFooter_srlFinishDuration, this.f29446n);
        this.f29434b = SpinnerStyle.values()[obtainStyledAttributes.getInt(R$styleable.ClassicsFooter_srlClassicsSpinnerStyle, this.f29434b.ordinal())];
        int i13 = R$styleable.ClassicsFooter_srlDrawableArrow;
        if (obtainStyledAttributes.hasValue(i13)) {
            this.f29437e.setImageDrawable(obtainStyledAttributes.getDrawable(i13));
        } else {
            yd.a aVar = new yd.a();
            this.f29441i = aVar;
            aVar.a(-10066330);
            this.f29437e.setImageDrawable(this.f29441i);
        }
        int i14 = R$styleable.ClassicsFooter_srlDrawableProgress;
        if (obtainStyledAttributes.hasValue(i14)) {
            this.f29438f.setImageDrawable(obtainStyledAttributes.getDrawable(i14));
        } else {
            c cVar = new c();
            this.f29442j = cVar;
            cVar.a(-10066330);
            this.f29438f.setImageDrawable(this.f29442j);
        }
        int i15 = R$styleable.ClassicsFooter_srlTextSizeTitle;
        if (obtainStyledAttributes.hasValue(i15)) {
            this.f29436d.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(i15, b.b(16.0f)));
        } else {
            this.f29436d.setTextSize(16.0f);
        }
        int i16 = R$styleable.ClassicsFooter_srlPrimaryColor;
        if (obtainStyledAttributes.hasValue(i16)) {
            super.t(obtainStyledAttributes.getColor(i16, 0));
        }
        int i17 = R$styleable.ClassicsFooter_srlAccentColor;
        if (obtainStyledAttributes.hasValue(i17)) {
            super.s(obtainStyledAttributes.getColor(i17, 0));
        }
        int i18 = R$styleable.ClassicsFooter_srlTextPulling;
        if (obtainStyledAttributes.hasValue(i18)) {
            this.f29374r = obtainStyledAttributes.getString(i18);
        } else {
            String str = f29373z;
            if (str != null) {
                this.f29374r = str;
            } else {
                this.f29374r = context.getString(R$string.srl_footer_pulling);
            }
        }
        int i19 = R$styleable.ClassicsFooter_srlTextRelease;
        if (obtainStyledAttributes.hasValue(i19)) {
            this.f29375s = obtainStyledAttributes.getString(i19);
        } else {
            String str2 = A;
            if (str2 != null) {
                this.f29375s = str2;
            } else {
                this.f29375s = context.getString(R$string.srl_footer_release);
            }
        }
        int i20 = R$styleable.ClassicsFooter_srlTextLoading;
        if (obtainStyledAttributes.hasValue(i20)) {
            this.f29376t = obtainStyledAttributes.getString(i20);
        } else {
            String str3 = B;
            if (str3 != null) {
                this.f29376t = str3;
            } else {
                this.f29376t = context.getString(R$string.srl_footer_loading);
            }
        }
        int i21 = R$styleable.ClassicsFooter_srlTextRefreshing;
        if (obtainStyledAttributes.hasValue(i21)) {
            this.f29377u = obtainStyledAttributes.getString(i21);
        } else {
            String str4 = C;
            if (str4 != null) {
                this.f29377u = str4;
            } else {
                this.f29377u = context.getString(R$string.srl_footer_refreshing);
            }
        }
        int i22 = R$styleable.ClassicsFooter_srlTextFinish;
        if (obtainStyledAttributes.hasValue(i22)) {
            this.f29378v = obtainStyledAttributes.getString(i22);
        } else {
            String str5 = D;
            if (str5 != null) {
                this.f29378v = str5;
            } else {
                this.f29378v = context.getString(R$string.srl_footer_finish);
            }
        }
        int i23 = R$styleable.ClassicsFooter_srlTextFailed;
        if (obtainStyledAttributes.hasValue(i23)) {
            this.f29379w = obtainStyledAttributes.getString(i23);
        } else {
            String str6 = E;
            if (str6 != null) {
                this.f29379w = str6;
            } else {
                this.f29379w = context.getString(R$string.srl_footer_failed);
            }
        }
        int i24 = R$styleable.ClassicsFooter_srlTextNothing;
        if (obtainStyledAttributes.hasValue(i24)) {
            this.f29380x = obtainStyledAttributes.getString(i24);
        } else {
            String str7 = F;
            if (str7 != null) {
                this.f29380x = str7;
            } else {
                this.f29380x = context.getString(R$string.srl_footer_nothing);
            }
        }
        obtainStyledAttributes.recycle();
        this.f29436d.setTextColor(-10066330);
        this.f29436d.setText(isInEditMode() ? this.f29376t : this.f29374r);
    }
}
