package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_core.R$drawable;
import com.guochao.lib_core.R$mipmap;
import com.guochao.lib_core.R$styleable;
/* loaded from: classes3.dex */
public class VipIndicatorView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    ImageView f24108a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f24109b;

    /* renamed from: c  reason: collision with root package name */
    private int f24110c;

    /* renamed from: d  reason: collision with root package name */
    private float f24111d;

    public VipIndicatorView(Context context) {
        super(context);
        this.f24110c = 0;
        this.f24111d = 1.0f;
        a(null);
    }

    private Drawable b(int i9) {
        BitmapDrawable bitmapDrawable = (BitmapDrawable) getResources().getDrawable(i9);
        if (this.f24111d == 1.0f) {
            return bitmapDrawable;
        }
        Bitmap bitmap = bitmapDrawable.getBitmap();
        return new BitmapDrawable(getResources(), Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * this.f24111d), (int) (bitmap.getHeight() * this.f24111d), false));
    }

    void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.VipIndicatorView);
            this.f24111d = obtainStyledAttributes.getFloat(R$styleable.VipIndicatorView_iconScale, 1.0f);
            obtainStyledAttributes.recycle();
        }
        setOrientation(0);
        setGravity(17);
        this.f24108a = new ImageView(getContext());
        this.f24109b = new ImageView(getContext());
        addView(this.f24108a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMarginStart(DensityUtil.dp2px(this.f24111d * 3.0f));
        addView(this.f24109b, layoutParams);
        if (getMinimumHeight() == 0) {
            setMinimumHeight(DensityUtil.dp2px(this.f24111d * 15.0f));
        }
        setPaddingRelative(0, 0, DensityUtil.dp2px(this.f24111d * 4.0f), 0);
        if (isInEditMode()) {
            setMinimumWidth(DensityUtil.dp2px(getContext(), 38.0f));
            setVipLevel(2);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            Parcelable superState = savedState.getSuperState();
            setVipLevel(savedState.f24112a);
            super.onRestoreInstanceState(superState);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f24112a = this.f24110c;
        return savedState;
    }

    public void setVipLevel(int i9) {
        this.f24110c = i9;
        if (i9 == 1) {
            setVisibility(0);
            setBackgroundResource(R$drawable.shape_vip_bg);
            this.f24108a.setImageDrawable(b(R$mipmap.vip_icon01));
            this.f24109b.setImageDrawable(b(R$mipmap.vip_icon02));
        } else if (i9 != 2) {
            setVisibility(8);
        } else {
            setVisibility(0);
            setBackgroundResource(R$drawable.shape_vvip_bg);
            this.f24108a.setImageDrawable(b(R$mipmap.vvip_icon01));
            this.f24109b.setImageDrawable(b(R$mipmap.vvip_icon02));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        int f24112a;

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
            this.f24112a = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeInt(this.f24112a);
        }

        @RequiresApi(api = 24)
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f24112a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public VipIndicatorView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24110c = 0;
        this.f24111d = 1.0f;
        a(attributeSet);
    }

    public VipIndicatorView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24110c = 0;
        this.f24111d = 1.0f;
        a(attributeSet);
    }
}
