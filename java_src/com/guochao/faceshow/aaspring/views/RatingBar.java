package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.guochao.faceshow.R$styleable;
import java.math.BigDecimal;
/* loaded from: classes3.dex */
public class RatingBar extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23973a;

    /* renamed from: b  reason: collision with root package name */
    private int f23974b;

    /* renamed from: c  reason: collision with root package name */
    private b f23975c;

    /* renamed from: d  reason: collision with root package name */
    private float f23976d;

    /* renamed from: e  reason: collision with root package name */
    private float f23977e;

    /* renamed from: f  reason: collision with root package name */
    private float f23978f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f23979g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f23980h;

    /* renamed from: i  reason: collision with root package name */
    private Drawable f23981i;

    /* renamed from: j  reason: collision with root package name */
    private StepSize f23982j;

    /* loaded from: classes3.dex */
    public enum StepSize {
        Half(0),
        Full(1);
        
        int step;

        StepSize(int i9) {
            this.step = i9;
        }

        public static StepSize fromStep(int i9) {
            StepSize[] values;
            for (StepSize stepSize : values()) {
                if (stepSize.step == i9) {
                    return stepSize;
                }
            }
            throw new IllegalArgumentException();
        }
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f23983a;

        a(ImageView imageView) {
            this.f23983a = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RatingBar ratingBar;
            RatingBar ratingBar2;
            RatingBar ratingBar3;
            RatingBar ratingBar4;
            if (RatingBar.this.f23973a) {
                int i9 = (int) RatingBar.this.f23978f;
                if (new BigDecimal(Float.toString(RatingBar.this.f23978f)).subtract(new BigDecimal(Integer.toString(i9))).floatValue() == 0.0f) {
                    i9--;
                }
                if (RatingBar.this.indexOfChild(view) > i9) {
                    RatingBar.this.setStar(ratingBar4.indexOfChild(view) + 1);
                } else if (RatingBar.this.indexOfChild(view) == i9) {
                    if (RatingBar.this.f23982j == StepSize.Full) {
                        return;
                    }
                    if (this.f23983a.getDrawable().getCurrent().getConstantState().equals(RatingBar.this.f23981i.getConstantState())) {
                        RatingBar.this.setStar(ratingBar3.indexOfChild(view) + 1);
                        return;
                    }
                    RatingBar.this.setStar(ratingBar2.indexOfChild(view) + 0.5f);
                } else {
                    RatingBar.this.setStar(ratingBar.indexOfChild(view) + 1.0f);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(float f10);
    }

    public RatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RatingBar);
        this.f23976d = obtainStyledAttributes.getDimension(5, 20.0f);
        this.f23977e = obtainStyledAttributes.getDimension(6, 10.0f);
        this.f23978f = obtainStyledAttributes.getFloat(7, 1.0f);
        this.f23982j = StepSize.fromStep(obtainStyledAttributes.getInt(8, 1));
        this.f23974b = obtainStyledAttributes.getInteger(1, 5);
        this.f23979g = obtainStyledAttributes.getDrawable(2);
        this.f23980h = obtainStyledAttributes.getDrawable(3);
        this.f23981i = obtainStyledAttributes.getDrawable(4);
        this.f23973a = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        for (int i9 = 0; i9 < this.f23974b; i9++) {
            ImageView e10 = e(i9);
            e10.setImageDrawable(this.f23979g);
            e10.setOnClickListener(new a(e10));
            addView(e10);
        }
        setStar(this.f23978f);
    }

    private ImageView e(int i9) {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(Math.round(this.f23976d), Math.round(this.f23976d));
        if (i9 != this.f23974b - 1) {
            layoutParams.setMarginEnd(Math.round(this.f23977e));
        }
        imageView.setLayoutParams(layoutParams);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setImageDrawable(this.f23979g);
        imageView.setMinimumWidth(10);
        imageView.setMaxHeight(10);
        return imageView;
    }

    public float getStart() {
        return this.f23978f;
    }

    @Override // android.view.View
    public void setClickable(boolean z10) {
        this.f23973a = z10;
    }

    public void setOnRatingChangeListener(b bVar) {
        this.f23975c = bVar;
    }

    public void setStar(float f10) {
        b bVar = this.f23975c;
        if (bVar != null) {
            bVar.a(f10);
        }
        this.f23978f = f10;
        int i9 = (int) f10;
        float floatValue = new BigDecimal(Float.toString(f10)).subtract(new BigDecimal(Integer.toString(i9))).floatValue();
        for (int i10 = 0; i10 < i9; i10++) {
            ((ImageView) getChildAt(i10)).setImageDrawable(this.f23980h);
        }
        for (int i11 = i9; i11 < this.f23974b; i11++) {
            ((ImageView) getChildAt(i11)).setImageDrawable(this.f23979g);
        }
        if (floatValue > 0.0f) {
            ((ImageView) getChildAt(i9)).setImageDrawable(this.f23981i);
        }
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.f23979g = drawable;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.f23980h = drawable;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.f23981i = drawable;
    }

    public void setStarImageSize(float f10) {
        this.f23976d = f10;
    }

    public void setStepSize(StepSize stepSize) {
        this.f23982j = stepSize;
    }
}
