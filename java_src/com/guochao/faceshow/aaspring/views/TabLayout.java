package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_base.R$color;
import com.guochao.lib_base.R$drawable;
import com.guochao.lib_base.R$id;
import com.guochao.lib_base.R$styleable;
import com.opensource.svgaplayer.SVGAImageView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class TabLayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private int A;
    private float B;
    private float C;
    private float D;
    private float E;
    private float F;

    /* renamed from: a  reason: collision with root package name */
    private TabHolder f24035a;

    /* renamed from: b  reason: collision with root package name */
    private final List<CharSequence> f24036b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Integer> f24037c;

    /* renamed from: d  reason: collision with root package name */
    private final List<e> f24038d;

    /* renamed from: e  reason: collision with root package name */
    private int f24039e;

    /* renamed from: f  reason: collision with root package name */
    private int f24040f;

    /* renamed from: g  reason: collision with root package name */
    private int f24041g;

    /* renamed from: h  reason: collision with root package name */
    private int f24042h;

    /* renamed from: i  reason: collision with root package name */
    private float f24043i;

    /* renamed from: j  reason: collision with root package name */
    private float f24044j;

    /* renamed from: k  reason: collision with root package name */
    private int f24045k;

    /* renamed from: l  reason: collision with root package name */
    private Drawable f24046l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f24047m;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f24048n;

    /* renamed from: o  reason: collision with root package name */
    private ColorStateList f24049o;

    /* renamed from: p  reason: collision with root package name */
    private ViewPager f24050p;

    /* renamed from: q  reason: collision with root package name */
    private ViewPager2 f24051q;

    /* renamed from: r  reason: collision with root package name */
    private d f24052r;

    /* renamed from: s  reason: collision with root package name */
    private float f24053s;

    /* renamed from: t  reason: collision with root package name */
    private float f24054t;

    /* renamed from: u  reason: collision with root package name */
    private int f24055u;

    /* renamed from: v  reason: collision with root package name */
    private c f24056v;

    /* renamed from: w  reason: collision with root package name */
    private int f24057w;

    /* renamed from: x  reason: collision with root package name */
    private int f24058x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f24059y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f24060z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ViewPager2.OnPageChangeCallback {
        a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i9) {
            super.onPageSelected(i9);
            TabLayout.this.C(i9, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f24066a;

        b(int i9) {
            this.f24066a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabLayout.this.C(this.f24066a, true);
            if (TabLayout.this.f24050p != null) {
                TabLayout.this.f24050p.setCurrentItem(this.f24066a, true);
            }
            if (TabLayout.this.f24051q != null) {
                TabLayout.this.f24051q.setCurrentItem(this.f24066a, true);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(TabLayout tabLayout, e eVar, int i9);
    }

    /* loaded from: classes3.dex */
    public interface d {
        CharSequence a(int i9);
    }

    /* loaded from: classes3.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f24068a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f24069b;

        /* renamed from: c  reason: collision with root package name */
        private f f24070c;

        /* renamed from: d  reason: collision with root package name */
        private TabLayout f24071d;

        /* synthetic */ e(CharSequence charSequence, a aVar) {
            this(charSequence);
        }

        public f a() {
            return this.f24070c;
        }

        public void b(boolean z10) {
            this.f24069b = z10;
            this.f24070c.setSelected(z10);
            if (z10) {
                this.f24070c.a().setTextColor(this.f24071d.f24041g);
            } else {
                this.f24070c.a().setTextColor(this.f24071d.f24042h);
            }
        }

        public void c(f fVar) {
            this.f24070c = fVar;
        }

        public e d(TabLayout tabLayout) {
            this.f24071d = tabLayout;
            return this;
        }

        private e() {
        }

        private e(CharSequence charSequence) {
            this.f24068a = charSequence;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class f extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private final TabLayout f24072a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f24073b;

        /* renamed from: c  reason: collision with root package name */
        private TextView f24074c;

        /* renamed from: d  reason: collision with root package name */
        private ImageView f24075d;

        /* renamed from: e  reason: collision with root package name */
        private AppCompatImageView f24076e;

        /* renamed from: f  reason: collision with root package name */
        private Drawable f24077f;

        public f(Context context, TabLayout tabLayout, boolean z10) {
            super(context);
            this.f24072a = tabLayout;
            this.f24073b = z10;
            b();
        }

        private void b() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            frameLayout.setLayoutParams(layoutParams);
            TextView textView = new TextView(getContext());
            this.f24074c = textView;
            textView.setGravity(17);
            this.f24074c.setSingleLine();
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 17;
            if (this.f24072a.B <= 0.0f) {
                layoutParams2.setMarginEnd(DensityUtil.dp2px(getContext(), 6.0f));
                layoutParams2.setMarginStart(DensityUtil.dp2px(getContext(), 6.0f));
            } else {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(0);
            }
            this.f24074c.setLayoutParams(layoutParams2);
            ImageView imageView = new ImageView(getContext());
            this.f24075d = imageView;
            imageView.setImageResource(R$drawable.shape_tab_badge);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams3.gravity = BadgeDrawable.TOP_END;
            this.f24075d.setLayoutParams(layoutParams3);
            frameLayout.addView(this.f24074c);
            frameLayout.addView(this.f24075d);
            addView(frameLayout);
            e(false);
            AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
            this.f24076e = appCompatImageView;
            addView(appCompatImageView);
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.f24076e.getLayoutParams();
            layoutParams4.gravity = 81;
            layoutParams4.width = DensityUtil.dp2px(getContext(), this.f24072a.f24053s);
            layoutParams4.height = Math.max(DensityUtil.dp2px(getContext(), 0.5f), (int) this.f24072a.f24054t);
            layoutParams4.bottomMargin = this.f24072a.f24045k;
            this.f24076e.setLayoutParams(layoutParams4);
            this.f24076e.setVisibility(4);
        }

        public TextView a() {
            return this.f24074c;
        }

        public void c() {
            ImageView imageView = (ImageView) findViewById(R$id.icon);
            if (imageView != null) {
                imageView.setVisibility(4);
            }
        }

        public void d(Drawable drawable, ColorStateList colorStateList) {
            this.f24077f = drawable;
            this.f24076e.setBackground(drawable);
            if (colorStateList != null) {
                ViewCompat.setBackgroundTintList(this.f24076e, colorStateList);
            }
        }

        public void e(boolean z10) {
            ImageView imageView = this.f24075d;
            if (imageView != null) {
                imageView.setVisibility(z10 ? 0 : 4);
            }
        }

        public void f(CharSequence charSequence) {
            this.f24074c.setText(charSequence);
            this.f24074c.setTextColor(Color.parseColor("#000000"));
            View childAt = ((ViewGroup) this.f24074c.getParent()).getChildAt(0);
            if (childAt instanceof SVGAImageView) {
                TextPaint paint = this.f24074c.getPaint();
                float measureText = paint.measureText(charSequence.toString());
                Rect rect = new Rect();
                paint.getTextBounds(charSequence.toString(), 0, charSequence.length(), rect);
                childAt.getLayoutParams().width = (int) measureText;
                childAt.getLayoutParams().height = rect.height();
            }
        }

        public void g(int i9) {
            ViewGroup viewGroup = (ViewGroup) getChildAt(0);
            setClipChildren(false);
            ((ViewGroup) getParent()).setClipChildren(false);
            int i10 = R$id.icon;
            ImageView imageView = (ImageView) findViewById(i10);
            if (imageView == null) {
                imageView = new ImageView(getContext());
                imageView.setId(i10);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = BadgeDrawable.TOP_END;
                layoutParams.topMargin = DensityUtil.dp2px(getContext(), -6.0f);
                if (this.f24072a.A == 2) {
                    layoutParams.setMarginEnd(DensityUtil.dp2px(getContext(), -4.0f));
                } else {
                    layoutParams.setMarginEnd(DensityUtil.dp2px(getContext(), -4.0f));
                }
                viewGroup.addView(imageView, layoutParams);
            }
            imageView.setVisibility(0);
            imageView.setImageResource(i9);
        }

        @Override // android.view.View
        public void setSelected(boolean z10) {
            super.setSelected(z10);
            this.f24076e.setVisibility(z10 ? 0 : 4);
            TextView textView = this.f24074c;
            TabLayout tabLayout = this.f24072a;
            textView.setTextSize(0, z10 ? tabLayout.f24044j : tabLayout.f24043i);
            if (z10) {
                this.f24074c.setTypeface(null, this.f24072a.f24057w == 2 ? 1 : 0);
                if (this.f24072a.f24047m != null) {
                    this.f24074c.setBackground(this.f24072a.f24047m);
                }
            } else {
                this.f24074c.setTypeface(null, this.f24072a.f24058x == 2 ? 1 : 0);
                if (this.f24072a.f24048n != null) {
                    this.f24074c.setBackground(this.f24072a.f24048n);
                }
            }
            this.f24074c.setPadding((int) this.f24072a.E, (int) this.f24072a.C, (int) this.f24072a.F, (int) this.f24072a.D);
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    private void A(Context context, AttributeSet attributeSet) {
        setFillViewport(true);
        this.f24039e = DensityUtil.dp2px(getContext(), 20.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TabLayout);
        int color = obtainStyledAttributes.getColor(R$styleable.TabLayout_selectedTextColor, Color.parseColor("#000000"));
        this.f24041g = color;
        this.f24042h = obtainStyledAttributes.getColor(R$styleable.TabLayout_textColor, color);
        Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.TabLayout_indicatorDrawable);
        this.f24046l = drawable;
        if (drawable == null) {
            this.f24046l = getResources().getDrawable(R$drawable.indicator);
        }
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(R$styleable.TabLayout_indicatorColor);
        this.f24049o = colorStateList;
        if (colorStateList == null) {
            this.f24049o = getResources().getColorStateList(R$color.color_app_primary);
        }
        this.f24045k = (int) (obtainStyledAttributes.getDimension(R$styleable.TabLayout_indicatorBottomGap, DensityUtil.dp2px(getContext(), 4.0f)) + 0.5d);
        this.f24043i = obtainStyledAttributes.getDimension(R$styleable.TabLayout_textSize, DensityUtil.dp2px(getContext(), 14.0f));
        this.f24044j = obtainStyledAttributes.getDimension(R$styleable.TabLayout_selectedTextSize, DensityUtil.dp2px(getContext(), 16.0f));
        this.f24053s = obtainStyledAttributes.getDimension(R$styleable.TabLayout_indicatorWidth, DensityUtil.dp2px(getContext(), 3.0f));
        this.f24054t = obtainStyledAttributes.getDimension(R$styleable.TabLayout_indicatorHeight, DensityUtil.dp2px(getContext(), 3.0f));
        this.f24055u = obtainStyledAttributes.getInt(R$styleable.TabLayout_mode, -1);
        this.B = obtainStyledAttributes.getDimension(R$styleable.TabLayout_tabMargin, DensityUtil.dp2px(0.0f));
        this.f24057w = obtainStyledAttributes.getInt(R$styleable.TabLayout_textStyle, 1);
        this.f24058x = obtainStyledAttributes.getInt(R$styleable.TabLayout_textUnSelectStyle, 1);
        this.f24059y = obtainStyledAttributes.getBoolean(R$styleable.TabLayout_showBadge, this.f24059y);
        this.f24060z = obtainStyledAttributes.getBoolean(R$styleable.TabLayout_showMargin, this.f24060z);
        this.f24047m = obtainStyledAttributes.getDrawable(R$styleable.TabLayout_tabSelectDrawable);
        this.f24048n = obtainStyledAttributes.getDrawable(R$styleable.TabLayout_tabunSelectDrawable);
        this.C = obtainStyledAttributes.getDimension(R$styleable.TabLayout_tabPaddingTopGravity, DensityUtil.dp2px(0.0f));
        this.D = obtainStyledAttributes.getDimension(R$styleable.TabLayout_tabPaddingBottomGravity, DensityUtil.dp2px(0.0f));
        this.E = obtainStyledAttributes.getDimension(R$styleable.TabLayout_tabPaddingStartGravity, DensityUtil.dp2px(0.0f));
        this.F = obtainStyledAttributes.getDimension(R$styleable.TabLayout_tabPaddingEndGravity, DensityUtil.dp2px(0.0f));
        obtainStyledAttributes.recycle();
        TabHolder tabHolder = new TabHolder(context);
        this.f24035a = tabHolder;
        tabHolder.e(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 16;
        addView(this.f24035a, layoutParams);
        setDescendantFocusability(393216);
        setFocusable(false);
        setFocusableInTouchMode(false);
        if (isInEditMode()) {
            for (int i9 = 0; i9 < 8; i9++) {
                List<CharSequence> list = this.f24036b;
                list.add("tabs" + i9);
            }
            y();
            C(0, false);
        }
    }

    private void y() {
        this.f24038d.clear();
        int i9 = 0;
        for (int i10 = 0; i10 < this.f24036b.size(); i10++) {
            int z10 = z(this.f24036b.get(i10));
            this.f24037c.add(Integer.valueOf(z10 + 10));
            i9 += z10;
        }
        this.f24040f = i9 + (this.f24039e * this.f24036b.size());
        for (int i11 = 0; i11 < this.f24036b.size(); i11++) {
            f fVar = new f(getContext(), this, this.f24059y);
            e B = B(this.f24036b.get(i11));
            B.c(fVar);
            B.b(false);
            fVar.f(this.f24036b.get(i11));
            fVar.d(this.f24046l, this.f24049o);
            this.f24035a.b(B);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) fVar.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            float f10 = this.B;
            if (f10 > 0.0f) {
                layoutParams.setMarginStart((int) (f10 / 2.0f));
                layoutParams.setMarginEnd((int) (this.B / 2.0f));
            } else if (this.f24060z) {
                layoutParams.setMarginStart((this.f24039e / 2) - 5);
                layoutParams.setMarginEnd((this.f24039e / 2) - 5);
            } else {
                layoutParams.setMarginEnd(DensityUtil.dp2px(5.0f));
            }
            fVar.setLayoutParams(layoutParams);
            this.f24038d.add(B);
            B.a().setOnClickListener(new b(i11));
        }
    }

    private int z(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(Math.max(this.f24043i, this.f24044j));
        return (int) textPaint.measureText(charSequence.toString());
    }

    public e B(CharSequence charSequence) {
        return new e(charSequence, null).d(this);
    }

    public void C(int i9, boolean z10) {
        int i10 = 0;
        while (i10 < this.f24038d.size()) {
            this.f24038d.get(i10).b(i10 == i9);
            if (i10 == i9) {
                View childAt = this.f24035a.getChildAt(i10);
                smoothScrollTo(childAt.getLeft() - ((getResources().getDisplayMetrics().widthPixels - childAt.getWidth()) / 2), 0);
                c cVar = this.f24056v;
                if (cVar != null && z10) {
                    cVar.a(this, this.f24038d.get(i9), i9);
                }
            }
            i10++;
        }
    }

    public void D(int i9) {
        if (i9 >= this.f24035a.getChildCount()) {
            LogUtils.i("TabLayout", "no tab view at position" + i9 + " found");
            return;
        }
        ((f) this.f24035a.getChildAt(i9)).c();
    }

    public void E() {
        this.f24035a.d();
        this.f24038d.clear();
        this.f24036b.clear();
        requestLayout();
    }

    public void F(int i9, boolean z10) {
        if (i9 >= this.f24035a.getChildCount()) {
            LogUtils.i("TabLayout", "no tab view at position" + i9 + " found");
            return;
        }
        ((f) this.f24035a.getChildAt(i9)).e(z10);
    }

    public void G(ViewPager2 viewPager2, d dVar) {
        this.f24051q = viewPager2;
        this.f24052r = dVar;
        int itemCount = viewPager2.getAdapter().getItemCount();
        this.f24036b.clear();
        this.f24037c.clear();
        for (int i9 = 0; i9 < itemCount; i9++) {
            this.f24036b.add(dVar.a(i9));
        }
        y();
        C(viewPager2.getCurrentItem(), false);
        this.f24035a.onPageSelected(viewPager2.getCurrentItem());
        viewPager2.registerOnPageChangeCallback(this.f24035a.f24063c);
        viewPager2.registerOnPageChangeCallback(new a());
    }

    public void H(int i9, @DrawableRes int i10) {
        if (i9 >= this.f24035a.getChildCount()) {
            LogUtils.i("TabLayout", "no tab view at position" + i9 + " found");
            return;
        }
        ((f) this.f24035a.getChildAt(i9)).g(i10);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        C(i9, false);
    }

    public void setIndicatorColor(ColorStateList colorStateList) {
        this.f24049o = colorStateList;
    }

    public void setIndicatorDrawable(Drawable drawable) {
        this.f24046l = drawable;
    }

    public void setIndicatorWidth(float f10) {
        this.f24053s = f10;
    }

    public void setOnTabSelectedListener(c cVar) {
        this.f24056v = cVar;
    }

    public void setSelectTextColor(int i9) {
        this.f24041g = i9;
    }

    public void setTextColor(int i9) {
        this.f24042h = i9;
    }

    public void setupWithViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.f24050p;
        if (viewPager2 != null) {
            viewPager2.removeOnPageChangeListener(this);
            this.f24050p.removeOnPageChangeListener(this.f24035a);
        }
        this.f24050p = viewPager;
        if (viewPager == null) {
            LogUtils.i("TabLayout", "viewPager is null");
        } else if (viewPager.getAdapter() == null) {
            LogUtils.i("TabLayout", "viewPager adapter is null");
        } else {
            int count = viewPager.getAdapter().getCount();
            this.f24036b.clear();
            this.f24037c.clear();
            for (int i9 = 0; i9 < count; i9++) {
                this.f24036b.add(viewPager.getAdapter().getPageTitle(i9));
            }
            this.f24035a.removeAllViews();
            y();
            C(viewPager.getCurrentItem(), false);
            this.f24035a.onPageSelected(viewPager.getCurrentItem());
            viewPager.addOnPageChangeListener(this.f24035a);
            viewPager.addOnPageChangeListener(this);
        }
    }

    public void setupWithViewPager2(ViewPager2 viewPager2) {
        Adapter adapter = (Adapter) viewPager2.getAdapter();
        if (adapter instanceof d) {
            G(viewPager2, (d) adapter);
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24036b = new ArrayList();
        this.f24037c = new ArrayList();
        this.f24038d = new ArrayList();
        this.f24039e = 50;
        this.f24055u = -1;
        this.f24059y = false;
        this.f24060z = true;
        this.A = -1;
        A(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class TabHolder extends LinearLayout implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f24061a;

        /* renamed from: b  reason: collision with root package name */
        private TabLayout f24062b;

        /* renamed from: c  reason: collision with root package name */
        private ViewPager2.OnPageChangeCallback f24063c;

        /* loaded from: classes3.dex */
        class a extends ViewPager2.OnPageChangeCallback {
            a() {
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i9) {
                super.onPageSelected(i9);
                int i10 = 0;
                while (i10 < TabHolder.this.getChildCount()) {
                    ((f) TabHolder.this.getChildAt(i10)).setSelected(i9 == i10);
                    i10++;
                }
            }
        }

        public TabHolder(Context context) {
            super(context);
            this.f24061a = -1;
            this.f24063c = new a();
            c();
        }

        private void c() {
            setOrientation(0);
        }

        public void b(e eVar) {
            addView(eVar.a());
        }

        public void d() {
            removeAllViews();
        }

        public void e(TabLayout tabLayout) {
            this.f24062b = tabLayout;
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i9, int i10) {
            super.onMeasure(i9, i10);
            if (View.MeasureSpec.getMode(i9) == 1073741824 && this.f24062b.f24055u == -1) {
                int measuredWidth = getMeasuredWidth();
                if (measuredWidth > this.f24062b.f24040f) {
                    this.f24062b.A = 2;
                    int childCount = getChildCount();
                    int i11 = measuredWidth - this.f24062b.f24040f;
                    for (int i12 = 0; i12 < childCount; i12++) {
                        View childAt = getChildAt(i12);
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i12).getLayoutParams();
                        int intValue = (((i11 / childCount) + this.f24062b.f24039e) - 10) + ((Integer) this.f24062b.f24037c.get(i12)).intValue();
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(intValue, BasicMeasure.EXACTLY);
                        if (childAt.getWidth() == intValue) {
                            return;
                        }
                        childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), BasicMeasure.EXACTLY));
                        layoutParams.setMarginStart(0);
                        layoutParams.setMarginEnd(0);
                        layoutParams.width = intValue;
                        getChildAt(i12).setLayoutParams(layoutParams);
                    }
                    return;
                }
                this.f24062b.A = 1;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            int i10 = 0;
            while (i10 < getChildCount()) {
                ((f) getChildAt(i10)).setSelected(i9 == i10);
                i10++;
            }
        }

        public TabHolder(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f24061a = -1;
            this.f24063c = new a();
            c();
        }

        public TabHolder(Context context, AttributeSet attributeSet, int i9) {
            super(context, attributeSet, i9);
            this.f24061a = -1;
            this.f24063c = new a();
            c();
        }
    }
}
