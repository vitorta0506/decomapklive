package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class AvatarGroupView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    List<View> f23503a;

    /* renamed from: b  reason: collision with root package name */
    int f23504b;

    /* renamed from: c  reason: collision with root package name */
    boolean f23505c;

    /* renamed from: d  reason: collision with root package name */
    int f23506d;

    /* renamed from: e  reason: collision with root package name */
    int f23507e;

    /* renamed from: f  reason: collision with root package name */
    int f23508f;

    /* renamed from: g  reason: collision with root package name */
    int f23509g;

    /* renamed from: h  reason: collision with root package name */
    int f23510h;

    /* renamed from: i  reason: collision with root package name */
    boolean f23511i;

    /* renamed from: j  reason: collision with root package name */
    int f23512j;

    /* renamed from: k  reason: collision with root package name */
    int f23513k;

    public AvatarGroupView(Context context) {
        super(context);
        this.f23503a = new CopyOnWriteArrayList();
        this.f23504b = 10;
        this.f23511i = true;
        this.f23512j = 1;
        this.f23513k = 1;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        setClipChildren(false);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AvatarGroupView);
            this.f23506d = obtainStyledAttributes.getColor(4, getResources().getColor(R.color.color_ugc_app_tips));
            this.f23504b = obtainStyledAttributes.getInt(8, 5);
            this.f23505c = obtainStyledAttributes.getBoolean(10, false);
            this.f23507e = obtainStyledAttributes.getColor(4, getResources().getColor(R.color.color_app_primary));
            this.f23509g = obtainStyledAttributes.getDimensionPixelSize(0, DensityUtil.dp2px(getContext(), -6.0f));
            this.f23508f = obtainStyledAttributes.getDimensionPixelSize(1, DensityUtil.dp2px(getContext(), 20.0f));
            this.f23510h = obtainStyledAttributes.getDimensionPixelSize(3, DensityUtil.dp2px(getContext(), 0.75f));
            this.f23511i = obtainStyledAttributes.getBoolean(6, true);
            this.f23512j = obtainStyledAttributes.getInt(5, 1);
            this.f23513k = obtainStyledAttributes.getInt(9, 1);
            obtainStyledAttributes.recycle();
            return;
        }
        this.f23506d = getResources().getColor(R.color.color_ugc_app_tips);
        this.f23507e = getResources().getColor(R.color.color_app_primary);
        this.f23508f = DensityUtil.dp2px(getContext(), 20.0f);
        this.f23509g = DensityUtil.dp2px(getContext(), -6.0f);
        this.f23510h = DensityUtil.dp2px(getContext(), 0.75f);
    }

    @NotNull
    private NormalCircleImageView b() {
        NormalCircleImageView normalCircleImageView = new NormalCircleImageView(getContext());
        normalCircleImageView.setId(R.id.img);
        normalCircleImageView.setBorderWidth(this.f23510h);
        return normalCircleImageView;
    }

    private View c() {
        for (int i9 = 0; i9 < this.f23503a.size(); i9++) {
            View view = this.f23503a.get(i9);
            if (view.getParent() == null) {
                this.f23503a.remove(i9);
                return view;
            }
        }
        if (this.f23512j == 2) {
            NormalCircleImageView b10 = b();
            int i10 = this.f23508f;
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i10, i10);
            marginLayoutParams.setMarginEnd(this.f23509g);
            b10.setLayoutParams(marginLayoutParams);
            return b10;
        }
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setClipChildren(false);
        frameLayout.addView(b());
        NormalCircleImageView normalCircleImageView = new NormalCircleImageView(getContext());
        normalCircleImageView.setId(R.id.rgSexGroup);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = DensityUtil.dp2px(-4.0f);
        frameLayout.addView(normalCircleImageView, layoutParams);
        int i11 = this.f23508f;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(i11, i11);
        marginLayoutParams2.setMarginEnd(this.f23509g);
        frameLayout.setLayoutParams(marginLayoutParams2);
        return frameLayout;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).setClipChildren(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int childCount = getChildCount();
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            int measuredWidth = childAt.getMeasuredWidth() + i13;
            childAt.layout(i13, 0, measuredWidth, childAt.getMeasuredHeight());
            i13 = this.f23509g + measuredWidth;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            i11 += marginLayoutParams.width + marginLayoutParams.getMarginEnd();
            i12 = Math.max(i12, marginLayoutParams.height);
            childAt.measure(View.MeasureSpec.makeMeasureSpec(marginLayoutParams.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.height, BasicMeasure.EXACTLY));
        }
        setMeasuredDimension(i11 - this.f23509g, i12);
    }

    public void setAvatarList(List<? extends p7.c> list) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            this.f23503a.add(getChildAt(i9));
        }
        removeAllViews();
        if (list == null) {
            return;
        }
        int size = list.size();
        boolean z10 = size > this.f23504b && this.f23505c;
        if (z10) {
            size++;
        }
        for (int i10 = 0; i10 < size; i10++) {
            p7.c cVar = list.get(i10);
            String avatarUrl = cVar.getAvatarUrl();
            View c10 = c();
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) c10.findViewById(R.id.img);
            if (this.f23511i) {
                c10.setZ(i10);
            } else {
                c10.setZ(-i10);
            }
            ImageView imageView = (ImageView) c10.findViewById(R.id.rgSexGroup);
            if (cVar.getGender() != 1) {
                if (imageView != null) {
                    if (this.f23513k == 1) {
                        imageView.setImageResource(R.mipmap.women_01);
                    } else {
                        imageView.setImageResource(R.mipmap.women_02);
                    }
                }
                normalCircleImageView.setBorderColor(this.f23507e);
            } else {
                if (imageView != null) {
                    if (this.f23513k == 1) {
                        imageView.setImageResource(R.mipmap.men_01);
                    } else {
                        imageView.setImageResource(R.mipmap.men_02);
                    }
                }
                normalCircleImageView.setBorderColor(this.f23506d);
            }
            addView(c10, c10.getLayoutParams());
            if (z10 && i10 == size - 1) {
                hc.a.g(normalCircleImageView, Integer.valueOf((int) R.mipmap.icon_ugc_portrait_more));
            } else {
                ic.a.c(this).r(avatarUrl).q0(new jc.d(this.f23510h, normalCircleImageView.getBorderColor())).g1(ic.a.c(this).p(Integer.valueOf((int) R.mipmap.default_head)).q0(new jc.d(this.f23510h, normalCircleImageView.getBorderColor()))).Q0(normalCircleImageView);
            }
        }
    }

    public AvatarGroupView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23503a = new CopyOnWriteArrayList();
        this.f23504b = 10;
        this.f23511i = true;
        this.f23512j = 1;
        this.f23513k = 1;
        a(context, attributeSet);
    }

    public AvatarGroupView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23503a = new CopyOnWriteArrayList();
        this.f23504b = 10;
        this.f23511i = true;
        this.f23512j = 1;
        this.f23513k = 1;
        a(context, attributeSet);
    }
}
