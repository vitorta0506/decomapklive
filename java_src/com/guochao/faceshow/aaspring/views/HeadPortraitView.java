package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_base.R$color;
import com.guochao.lib_core.R$drawable;
import com.guochao.lib_core.R$mipmap;
import com.guochao.lib_core.R$styleable;
import com.guochao.lib_core.databinding.LayoutHeadPortraitBinding;
/* loaded from: classes3.dex */
public class HeadPortraitView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    ImageView f23727a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f23728b;

    /* renamed from: c  reason: collision with root package name */
    ImageView f23729c;

    /* renamed from: d  reason: collision with root package name */
    NewCircleImageView f23730d;

    /* renamed from: e  reason: collision with root package name */
    NewCircleImageView f23731e;

    /* renamed from: f  reason: collision with root package name */
    ImageView f23732f;

    /* renamed from: g  reason: collision with root package name */
    FrameLayout f23733g;

    /* renamed from: h  reason: collision with root package name */
    private int f23734h;

    /* renamed from: i  reason: collision with root package name */
    private float f23735i;

    /* renamed from: j  reason: collision with root package name */
    private float f23736j;

    /* renamed from: k  reason: collision with root package name */
    private float f23737k;

    /* renamed from: l  reason: collision with root package name */
    private float f23738l;

    /* renamed from: m  reason: collision with root package name */
    private float f23739m;

    /* renamed from: n  reason: collision with root package name */
    private float f23740n;

    /* renamed from: o  reason: collision with root package name */
    private float f23741o;

    /* renamed from: p  reason: collision with root package name */
    private int f23742p;

    /* renamed from: q  reason: collision with root package name */
    private float f23743q;

    /* renamed from: r  reason: collision with root package name */
    private float f23744r;

    /* renamed from: s  reason: collision with root package name */
    private int f23745s;

    /* renamed from: t  reason: collision with root package name */
    private int f23746t;

    /* renamed from: u  reason: collision with root package name */
    private Context f23747u;

    /* renamed from: v  reason: collision with root package name */
    LayoutHeadPortraitBinding f23748v;

    /* loaded from: classes3.dex */
    class a implements com.bumptech.glide.request.g<Drawable> {
        a() {
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, s0.k<Drawable> kVar, boolean z10) {
            HeadPortraitView.this.f23730d.setVisibility(8);
            return false;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: c */
        public boolean a(Drawable drawable, Object obj, s0.k<Drawable> kVar, DataSource dataSource, boolean z10) {
            HeadPortraitView.this.f23730d.setVisibility(0);
            return false;
        }
    }

    public HeadPortraitView(@NonNull Context context) {
        super(context);
        this.f23742p = 1;
        this.f23745s = R$mipmap.default_head_space;
        l(context, null);
    }

    private void a(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i9 = (int) ((this.f23736j - this.f23739m) / 2.0f);
        marginLayoutParams.bottomMargin = i9;
        marginLayoutParams.setMarginStart(i9);
    }

    private void b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i9 = (int) ((this.f23736j - this.f23739m) / 2.0f);
        marginLayoutParams.bottomMargin = i9;
        marginLayoutParams.setMarginEnd(i9);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f23748v.onlineState.getLayoutParams();
        marginLayoutParams2.topMargin = i9;
        marginLayoutParams2.setMarginEnd(i9);
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) this.f23733g.getLayoutParams();
        marginLayoutParams3.setMarginStart(i9);
        marginLayoutParams3.bottomMargin = i9;
    }

    private void c(@Nullable p7.h hVar) {
        if (BaseConfig.isChinese()) {
            return;
        }
        if (!TextUtils.isEmpty(hVar.getVipInfo().getVipAvatarPendentUrl()) && this.f23729c.getVisibility() == 0) {
            if (hVar.getVipInfo().getVipAvatarPendentType() != 1 && hVar.getVipInfo().getVipAvatarPendentType() != 2) {
                this.f23731e.setStrokeColor(ContextCompat.getColor(this.f23747u, R$color.white));
                return;
            } else {
                this.f23731e.setStrokeColor(ContextCompat.getColor(this.f23747u, R$color.color_vip_flag_color));
                return;
            }
        }
        this.f23731e.setStrokeColor(ContextCompat.getColor(this.f23747u, R$color.white));
    }

    private void l(Context context, AttributeSet attributeSet) {
        this.f23747u = context;
        LayoutHeadPortraitBinding inflate = LayoutHeadPortraitBinding.inflate(LayoutInflater.from(context), this);
        this.f23748v = inflate;
        this.f23730d = inflate.avatar;
        this.f23731e = inflate.flag;
        this.f23727a = inflate.avatarBg;
        this.f23728b = inflate.avatarPedant;
        this.f23729c = inflate.avatarVipPedant;
        this.f23732f = inflate.ivAnim;
        this.f23733g = inflate.flAnim;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.HeadPortraitView);
            try {
                this.f23734h = obtainStyledAttributes.getInteger(R$styleable.HeadPortraitView_showStyle, 0);
                this.f23739m = obtainStyledAttributes.getDimensionPixelSize(R$styleable.HeadPortraitView_headPortraitSize, DensityUtil.dp2px(context, 48.0f));
                int i9 = R$styleable.HeadPortraitView_flagSizeHeadPortrait;
                if (obtainStyledAttributes.hasValue(i9)) {
                    this.f23735i = (this.f23739m / obtainStyledAttributes.getFloat(i9, 0.0f)) + 0.5f;
                } else {
                    this.f23735i = obtainStyledAttributes.getDimensionPixelSize(R$styleable.HeadPortraitView_flagSize, (int) (this.f23739m / 3.0f));
                }
                float f10 = this.f23739m;
                float f11 = (0.2840909f * f10) + 0.5f;
                this.f23740n = f11;
                this.f23741o = (f11 * 1.25f) + 0.5f;
                this.f23744r = (0.17045455f * f10) + 0.5f;
                this.f23736j = (f10 * 1.2727273f) + 0.5f;
                this.f23737k = (1.2727273f * f10) + 0.5f;
                this.f23738l = (f10 * 1.1477273f) + 0.5f;
                s();
                p(this.f23730d, this.f23739m);
                p(this.f23732f, this.f23744r);
                p(this.f23733g, this.f23735i);
                p(this.f23727a, this.f23738l);
                p(this.f23728b, this.f23736j);
                p(this.f23729c, this.f23737k);
                p(this.f23731e, this.f23735i);
                if (this.f23734h == 5) {
                    this.f23743q = (this.f23739m * 0.03409091f) + 0.5f;
                } else {
                    this.f23743q = (this.f23739m * 0.13636364f) + 0.5f;
                }
                n(obtainStyledAttributes);
                b(this.f23731e);
                int i10 = this.f23734h;
                if (i10 == 2 || i10 == 0) {
                    a(this.f23733g);
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    private void m(int i9) {
        if (this.f23729c.getVisibility() != 0 || i9 == 0) {
            return;
        }
        if (i9 == 1) {
            hc.a.j(this.f23729c, "https://fsveg.buzzcast.info/app_static/resource/vip.gif");
        } else {
            hc.a.j(this.f23729c, "https://fsveg.buzzcast.info/app_static/resource/vvip.gif");
        }
    }

    private void n(TypedArray typedArray) {
        int i9 = R$styleable.HeadPortraitView_headCountryFlagBorderColor;
        if (typedArray.hasValue(i9)) {
            this.f23731e.setStrokeColor(typedArray.getColor(i9, 0));
        }
        int i10 = R$styleable.HeadPortraitView_headCountryFlagBorderWidth;
        if (typedArray.hasValue(i10)) {
            this.f23731e.setStrokeWidth(typedArray.getDimensionPixelSize(i10, DensityUtil.dp2px(getContext(), 1.0f)));
        }
        int i11 = R$styleable.HeadPortraitView_headPortraitBorderColor;
        if (typedArray.hasValue(i11)) {
            this.f23730d.setStrokeColor(typedArray.getColor(i11, 0));
        }
        int i12 = R$styleable.HeadPortraitView_headPortraitBorderWidth;
        if (typedArray.hasValue(i12)) {
            this.f23730d.setStrokeWidth(typedArray.getDimensionPixelSize(i12, DensityUtil.dp2px(getContext(), 1.0f)));
        }
    }

    private void p(View view, float f10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i9 = (int) f10;
        layoutParams.width = i9;
        layoutParams.height = i9;
        view.setLayoutParams(layoutParams);
    }

    private void q(View view, float f10, float f11) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i9 = (int) f10;
        layoutParams.width = i9;
        layoutParams.height = i9;
        view.setLayoutParams(layoutParams);
    }

    public void d(p7.h hVar) {
        String str;
        String str2;
        if (hVar != null) {
            str = hVar.getAvatarUrl();
            str2 = hVar.getCountryFlag();
        } else {
            str = "";
            str2 = str;
        }
        hc.a.h(this.f23730d, str, this.f23745s);
        if (hVar != null && hVar.getVipInfo() != null) {
            hc.a.j(this.f23729c, hVar.getVipInfo().getVipAvatarPendentUrl());
            c(hVar);
            hc.a.j(this.f23728b, hVar.getVipInfo().getHostCertificationUrl());
        }
        if (BaseConfig.isChinese()) {
            return;
        }
        hc.a.h(this.f23731e, str2 != null ? str2 : "", R$mipmap.ic_earth_space);
    }

    public void e(@Nullable p7.h hVar, @DrawableRes int i9) {
        String str;
        String str2;
        if (hVar != null) {
            str = hVar.getAvatarUrl();
            str2 = hVar.getCountryFlag();
        } else {
            str = "";
            str2 = str;
        }
        if (TextUtils.isEmpty(str)) {
            int i10 = this.f23745s;
            if (i10 > 0) {
                this.f23730d.setImageResource(i10);
            } else {
                this.f23730d.setImageBitmap(null);
            }
        } else {
            hc.a.h(this.f23730d, str, this.f23745s);
        }
        if (!BaseConfig.isChinese()) {
            c(hVar);
        }
        com.bumptech.glide.c.v(this).f(this.f23729c);
        com.bumptech.glide.c.v(this).p(Integer.valueOf(i9)).Q0(this.f23729c);
        if (BaseConfig.isChinese()) {
            return;
        }
        hc.a.h(this.f23731e, str2 != null ? str2 : "", R$mipmap.ic_earth_space);
    }

    public void f(p7.h hVar, boolean z10) {
        if (hVar == null) {
            return;
        }
        hc.a.h(this.f23730d, hVar.getAvatarUrl(), this.f23745s);
        if (hVar.getVipInfo() != null) {
            hc.a.j(this.f23729c, hVar.getVipInfo().getVipAvatarPendentUrl());
            c(hVar);
            hc.a.j(this.f23728b, hVar.getVipInfo().getHostCertificationUrl());
        }
        if (z10 && !BaseConfig.isChinese()) {
            hc.a.h(this.f23731e, hVar.getCountryFlag() == null ? "" : hVar.getCountryFlag(), R$mipmap.ic_earth_space);
            this.f23731e.setVisibility(0);
            return;
        }
        this.f23731e.setVisibility(8);
    }

    public void g(p7.h hVar, boolean z10, boolean z11) {
        if (hVar == null) {
            return;
        }
        hc.a.h(this.f23730d, hVar.getAvatarUrl(), R$mipmap.ic_default_mvp);
        if (hVar.getVipInfo() != null) {
            hc.a.j(this.f23729c, hVar.getVipInfo().getVipAvatarPendentUrl());
            c(hVar);
            hc.a.j(this.f23728b, hVar.getVipInfo().getHostCertificationUrl());
        }
        if (z10 && !BaseConfig.isChinese()) {
            hc.a.h(this.f23731e, hVar.getCountryFlag() == null ? "" : hVar.getCountryFlag(), R$mipmap.ic_earth_space);
            this.f23731e.setVisibility(0);
            return;
        }
        this.f23731e.setVisibility(8);
    }

    public int getDefaultAvatarRes() {
        return this.f23745s;
    }

    public int getVipLevel() {
        return this.f23746t;
    }

    public void h(GCUser gCUser) {
        String str;
        String str2;
        if (gCUser != null) {
            str = gCUser.getAvatarUrl();
            str2 = gCUser.getCountryLogo();
            if (gCUser.getVipLevel() != 0) {
                this.f23731e.setStrokeColor(ContextCompat.getColor(this.f23747u, R$color.color_vip_flag_color));
            } else {
                this.f23731e.setStrokeColor(ContextCompat.getColor(this.f23747u, R$color.white));
            }
            if (gCUser.getDressHead() != null) {
                this.f23729c.setVisibility(0);
                hc.a.j(this.f23729c, gCUser.getDressHead());
            } else {
                this.f23729c.setVisibility(4);
            }
        } else {
            str = "";
            str2 = str;
        }
        if (TextUtils.isEmpty(str)) {
            int i9 = this.f23745s;
            if (i9 > 0) {
                this.f23730d.setImageResource(i9);
            } else {
                this.f23730d.setImageBitmap(null);
            }
        } else {
            hc.a.h(this.f23730d, str, this.f23745s);
        }
        hc.a.h(this.f23731e, str2 != null ? str2 : "", R$mipmap.ic_earth_space);
    }

    public void i(@Nullable p7.h hVar, int i9) {
        String str;
        String str2;
        this.f23742p = i9;
        if (hVar != null) {
            str = hVar.getAvatarUrl();
            str2 = hVar.getCountryFlag();
        } else {
            str = "";
            str2 = str;
        }
        hc.a.h(this.f23730d, str, this.f23745s);
        if (hVar != null && hVar.getVipInfo() != null) {
            hc.a.j(this.f23729c, hVar.getVipInfo().getVipAvatarPendentUrl());
            c(hVar);
            hc.a.j(this.f23728b, hVar.getVipInfo().getHostCertificationUrl());
        }
        if (BaseConfig.isChinese()) {
            return;
        }
        hc.a.h(this.f23731e, str2 != null ? str2 : "", R$mipmap.ic_earth_space);
    }

    public void j(p7.h hVar) {
        this.f23730d.setVisibility(4);
        hc.a.h(this.f23730d, hVar != null ? hVar.getAvatarUrl() : "", this.f23745s);
        if (hVar == null || hVar.getVipInfo() == null) {
            return;
        }
        com.bumptech.glide.c.u(getContext()).r(hVar.getVipInfo().getVipAvatarPendentUrl()).b0(R$mipmap.f_dress_empty).x0(new a()).Q0(this.f23729c);
    }

    public void k(@Nullable p7.h hVar, int i9, boolean z10) {
        String str;
        String str2;
        this.f23742p = i9;
        if (hVar != null) {
            str2 = hVar.getAvatarUrl();
            str = z10 ? hVar.getCountryFlag() : "";
        } else {
            str = "";
            str2 = str;
        }
        hc.a.h(this.f23730d, str2, this.f23745s);
        this.f23729c.setVisibility(0);
        c(hVar);
        m(i9);
        if (BaseConfig.isChinese()) {
            return;
        }
        hc.a.h(this.f23731e, str != null ? str : "", R$mipmap.ic_earth_space);
    }

    public void o(float f10, float f11, int i9) {
        this.f23728b.setVisibility(i9);
        float dp2px = DensityUtil.dp2px(getContext(), f10);
        this.f23739m = dp2px;
        this.f23735i = dp2px / 3.0f;
        if (i9 == 8) {
            this.f23736j = (dp2px * f11) + 0.5f;
        } else {
            this.f23736j = (dp2px * 1.2727273f) + 0.5f;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f23731e.getLayoutParams();
        int strokeWidth = (int) this.f23731e.getStrokeWidth();
        float f12 = this.f23736j;
        float f13 = this.f23739m;
        marginLayoutParams.bottomMargin = ((int) ((f12 - f13) / 2.0f)) + strokeWidth;
        marginLayoutParams.setMarginEnd(((int) ((f12 - f13) / 2.0f)) + strokeWidth);
        p(this.f23730d, this.f23739m);
        p(this.f23732f, this.f23740n);
        q(this.f23733g, this.f23740n, this.f23741o);
        p(this.f23727a, this.f23738l);
        p(this.f23728b, this.f23736j);
        p(this.f23729c, this.f23736j);
        p(this.f23731e, this.f23735i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f23748v.avatar.getLeft();
        int top = this.f23748v.avatar.getTop();
        int right = this.f23748v.avatar.getRight();
        int dp2px = DensityUtil.dp2px(2.0f);
        ImageView imageView = this.f23748v.onlineState;
        int i13 = top + dp2px;
        imageView.layout(right - imageView.getWidth(), i13, right, this.f23748v.onlineState.getHeight() + i13);
    }

    public void r(boolean z10) {
        if (z10) {
            this.f23731e.setVisibility(0);
        } else {
            this.f23731e.setVisibility(8);
        }
    }

    public void s() {
        switch (this.f23734h) {
            case 1:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                if (BaseConfig.isChinese()) {
                    this.f23731e.setVisibility(8);
                } else {
                    this.f23731e.setVisibility(0);
                }
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(0);
                return;
            case 2:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                this.f23729c.setVisibility(0);
                this.f23729c.setVisibility(0);
                if (BaseConfig.isChinese()) {
                    this.f23731e.setVisibility(8);
                } else {
                    this.f23731e.setVisibility(0);
                }
                if (this.f23742p == 0) {
                    this.f23733g.setVisibility(0);
                } else {
                    this.f23733g.setVisibility(8);
                }
                this.f23727a.setVisibility(8);
                return;
            case 3:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                this.f23729c.setVisibility(0);
                this.f23731e.setVisibility(8);
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            case 4:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                this.f23729c.setVisibility(0);
                if (BaseConfig.isChinese()) {
                    this.f23731e.setVisibility(8);
                } else {
                    this.f23731e.setVisibility(0);
                }
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            case 5:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                this.f23729c.setVisibility(0);
                this.f23731e.setVisibility(0);
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            case 6:
                this.f23730d.setVisibility(0);
                this.f23729c.setVisibility(0);
                this.f23728b.setVisibility(8);
                this.f23731e.setVisibility(8);
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            case 7:
                this.f23730d.setVisibility(0);
                this.f23729c.setVisibility(8);
                this.f23728b.setVisibility(0);
                if (BaseConfig.isChinese()) {
                    this.f23731e.setVisibility(8);
                } else {
                    this.f23731e.setVisibility(0);
                }
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            case 8:
                this.f23730d.setVisibility(0);
                this.f23729c.setVisibility(4);
                this.f23728b.setVisibility(4);
                this.f23731e.setVisibility(8);
                this.f23733g.setVisibility(8);
                this.f23727a.setVisibility(8);
                return;
            default:
                this.f23730d.setVisibility(0);
                this.f23728b.setVisibility(0);
                this.f23729c.setVisibility(0);
                if (BaseConfig.isChinese()) {
                    this.f23731e.setVisibility(8);
                } else {
                    this.f23731e.setVisibility(0);
                }
                if (this.f23742p == 1) {
                    this.f23733g.setVisibility(0);
                } else {
                    this.f23733g.setVisibility(8);
                }
                this.f23727a.setVisibility(0);
                return;
        }
    }

    public void setAvatarOnly(int i9) {
        this.f23730d.setImageResource(i9);
    }

    public void setAvatarRatio(float f10) {
        float f11 = this.f23739m;
        this.f23735i = f11 / 3.0f;
        this.f23736j = (f11 * f10) + 0.5f;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f23731e.getLayoutParams();
        int strokeWidth = (int) this.f23731e.getStrokeWidth();
        float f12 = this.f23736j;
        float f13 = this.f23739m;
        marginLayoutParams.bottomMargin = ((int) ((f12 - f13) / 2.0f)) + strokeWidth;
        marginLayoutParams.setMarginEnd(((int) ((f12 - f13) / 2.0f)) + strokeWidth);
        p(this.f23730d, this.f23739m);
        p(this.f23732f, this.f23740n);
        q(this.f23733g, this.f23740n, this.f23741o);
        p(this.f23727a, this.f23738l);
        p(this.f23728b, this.f23736j);
        p(this.f23729c, this.f23736j);
        p(this.f23731e, this.f23735i);
    }

    public void setAvatarSize(float f10) {
        o(f10, 1.2727273f, 0);
    }

    public void setAvatarStrokeWidth(int i9) {
        this.f23730d.setStrokeWidth(i9);
    }

    public void setDefaultAvatarRes(int i9) {
        this.f23745s = i9;
    }

    public void setLivingStatus(boolean z10) {
        if (z10) {
            this.f23742p = 1;
            this.f23733g.setVisibility(0);
            this.f23732f.setImageResource(R$drawable.living_status);
            ((AnimationDrawable) this.f23732f.getDrawable()).start();
            return;
        }
        this.f23742p = 0;
        this.f23733g.setVisibility(8);
    }

    public void setOnline(boolean z10) {
        if (z10) {
            this.f23748v.onlineState.setVisibility(0);
        } else {
            this.f23748v.onlineState.setVisibility(8);
        }
    }

    public void setPendantRes(int i9) {
        this.f23729c.setVisibility(0);
        hc.a.g(this.f23729c, Integer.valueOf(i9));
    }

    public void setVipLevel(int i9) {
        this.f23746t = i9;
    }

    public void t(int i9) {
        this.f23734h = i9;
        s();
    }

    public HeadPortraitView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23742p = 1;
        this.f23745s = R$mipmap.default_head_space;
        l(context, attributeSet);
    }

    public HeadPortraitView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23742p = 1;
        this.f23745s = R$mipmap.default_head_space;
        l(context, attributeSet);
    }
}
