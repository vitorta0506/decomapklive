package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.guochao.lib_core.R$drawable;
import com.guochao.lib_core.R$mipmap;
import com.guochao.lib_core.R$styleable;
import com.guochao.lib_core.databinding.LayoutNewSexAgeBinding;
/* loaded from: classes3.dex */
public class AgeAndSexView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    ImageView f23474a;

    /* renamed from: b  reason: collision with root package name */
    TextView f23475b;

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f23476c;

    /* renamed from: d  reason: collision with root package name */
    private float f23477d;

    /* renamed from: e  reason: collision with root package name */
    private float f23478e;

    /* renamed from: f  reason: collision with root package name */
    LayoutNewSexAgeBinding f23479f;

    public AgeAndSexView(Context context) {
        super(context);
        this.f23477d = 1.0f;
        this.f23478e = 1.0f;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        LayoutNewSexAgeBinding inflate = LayoutNewSexAgeBinding.inflate(LayoutInflater.from(context), this, true);
        this.f23479f = inflate;
        this.f23474a = inflate.userGender;
        this.f23475b = inflate.userAge;
        this.f23476c = inflate.userGenderAge;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.AgeAndSexView);
            this.f23477d = obtainStyledAttributes.getFloat(R$styleable.AgeAndSexView_layoutScaleX, 1.0f);
            this.f23478e = obtainStyledAttributes.getFloat(R$styleable.AgeAndSexView_layoutScaleY, 1.0f);
            this.f23476c.setScaleX(this.f23477d);
            this.f23476c.setScaleY(this.f23478e);
            obtainStyledAttributes.recycle();
        }
        if (isInEditMode()) {
            b(0, 25);
        }
    }

    public void b(int i9, int i10) {
        if (i9 == 0) {
            this.f23476c.setBackgroundResource(R$drawable.icon_user_center_female);
            this.f23474a.setImageResource(R$mipmap.icon_ugc_female);
        } else if (i9 == 1) {
            this.f23476c.setBackgroundResource(R$drawable.icon_user_center_male);
            this.f23474a.setImageResource(R$mipmap.icon_ugc_male);
        } else {
            this.f23476c.setBackgroundResource(R$drawable.gender_wu);
            this.f23474a.setImageResource(R$mipmap.icon_ugc_male);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f23474a.getLayoutParams();
        if (i10 <= 0) {
            layoutParams.gravity = 17;
            this.f23475b.setVisibility(8);
            return;
        }
        layoutParams.gravity = 8388627;
        this.f23475b.setText(String.valueOf(i10));
        this.f23475b.setVisibility(0);
    }

    public void c(int i9, int i10) {
        if (i9 == 0) {
            setVisibility(0);
            this.f23476c.setBackgroundResource(R$drawable.icon_user_center_female);
            this.f23474a.setImageResource(R$mipmap.icon_ugc_female);
        } else if (i9 != 1) {
            setVisibility(8);
            return;
        } else {
            setVisibility(0);
            this.f23476c.setBackgroundResource(R$drawable.icon_user_center_male);
            this.f23474a.setImageResource(R$mipmap.icon_ugc_male);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f23474a.getLayoutParams();
        if (i10 <= 0) {
            layoutParams.gravity = 17;
            setVisibility(8);
            return;
        }
        layoutParams.gravity = 8388627;
        this.f23475b.setText(String.valueOf(i10));
        setVisibility(0);
    }

    public AgeAndSexView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23477d = 1.0f;
        this.f23478e = 1.0f;
        a(context, attributeSet);
    }

    public AgeAndSexView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23477d = 1.0f;
        this.f23478e = 1.0f;
        a(context, attributeSet);
    }
}
