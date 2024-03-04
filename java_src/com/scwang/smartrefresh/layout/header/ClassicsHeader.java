package com.scwang.smartrefresh.layout.header;

import ae.b;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.scwang.smartrefresh.layout.R$string;
import com.scwang.smartrefresh.layout.R$styleable;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalClassics;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import wd.g;
import wd.j;
import yd.c;
/* loaded from: classes4.dex */
public class ClassicsHeader extends InternalClassics<ClassicsHeader> implements g {
    public static String F;
    public static String G;
    public static String H;
    public static String I;
    public static String J;
    public static String K;
    public static String L;
    public static String M;
    protected String A;
    protected String B;
    protected String C;
    protected String D;
    protected String E;

    /* renamed from: r  reason: collision with root package name */
    protected String f29408r;

    /* renamed from: s  reason: collision with root package name */
    protected Date f29409s;

    /* renamed from: t  reason: collision with root package name */
    protected TextView f29410t;

    /* renamed from: u  reason: collision with root package name */
    protected SharedPreferences f29411u;

    /* renamed from: v  reason: collision with root package name */
    protected DateFormat f29412v;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f29413w;

    /* renamed from: x  reason: collision with root package name */
    protected String f29414x;

    /* renamed from: y  reason: collision with root package name */
    protected String f29415y;

    /* renamed from: z  reason: collision with root package name */
    protected String f29416z;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29417a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f29417a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29417a[RefreshState.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29417a[RefreshState.Refreshing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29417a[RefreshState.RefreshReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f29417a[RefreshState.ReleaseToRefresh.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f29417a[RefreshState.ReleaseToTwoLevel.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f29417a[RefreshState.Loading.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ClassicsHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics, com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        if (z10) {
            this.f29436d.setText(this.B);
            if (this.f29409s != null) {
                v(new Date());
            }
        } else {
            this.f29436d.setText(this.C);
        }
        return super.c(jVar, z10);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ImageView imageView = this.f29437e;
        TextView textView = this.f29410t;
        switch (a.f29417a[refreshState2.ordinal()]) {
            case 1:
                textView.setVisibility(this.f29413w ? 0 : 8);
                break;
            case 2:
                break;
            case 3:
            case 4:
                this.f29436d.setText(this.f29415y);
                imageView.setVisibility(8);
                return;
            case 5:
                this.f29436d.setText(this.A);
                imageView.animate().rotation(180.0f);
                return;
            case 6:
                this.f29436d.setText(this.E);
                imageView.animate().rotation(0.0f);
                return;
            case 7:
                imageView.setVisibility(8);
                textView.setVisibility(this.f29413w ? 4 : 8);
                this.f29436d.setText(this.f29416z);
                return;
            default:
                return;
        }
        this.f29436d.setText(this.f29414x);
        imageView.setVisibility(0);
        imageView.animate().rotation(0.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalClassics
    /* renamed from: u */
    public ClassicsHeader s(@ColorInt int i9) {
        this.f29410t.setTextColor((16777215 & i9) | (-872415232));
        return (ClassicsHeader) super.s(i9);
    }

    public ClassicsHeader v(Date date) {
        this.f29409s = date;
        this.f29410t.setText(this.f29412v.format(date));
        if (this.f29411u != null && !isInEditMode()) {
            this.f29411u.edit().putLong(this.f29408r, date.getTime()).apply();
        }
        return this;
    }

    public ClassicsHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClassicsHeader(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        int i10;
        int i11;
        FragmentManager supportFragmentManager;
        List<Fragment> fragments;
        this.f29408r = "LAST_UPDATE_TIME";
        this.f29413w = true;
        this.f29414x = null;
        this.f29415y = null;
        this.f29416z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        TextView textView = new TextView(context);
        this.f29410t = textView;
        textView.setTextColor(-8618884);
        ImageView imageView = this.f29437e;
        TextView textView2 = this.f29410t;
        ImageView imageView2 = this.f29438f;
        LinearLayout linearLayout = this.f29439g;
        b bVar = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ClassicsHeader);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ClassicsHeader_srlTextTimeMarginTop, bVar.a(0.0f));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ClassicsFooter_srlDrawableMarginRight, bVar.a(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        int i12 = R$styleable.ClassicsHeader_srlDrawableArrowSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(i12, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(i12, layoutParams.height);
        int i13 = R$styleable.ClassicsHeader_srlDrawableProgressSize;
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(i13, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(i13, layoutParams2.height);
        int i14 = R$styleable.ClassicsHeader_srlDrawableSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(i14, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(i14, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(i14, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(i14, layoutParams2.height);
        this.f29446n = obtainStyledAttributes.getInt(R$styleable.ClassicsHeader_srlFinishDuration, this.f29446n);
        this.f29413w = obtainStyledAttributes.getBoolean(R$styleable.ClassicsHeader_srlEnableLastTime, this.f29413w);
        this.f29434b = SpinnerStyle.values()[obtainStyledAttributes.getInt(R$styleable.ClassicsHeader_srlClassicsSpinnerStyle, this.f29434b.ordinal())];
        int i15 = R$styleable.ClassicsHeader_srlDrawableArrow;
        if (obtainStyledAttributes.hasValue(i15)) {
            this.f29437e.setImageDrawable(obtainStyledAttributes.getDrawable(i15));
        } else {
            yd.a aVar = new yd.a();
            this.f29441i = aVar;
            aVar.a(-10066330);
            this.f29437e.setImageDrawable(this.f29441i);
        }
        int i16 = R$styleable.ClassicsHeader_srlDrawableProgress;
        if (obtainStyledAttributes.hasValue(i16)) {
            this.f29438f.setImageDrawable(obtainStyledAttributes.getDrawable(i16));
        } else {
            c cVar = new c();
            this.f29442j = cVar;
            cVar.a(-10066330);
            this.f29438f.setImageDrawable(this.f29442j);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.ClassicsHeader_srlTextSizeTitle)) {
            this.f29436d.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(i10, b.b(16.0f)));
        } else {
            this.f29436d.setTextSize(16.0f);
        }
        if (obtainStyledAttributes.hasValue(R$styleable.ClassicsHeader_srlTextSizeTime)) {
            this.f29410t.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(i11, b.b(12.0f)));
        } else {
            this.f29410t.setTextSize(12.0f);
        }
        int i17 = R$styleable.ClassicsHeader_srlPrimaryColor;
        if (obtainStyledAttributes.hasValue(i17)) {
            super.t(obtainStyledAttributes.getColor(i17, 0));
        }
        int i18 = R$styleable.ClassicsHeader_srlAccentColor;
        if (obtainStyledAttributes.hasValue(i18)) {
            s(obtainStyledAttributes.getColor(i18, 0));
        }
        int i19 = R$styleable.ClassicsHeader_srlTextPulling;
        if (obtainStyledAttributes.hasValue(i19)) {
            this.f29414x = obtainStyledAttributes.getString(i19);
        } else {
            String str = F;
            if (str != null) {
                this.f29414x = str;
            } else {
                this.f29414x = context.getString(R$string.srl_header_pulling);
            }
        }
        int i20 = R$styleable.ClassicsHeader_srlTextLoading;
        if (obtainStyledAttributes.hasValue(i20)) {
            this.f29416z = obtainStyledAttributes.getString(i20);
        } else {
            String str2 = H;
            if (str2 != null) {
                this.f29416z = str2;
            } else {
                this.f29416z = context.getString(R$string.srl_header_loading);
            }
        }
        int i21 = R$styleable.ClassicsHeader_srlTextRelease;
        if (obtainStyledAttributes.hasValue(i21)) {
            this.A = obtainStyledAttributes.getString(i21);
        } else {
            String str3 = I;
            if (str3 != null) {
                this.A = str3;
            } else {
                this.A = context.getString(R$string.srl_header_release);
            }
        }
        int i22 = R$styleable.ClassicsHeader_srlTextFinish;
        if (obtainStyledAttributes.hasValue(i22)) {
            this.B = obtainStyledAttributes.getString(i22);
        } else {
            String str4 = J;
            if (str4 != null) {
                this.B = str4;
            } else {
                this.B = context.getString(R$string.srl_header_finish);
            }
        }
        int i23 = R$styleable.ClassicsHeader_srlTextFailed;
        if (obtainStyledAttributes.hasValue(i23)) {
            this.C = obtainStyledAttributes.getString(i23);
        } else {
            String str5 = K;
            if (str5 != null) {
                this.C = str5;
            } else {
                this.C = context.getString(R$string.srl_header_failed);
            }
        }
        int i24 = R$styleable.ClassicsHeader_srlTextSecondary;
        if (obtainStyledAttributes.hasValue(i24)) {
            this.E = obtainStyledAttributes.getString(i24);
        } else {
            String str6 = M;
            if (str6 != null) {
                this.E = str6;
            } else {
                this.E = context.getString(R$string.srl_header_secondary);
            }
        }
        int i25 = R$styleable.ClassicsHeader_srlTextRefreshing;
        if (obtainStyledAttributes.hasValue(i25)) {
            this.f29415y = obtainStyledAttributes.getString(i25);
        } else {
            String str7 = G;
            if (str7 != null) {
                this.f29415y = str7;
            } else {
                this.f29415y = context.getString(R$string.srl_header_refreshing);
            }
        }
        int i26 = R$styleable.ClassicsHeader_srlTextUpdate;
        if (obtainStyledAttributes.hasValue(i26)) {
            this.D = obtainStyledAttributes.getString(i26);
        } else {
            String str8 = L;
            if (str8 != null) {
                this.D = str8;
            } else {
                this.D = context.getString(R$string.srl_header_update);
            }
        }
        this.f29412v = new SimpleDateFormat(this.D, Locale.getDefault());
        obtainStyledAttributes.recycle();
        textView2.setId(4);
        textView2.setVisibility(this.f29413w ? 0 : 8);
        linearLayout.addView(textView2, layoutParams3);
        this.f29436d.setText(isInEditMode() ? this.f29415y : this.f29414x);
        try {
            if ((context instanceof FragmentActivity) && (supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager()) != null && (fragments = supportFragmentManager.getFragments()) != null && fragments.size() > 0) {
                v(new Date());
                return;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        this.f29408r += context.getClass().getName();
        this.f29411u = context.getSharedPreferences("ClassicsHeader", 0);
        v(new Date(this.f29411u.getLong(this.f29408r, System.currentTimeMillis())));
    }
}
