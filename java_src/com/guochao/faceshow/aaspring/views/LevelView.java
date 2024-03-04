package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_base.R$color;
import com.guochao.lib_core.R$drawable;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$mipmap;
import com.guochao.lib_core.R$styleable;
/* loaded from: classes3.dex */
public class LevelView extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    private static final int[][] f23773d = {new int[]{R$drawable.shape_level1, R$mipmap.lv01}, new int[]{R$drawable.shape_level2, R$mipmap.lv02}, new int[]{R$drawable.shape_level3, R$mipmap.lv03}, new int[]{R$drawable.shape_level4, R$mipmap.lv04}, new int[]{R$drawable.shape_level5, R$mipmap.lv05}, new int[]{R$drawable.shape_level6, R$mipmap.lv06}, new int[]{R$drawable.shape_level7, R$mipmap.lv07}, new int[]{R$drawable.shape_level8, R$mipmap.lv08}, new int[]{R$drawable.shape_level9, R$mipmap.lv09}, new int[]{R$drawable.shape_level10, R$mipmap.lv10}, new int[]{R$drawable.shape_level11, R$mipmap.lv11}, new int[]{R$drawable.shape_level12, R$mipmap.lv12}, new int[]{R$drawable.shape_level13, R$mipmap.lv13}, new int[]{R$drawable.shape_level14, R$mipmap.lv14}, new int[]{R$drawable.shape_level15, R$mipmap.lv15}};

    /* renamed from: a  reason: collision with root package name */
    private ImageView f23774a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f23775b;

    /* renamed from: c  reason: collision with root package name */
    private int f23776c;

    public LevelView(@NonNull Context context) {
        super(context);
        this.f23776c = 1;
        b(context, null);
    }

    private int a(int i9) {
        if (i9 <= 0) {
            return 1;
        }
        if (i9 > 149) {
            return 149;
        }
        return i9;
    }

    void b(Context context, AttributeSet attributeSet) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMarginEnd(DensityUtil.dp2px(context, 1.0f));
        this.f23774a = new ImageView(context);
        this.f23775b = new TextView(context);
        linearLayout.addView(this.f23774a, layoutParams2);
        linearLayout.addView(this.f23775b);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LevelView);
            int i9 = R$styleable.LevelView_level;
            r2 = obtainStyledAttributes.hasValue(i9) ? obtainStyledAttributes.getInt(i9, 1) : 140;
            obtainStyledAttributes.recycle();
        }
        setLevel(r2);
        setPaddingRelative(0, 0, 0, 0);
        this.f23775b.setTextColor(getResources().getColor(R$color.white));
        this.f23775b.setTextSize(2, 10.0f);
        this.f23775b.setTypeface(Typeface.defaultFromStyle(1));
        setMinimumWidth(DensityUtil.dp2px(getContext(), 36.0f));
        setMinimumHeight(DensityUtil.dp2px(getContext(), 15.0f));
    }

    public void c(@IntRange(from = 1, to = 149) int i9, boolean z10) {
        d(i9, z10, false);
    }

    public void d(@IntRange(from = 1, to = 149) int i9, boolean z10, boolean z11) {
        int a10 = a(i9);
        this.f23776c = a10;
        int i10 = a10 / 10;
        ImageView imageView = this.f23774a;
        int[][] iArr = f23773d;
        imageView.setImageResource(iArr[i10][1]);
        if (z10) {
            TextView textView = this.f23775b;
            textView.setText("Lv." + this.f23776c);
        } else {
            this.f23775b.setText(String.valueOf(this.f23776c));
        }
        setBackgroundResource(iArr[i10][0]);
        DensityUtil.dp2px(getContext(), 0.5f);
        setPaddingRelative(DensityUtil.dp2px(getContext(), 5.0f), 0, DensityUtil.dp2px(getContext(), 7.0f), 0);
        this.f23775b.setTextColor(getResources().getColor(R$color.white));
        this.f23775b.setTextSize(2, 10.0f);
        f(z11);
    }

    public void e(@IntRange(from = 1, to = 149) int i9, boolean z10, boolean z11) {
        int a10 = a(i9);
        this.f23776c = a10;
        int i10 = a10 / 10;
        ImageView imageView = this.f23774a;
        int[][] iArr = f23773d;
        imageView.setImageResource(iArr[i10][1]);
        this.f23774a.setVisibility(8);
        if (z10) {
            TextView textView = this.f23775b;
            textView.setText("Lv." + this.f23776c);
        } else {
            this.f23775b.setText(String.valueOf(this.f23776c));
        }
        setBackgroundResource(iArr[i10][0]);
        int dp2px = DensityUtil.dp2px(getContext(), 0.5f);
        setPaddingRelative(DensityUtil.dp2px(getContext(), 6.0f), dp2px, DensityUtil.dp2px(getContext(), 5.0f), dp2px);
        this.f23775b.setTextColor(getResources().getColor(R$color.white));
        this.f23775b.setTextSize(2, 10.0f);
        f(z11);
    }

    public void f(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        int i9 = R$id.arrow_indicator;
        ImageView imageView = (ImageView) viewGroup.findViewById(i9);
        if (!z10) {
            if (imageView == null) {
                return;
            }
            imageView.setVisibility(8);
            return;
        }
        if (imageView == null) {
            imageView = new ImageView(getContext());
            imageView.setId(i9);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            layoutParams.setMarginStart(DensityUtil.dp2px(3.0f));
            viewGroup.addView(imageView, layoutParams);
        }
        imageView.setVisibility(0);
        imageView.setImageResource(R$drawable.bitmap_level_arrow_new);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (isInEditMode()) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(DensityUtil.dp2px(getContext(), 36.0f), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(DensityUtil.dp2px(getContext(), 15.0f), BasicMeasure.EXACTLY));
        } else {
            super.onMeasure(i9, i10);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setLevel(savedState.mLevel);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mLevel = this.f23776c;
        return savedState;
    }

    public void setLevel(@IntRange(from = 1, to = 149) int i9) {
        c(i9, false);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        private int mLevel;

        /* loaded from: classes3.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                if (Build.VERSION.SDK_INT >= 24) {
                    return new SavedState(parcel, classLoader);
                }
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c */
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.mLevel = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeInt(this.mLevel);
        }

        @RequiresApi(api = 24)
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLevel = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setLevel(String str) {
        try {
            setLevel(Integer.parseInt(str));
        } catch (Exception e10) {
            LogUtils.e("LevelView", "illegal level: " + str, e10);
            setLevel(1);
        }
    }

    public LevelView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23776c = 1;
        b(context, attributeSet);
    }

    public LevelView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23776c = 1;
        b(context, attributeSet);
    }
}
