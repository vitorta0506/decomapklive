package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
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
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class AvatarView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    int f23514a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23515b;

    /* renamed from: c  reason: collision with root package name */
    private float f23516c;

    /* renamed from: d  reason: collision with root package name */
    private float f23517d;

    /* renamed from: e  reason: collision with root package name */
    private float f23518e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23519f;

    /* renamed from: g  reason: collision with root package name */
    private int f23520g;
    @BindView
    NormalCircleImageView mAvatarImageView;
    @BindView
    ImageView mAvatarPendantImageView;
    @BindView
    NormalCircleImageView mCountryFlagImageView;

    public AvatarView(@NonNull Context context) {
        super(context);
        this.f23520g = R.mipmap.default_head_space;
        c(context, null);
    }

    private void a() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCountryFlagImageView.getLayoutParams();
        marginLayoutParams.bottomMargin += this.mCountryFlagImageView.getBorderWidth();
        marginLayoutParams.setMarginEnd(marginLayoutParams.getMarginEnd() + this.mCountryFlagImageView.getBorderWidth());
    }

    private void c(Context context, AttributeSet attributeSet) {
        boolean z10 = true;
        LayoutInflater.from(getContext()).inflate(R.layout.layout_user_avatar, (ViewGroup) this, true);
        ButterKnife.b(this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AvatarView);
            try {
                this.f23518e = obtainStyledAttributes.getDimensionPixelSize(2, DensityUtil.dp2px(context, 48.0f));
                this.f23519f = obtainStyledAttributes.getBoolean(8, false);
                if (obtainStyledAttributes.hasValue(6)) {
                    this.f23516c = (this.f23518e / obtainStyledAttributes.getFloat(6, 0.0f)) + 0.5f;
                } else {
                    this.f23516c = obtainStyledAttributes.getDimensionPixelSize(5, (int) (this.f23518e / 3.0f));
                }
                this.f23517d = (this.f23518e * 1.25f) + 0.5f;
                int i9 = obtainStyledAttributes.getInt(7, -1);
                this.f23514a = i9;
                boolean z11 = (i9 & 1) == 1;
                this.f23515b = z11;
                if (i9 != -1) {
                    if ((i9 & 16) != 16) {
                        z10 = false;
                    }
                    this.f23515b = z10;
                    if (z10) {
                        this.mAvatarPendantImageView.setVisibility(0);
                    } else if (this.f23519f) {
                        this.mAvatarPendantImageView.setVisibility(4);
                    } else {
                        this.mAvatarPendantImageView.setVisibility(8);
                    }
                    if (z11) {
                        this.mCountryFlagImageView.setVisibility(0);
                        if (!z10 && !this.f23519f) {
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCountryFlagImageView.getLayoutParams();
                            marginLayoutParams.bottomMargin = 0;
                            marginLayoutParams.setMarginEnd(0);
                        }
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.mCountryFlagImageView.getLayoutParams();
                        float f10 = this.f23517d;
                        float f11 = this.f23518e;
                        marginLayoutParams2.bottomMargin = (int) ((f10 - f11) / 2.0f);
                        marginLayoutParams2.setMarginEnd((int) ((f10 - f11) / 2.0f));
                    } else {
                        this.mCountryFlagImageView.setVisibility(8);
                    }
                }
                f(this.mAvatarImageView, this.f23518e);
                f(this.mAvatarPendantImageView, this.f23517d);
                f(this.mCountryFlagImageView, this.f23516c);
                d(obtainStyledAttributes);
                if (z11) {
                    a();
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    private void d(TypedArray typedArray) {
        if (typedArray.hasValue(3)) {
            this.mCountryFlagImageView.setBorderColor(typedArray.getColor(3, 0));
        }
        if (typedArray.hasValue(4)) {
            this.mCountryFlagImageView.setBorderWidth(typedArray.getDimensionPixelSize(4, DensityUtil.dp2px(getContext(), 1.0f)));
        }
        if (typedArray.hasValue(0)) {
            this.mAvatarImageView.setBorderColor(typedArray.getColor(0, 0));
        }
        if (typedArray.hasValue(1)) {
            this.mAvatarImageView.setBorderWidth(typedArray.getDimensionPixelSize(1, DensityUtil.dp2px(getContext(), 1.0f)));
        }
    }

    private void f(View view, float f10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i9 = (int) f10;
        layoutParams.width = i9;
        layoutParams.height = i9;
        view.setLayoutParams(layoutParams);
    }

    public void b(@Nullable p7.h hVar, @DrawableRes int i9) {
        String str;
        String str2 = "";
        if (hVar != null) {
            str2 = hVar.getAvatarUrl();
            str = hVar.getCountryFlag();
        } else {
            str = "";
        }
        if (TextUtils.isEmpty(str2)) {
            int i10 = this.f23520g;
            if (i10 > 0) {
                this.mAvatarImageView.setImageResource(i10);
            } else {
                this.mAvatarImageView.setImageBitmap(null);
            }
        } else {
            hc.a.h(this.mAvatarImageView, str2, this.f23520g);
        }
        ic.a.c(this).f(this.mAvatarPendantImageView);
        ic.a.c(this).p(Integer.valueOf(i9)).Q0(this.mAvatarPendantImageView);
        hc.a.h(this.mCountryFlagImageView, str, R.mipmap.ic_earth);
        this.mAvatarImageView.setBackground(null);
    }

    public void e(float f10, float f11) {
        float dp2px = DensityUtil.dp2px(getContext(), f10);
        this.f23518e = dp2px;
        this.f23516c = dp2px / 3.0f;
        this.f23517d = (dp2px * f11) + 0.5f;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCountryFlagImageView.getLayoutParams();
        int borderWidth = this.mCountryFlagImageView.getBorderWidth();
        float f12 = this.f23517d;
        float f13 = this.f23518e;
        marginLayoutParams.bottomMargin = ((int) ((f12 - f13) / 2.0f)) + borderWidth;
        marginLayoutParams.setMarginEnd(((int) ((f12 - f13) / 2.0f)) + borderWidth);
        f(this.mAvatarImageView, this.f23518e);
        f(this.mAvatarPendantImageView, this.f23517d);
        f(this.mCountryFlagImageView, this.f23516c);
    }

    public void setAvatarRatio(float f10) {
        float f11 = this.f23518e;
        this.f23516c = f11 / 3.0f;
        this.f23517d = (f11 * f10) + 0.5f;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mCountryFlagImageView.getLayoutParams();
        int borderWidth = this.mCountryFlagImageView.getBorderWidth();
        float f12 = this.f23517d;
        float f13 = this.f23518e;
        marginLayoutParams.bottomMargin = ((int) ((f12 - f13) / 2.0f)) + borderWidth;
        marginLayoutParams.setMarginEnd(((int) ((f12 - f13) / 2.0f)) + borderWidth);
        f(this.mAvatarImageView, this.f23518e);
        f(this.mAvatarPendantImageView, this.f23517d);
        f(this.mCountryFlagImageView, this.f23516c);
    }

    public void setAvatarSize(float f10) {
        e(f10, 1.25f);
    }

    public void setAvatarWithClip(boolean z10) {
        NormalCircleImageView normalCircleImageView = this.mAvatarImageView;
        if (normalCircleImageView != null) {
            normalCircleImageView.setWithClip(z10);
        }
    }

    public void setDefaultAvatarRes(int i9) {
        this.f23520g = i9;
    }

    public AvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23520g = R.mipmap.default_head_space;
        c(context, attributeSet);
    }

    public AvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23520g = R.mipmap.default_head_space;
        c(context, attributeSet);
    }
}
