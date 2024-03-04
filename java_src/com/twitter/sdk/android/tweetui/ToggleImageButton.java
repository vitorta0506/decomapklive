package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes4.dex */
public class ToggleImageButton extends ImageButton {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f35390e = {R$attr.state_toggled_on};

    /* renamed from: a  reason: collision with root package name */
    boolean f35391a;

    /* renamed from: b  reason: collision with root package name */
    String f35392b;

    /* renamed from: c  reason: collision with root package name */
    String f35393c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f35394d;

    public ToggleImageButton(Context context) {
        this(context, null);
    }

    public void a() {
        setToggledOn(!this.f35391a);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i9) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i9 + 2);
        if (this.f35391a) {
            ImageButton.mergeDrawableStates(onCreateDrawableState, f35390e);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f35394d) {
            a();
        }
        return super.performClick();
    }

    public void setToggledOn(boolean z10) {
        this.f35391a = z10;
        setContentDescription(z10 ? this.f35392b : this.f35393c);
        refreshDrawableState();
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ToggleImageButton(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        TypedArray typedArray = null;
        try {
            typedArray = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ToggleImageButton, i9, 0);
            String string = typedArray.getString(R$styleable.ToggleImageButton_contentDescriptionOn);
            String string2 = typedArray.getString(R$styleable.ToggleImageButton_contentDescriptionOff);
            this.f35392b = string == null ? (String) getContentDescription() : string;
            this.f35393c = string2 == null ? (String) getContentDescription() : string2;
            this.f35394d = typedArray.getBoolean(R$styleable.ToggleImageButton_toggleOnClick, true);
            setToggledOn(false);
            typedArray.recycle();
        } catch (Throwable th2) {
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw th2;
        }
    }
}
