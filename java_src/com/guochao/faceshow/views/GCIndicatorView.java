package com.guochao.faceshow.views;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u00012\u00020\u0002B%\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0014J\u0018\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\bH\u0014J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\bH\u0016J \u0010,\u001a\u00020\"2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\bH\u0016J\u0010\u0010.\u001a\u00020\"2\u0006\u0010\u000e\u001a\u00020\bH\u0016J(\u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\b2\u0006\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\bH\u0014J\b\u00104\u001a\u00020\"H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/guochao/faceshow/views/GCIndicatorView;", "Landroid/view/View;", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "indicatorDrawable", "Landroid/graphics/drawable/Drawable;", "observer", "Landroid/database/DataSetObserver;", "position", "getPosition", "()I", "setPosition", "(I)V", "positionOffset", "", "getPositionOffset", "()F", "setPositionOffset", "(F)V", "singlePeace", "getSinglePeace", "setSinglePeace", "total", "getTotal", "setTotal", "viewPager", "Landroidx/viewpager/widget/ViewPager;", "bindTo", "", "vp", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onPageScrollStateChanged", ServerProtocol.DIALOG_PARAM_STATE, "onPageScrolled", "positionOffsetPixels", "onPageSelected", "onSizeChanged", "w", "h", "oldw", "oldh", "refresh", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GCIndicatorView extends View implements ViewPager.OnPageChangeListener {
    @NotNull
    private Drawable indicatorDrawable;
    @NotNull
    private final DataSetObserver observer;
    private int position;
    private float positionOffset;
    private int singlePeace;
    private int total;
    @Nullable
    private ViewPager viewPager;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GCIndicatorView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GCIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ GCIndicatorView(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    private final void refresh() {
        PagerAdapter adapter;
        ViewPager viewPager = this.viewPager;
        if (viewPager == null || (adapter = viewPager.getAdapter()) == null) {
            return;
        }
        int count = adapter.getCount();
        this.total = count;
        if (count <= 0) {
            return;
        }
        int measuredWidth = (int) (((getMeasuredWidth() * 1.0f) / this.total) + 0.5f);
        this.singlePeace = measuredWidth;
        this.indicatorDrawable.setBounds(0, 0, measuredWidth, DensityUtil.dp2px(getContext(), 3.0f));
        invalidate();
    }

    public final void bindTo(@NotNull ViewPager vp) {
        Intrinsics.checkNotNullParameter(vp, "vp");
        ViewPager viewPager = this.viewPager;
        if (viewPager != null) {
            viewPager.removeOnPageChangeListener(this);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                adapter.unregisterDataSetObserver(this.observer);
            }
        }
        vp.addOnPageChangeListener(this);
        PagerAdapter adapter2 = vp.getAdapter();
        if (adapter2 != null) {
            adapter2.registerDataSetObserver(this.observer);
        }
        this.viewPager = vp;
    }

    public final int getPosition() {
        return this.position;
    }

    public final float getPositionOffset() {
        return this.positionOffset;
    }

    public final int getSinglePeace() {
        return this.singlePeace;
    }

    public final int getTotal() {
        return this.total;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (getLayoutDirection() == 1) {
            int i9 = this.singlePeace;
            canvas.save();
            canvas.translate(getMeasuredWidth() - (((this.position + 1) * i9) + (i9 * this.positionOffset)), 0.0f);
            this.indicatorDrawable.draw(canvas);
            canvas.restore();
            return;
        }
        int i10 = this.singlePeace;
        canvas.save();
        canvas.translate((this.position * i10) + (i10 * this.positionOffset), 0.0f);
        this.indicatorDrawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        PagerAdapter adapter;
        int dp2px = DensityUtil.dp2px(120.0f);
        ViewPager viewPager = this.viewPager;
        int count = (viewPager == null || (adapter = viewPager.getAdapter()) == null) ? 0 : adapter.getCount();
        if (count == 0) {
            super.onMeasure(i9, i10);
        } else {
            setMeasuredDimension((int) ((((int) (((dp2px * 1.0f) / count) + 0.5f)) * count) + 0.5f), View.MeasureSpec.getSize(i10));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
        this.position = i9;
        this.positionOffset = f10;
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        refresh();
    }

    public final void setPosition(int i9) {
        this.position = i9;
    }

    public final void setPositionOffset(float f10) {
        this.positionOffset = f10;
    }

    public final void setSinglePeace(int i9) {
        this.singlePeace = i9;
    }

    public final void setTotal(int i9) {
        this.total = i9;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GCIndicatorView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = getResources().getDrawable(R.drawable.indicator_indicator);
        Intrinsics.checkNotNullExpressionValue(drawable, "resources.getDrawable(R.…able.indicator_indicator)");
        this.indicatorDrawable = drawable;
        setBackgroundResource(R.drawable.indicator_background);
        this.observer = new DataSetObserver() { // from class: com.guochao.faceshow.views.GCIndicatorView$observer$1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                super.onChanged();
                GCIndicatorView.this.requestLayout();
            }
        };
    }
}
