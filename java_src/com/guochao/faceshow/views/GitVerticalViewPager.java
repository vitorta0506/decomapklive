package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.core.os.ParcelableCompat;
import androidx.core.os.ParcelableCompatCreatorCallbacks;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes4.dex */
public class GitVerticalViewPager extends ViewGroup {
    private static final int[] H4 = {16842931};
    private static final Comparator<d> I4 = new a();
    private static final Interpolator J4 = new b();
    private static final i K4 = new i();
    private int A;
    private int B;
    private ViewPager.PageTransformer B3;
    private float C;
    private int C4;
    private float D;
    private ArrayList<View> D4;
    private float E;
    private final Runnable E4;
    private float F;
    private int F4;
    private int G;
    private boolean G4;
    private VelocityTracker H;
    private int I;
    private int J;
    private int K;
    private int L;
    private boolean M;
    private EdgeEffectCompat N;
    private EdgeEffectCompat O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private ViewPager.OnPageChangeListener V1;
    private g V2;
    private Method V3;

    /* renamed from: a  reason: collision with root package name */
    private int f26587a;

    /* renamed from: a1  reason: collision with root package name */
    private int f26588a1;

    /* renamed from: a2  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f26589a2;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<d> f26590b;

    /* renamed from: c  reason: collision with root package name */
    private final d f26591c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f26592d;

    /* renamed from: e  reason: collision with root package name */
    private PagerAdapter f26593e;

    /* renamed from: f  reason: collision with root package name */
    private int f26594f;

    /* renamed from: g  reason: collision with root package name */
    private int f26595g;

    /* renamed from: h  reason: collision with root package name */
    private Parcelable f26596h;

    /* renamed from: i  reason: collision with root package name */
    private ClassLoader f26597i;

    /* renamed from: j  reason: collision with root package name */
    private Scroller f26598j;

    /* renamed from: k  reason: collision with root package name */
    private h f26599k;

    /* renamed from: l  reason: collision with root package name */
    private int f26600l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f26601m;

    /* renamed from: n  reason: collision with root package name */
    private int f26602n;

    /* renamed from: o  reason: collision with root package name */
    private int f26603o;

    /* renamed from: p  reason: collision with root package name */
    private float f26604p;

    /* renamed from: q  reason: collision with root package name */
    private float f26605q;

    /* renamed from: r  reason: collision with root package name */
    private int f26606r;

    /* renamed from: s  reason: collision with root package name */
    private int f26607s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f26608t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f26609u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f26610v;

    /* renamed from: w  reason: collision with root package name */
    private int f26611w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f26612x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f26613y;

    /* renamed from: z  reason: collision with root package name */
    private int f26614z;

    /* loaded from: classes4.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new a());

        /* renamed from: a  reason: collision with root package name */
        int f26615a;

        /* renamed from: b  reason: collision with root package name */
        Parcelable f26616b;

        /* renamed from: c  reason: collision with root package name */
        ClassLoader f26617c;

        /* loaded from: classes4.dex */
        class a implements ParcelableCompatCreatorCallbacks<SavedState> {
            a() {
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: b */
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f26615a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeInt(this.f26615a);
            parcel.writeParcelable(this.f26616b, i9);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f26615a = parcel.readInt();
            this.f26616b = parcel.readParcelable(classLoader);
            this.f26617c = classLoader;
        }
    }

    /* loaded from: classes4.dex */
    class a implements Comparator<d> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d dVar, d dVar2) {
            return dVar.f26620b - dVar2.f26620b;
        }
    }

    /* loaded from: classes4.dex */
    class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GitVerticalViewPager.this.setScrollState(0);
            GitVerticalViewPager.this.E();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        Object f26619a;

        /* renamed from: b  reason: collision with root package name */
        int f26620b;

        /* renamed from: c  reason: collision with root package name */
        boolean f26621c;

        /* renamed from: d  reason: collision with root package name */
        float f26622d;

        /* renamed from: e  reason: collision with root package name */
        float f26623e;

        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends AccessibilityDelegateCompat {
        f() {
        }

        private boolean canScroll() {
            return GitVerticalViewPager.this.f26593e != null && GitVerticalViewPager.this.f26593e.getCount() > 1;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            AccessibilityRecordCompat obtain = AccessibilityRecordCompat.obtain();
            obtain.setScrollable(canScroll());
            if (accessibilityEvent.getEventType() != 4096 || GitVerticalViewPager.this.f26593e == null) {
                return;
            }
            obtain.setItemCount(GitVerticalViewPager.this.f26593e.getCount());
            obtain.setFromIndex(GitVerticalViewPager.this.f26594f);
            obtain.setToIndex(GitVerticalViewPager.this.f26594f);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(canScroll());
            if (GitVerticalViewPager.this.x(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (GitVerticalViewPager.this.x(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i9, Bundle bundle) {
            if (super.performAccessibilityAction(view, i9, bundle)) {
                return true;
            }
            if (i9 != 4096) {
                if (i9 == 8192 && GitVerticalViewPager.this.x(-1)) {
                    GitVerticalViewPager gitVerticalViewPager = GitVerticalViewPager.this;
                    gitVerticalViewPager.setCurrentItem(gitVerticalViewPager.f26594f - 1);
                    return true;
                }
                return false;
            } else if (GitVerticalViewPager.this.x(1)) {
                GitVerticalViewPager gitVerticalViewPager2 = GitVerticalViewPager.this;
                gitVerticalViewPager2.setCurrentItem(gitVerticalViewPager2.f26594f + 1);
                return true;
            } else {
                return false;
            }
        }
    }

    /* loaded from: classes4.dex */
    interface g {
        void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    /* loaded from: classes4.dex */
    private class h extends DataSetObserver {
        private h() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            GitVerticalViewPager.this.l();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            GitVerticalViewPager.this.l();
        }

        /* synthetic */ h(GitVerticalViewPager gitVerticalViewPager, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            e eVar = (e) view.getLayoutParams();
            e eVar2 = (e) view2.getLayoutParams();
            boolean z10 = eVar.f26624a;
            if (z10 != eVar2.f26624a) {
                return z10 ? 1 : -1;
            }
            return eVar.f26628e - eVar2.f26628e;
        }
    }

    public GitVerticalViewPager(Context context) {
        super(context);
        this.f26590b = new ArrayList<>();
        this.f26591c = new d();
        this.f26592d = new Rect();
        this.f26595g = -1;
        this.f26596h = null;
        this.f26597i = null;
        this.f26604p = -3.4028235E38f;
        this.f26605q = Float.MAX_VALUE;
        this.f26611w = 1;
        this.G = -1;
        this.P = true;
        this.Q = false;
        this.E4 = new c();
        this.F4 = 0;
        this.G4 = false;
        w();
    }

    private boolean B(int i9) {
        if (this.f26590b.size() == 0) {
            this.R = false;
            y(0, 0.0f, 0);
            if (this.R) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        d u10 = u();
        int clientHeight = getClientHeight();
        int i10 = this.f26600l;
        int i11 = clientHeight + i10;
        float f10 = clientHeight;
        int i12 = u10.f26620b;
        float f11 = ((i9 / f10) - u10.f26623e) / (u10.f26622d + (i10 / f10));
        this.R = false;
        y(i12, f11, (int) (i11 * f11));
        if (this.R) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean D(float f10) {
        boolean z10;
        float f11 = this.D - f10;
        this.D = f10;
        float scrollY = getScrollY() + f11;
        float clientHeight = getClientHeight();
        float f12 = this.f26604p * clientHeight;
        float f13 = this.f26605q * clientHeight;
        d dVar = this.f26590b.get(0);
        ArrayList<d> arrayList = this.f26590b;
        boolean z11 = true;
        d dVar2 = arrayList.get(arrayList.size() - 1);
        if (dVar.f26620b != 0) {
            f12 = dVar.f26623e * clientHeight;
            z10 = false;
        } else {
            z10 = true;
        }
        if (dVar2.f26620b != this.f26593e.getCount() - 1) {
            f13 = dVar2.f26623e * clientHeight;
            z11 = false;
        }
        if (scrollY < f12) {
            r4 = z10 ? this.N.onPull(Math.abs(f12 - scrollY) / clientHeight) : false;
            scrollY = f12;
        } else if (scrollY > f13) {
            r4 = z11 ? this.O.onPull(Math.abs(scrollY - f13) / clientHeight) : false;
            scrollY = f13;
        }
        int i9 = (int) scrollY;
        this.C += scrollY - i9;
        scrollTo(getScrollX(), i9);
        B(i9);
        return r4;
    }

    private void G(int i9, int i10, int i11, int i12) {
        if (i10 > 0 && !this.f26590b.isEmpty()) {
            int scrollY = (int) ((getScrollY() / (((i10 - getPaddingTop()) - getPaddingBottom()) + i12)) * (((i9 - getPaddingTop()) - getPaddingBottom()) + i11));
            scrollTo(getScrollX(), scrollY);
            if (this.f26598j.isFinished()) {
                return;
            }
            this.f26598j.startScroll(0, scrollY, 0, (int) (v(this.f26594f).f26623e * i9), this.f26598j.getDuration() - this.f26598j.timePassed());
            return;
        }
        d v10 = v(this.f26594f);
        int min = (int) ((v10 != null ? Math.min(v10.f26623e, this.f26605q) : 0.0f) * ((i9 - getPaddingTop()) - getPaddingBottom()));
        if (min != getScrollY()) {
            k(false);
            scrollTo(getScrollX(), min);
        }
    }

    private void H() {
        int i9 = 0;
        while (i9 < getChildCount()) {
            if (!((e) getChildAt(i9).getLayoutParams()).f26624a) {
                removeViewAt(i9);
                i9--;
            }
            i9++;
        }
    }

    private void I(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    private void J(int i9, boolean z10, int i10, boolean z11) {
        ViewPager.OnPageChangeListener onPageChangeListener;
        ViewPager.OnPageChangeListener onPageChangeListener2;
        ViewPager.OnPageChangeListener onPageChangeListener3;
        ViewPager.OnPageChangeListener onPageChangeListener4;
        d v10 = v(i9);
        int clientHeight = v10 != null ? (int) (getClientHeight() * Math.max(this.f26604p, Math.min(v10.f26623e, this.f26605q))) : 0;
        if (z10) {
            N(0, clientHeight, i10);
            if (z11 && (onPageChangeListener4 = this.V1) != null) {
                onPageChangeListener4.onPageSelected(i9);
            }
            if (!z11 || (onPageChangeListener3 = this.f26589a2) == null) {
                return;
            }
            onPageChangeListener3.onPageSelected(i9);
            return;
        }
        if (z11 && (onPageChangeListener2 = this.V1) != null) {
            onPageChangeListener2.onPageSelected(i9);
        }
        if (z11 && (onPageChangeListener = this.f26589a2) != null) {
            onPageChangeListener.onPageSelected(i9);
        }
        k(false);
        scrollTo(0, clientHeight);
        B(clientHeight);
    }

    private void O() {
        if (this.C4 != 0) {
            ArrayList<View> arrayList = this.D4;
            if (arrayList == null) {
                this.D4 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                this.D4.add(getChildAt(i9));
            }
            Collections.sort(this.D4, K4);
        }
    }

    private int getClientHeight() {
        return (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private void i(d dVar, int i9, d dVar2) {
        int i10;
        int i11;
        d dVar3;
        d dVar4;
        int count = this.f26593e.getCount();
        int clientHeight = getClientHeight();
        float f10 = clientHeight > 0 ? this.f26600l / clientHeight : 0.0f;
        if (dVar2 != null) {
            int i12 = dVar2.f26620b;
            int i13 = dVar.f26620b;
            if (i12 < i13) {
                float f11 = dVar2.f26623e + dVar2.f26622d + f10;
                int i14 = i12 + 1;
                int i15 = 0;
                while (i14 <= dVar.f26620b && i15 < this.f26590b.size()) {
                    d dVar5 = this.f26590b.get(i15);
                    while (true) {
                        dVar4 = dVar5;
                        if (i14 <= dVar4.f26620b || i15 >= this.f26590b.size() - 1) {
                            break;
                        }
                        i15++;
                        dVar5 = this.f26590b.get(i15);
                    }
                    while (i14 < dVar4.f26620b) {
                        f11 += this.f26593e.getPageWidth(i14) + f10;
                        i14++;
                    }
                    dVar4.f26623e = f11;
                    f11 += dVar4.f26622d + f10;
                    i14++;
                }
            } else if (i12 > i13) {
                int size = this.f26590b.size() - 1;
                float f12 = dVar2.f26623e;
                while (true) {
                    i12--;
                    if (i12 < dVar.f26620b || size < 0) {
                        break;
                    }
                    d dVar6 = this.f26590b.get(size);
                    while (true) {
                        dVar3 = dVar6;
                        if (i12 >= dVar3.f26620b || size <= 0) {
                            break;
                        }
                        size--;
                        dVar6 = this.f26590b.get(size);
                    }
                    while (i12 > dVar3.f26620b) {
                        f12 -= this.f26593e.getPageWidth(i12) + f10;
                        i12--;
                    }
                    f12 -= dVar3.f26622d + f10;
                    dVar3.f26623e = f12;
                }
            }
        }
        int size2 = this.f26590b.size();
        float f13 = dVar.f26623e;
        int i16 = dVar.f26620b;
        int i17 = i16 - 1;
        this.f26604p = i16 == 0 ? f13 : -3.4028235E38f;
        int i18 = count - 1;
        this.f26605q = i16 == i18 ? (dVar.f26622d + f13) - 1.0f : Float.MAX_VALUE;
        int i19 = i9 - 1;
        while (i19 >= 0) {
            d dVar7 = this.f26590b.get(i19);
            while (true) {
                i11 = dVar7.f26620b;
                if (i17 <= i11) {
                    break;
                }
                f13 -= this.f26593e.getPageWidth(i17) + f10;
                i17--;
            }
            f13 -= dVar7.f26622d + f10;
            dVar7.f26623e = f13;
            if (i11 == 0) {
                this.f26604p = f13;
            }
            i19--;
            i17--;
        }
        float f14 = dVar.f26623e + dVar.f26622d + f10;
        int i20 = dVar.f26620b + 1;
        int i21 = i9 + 1;
        while (i21 < size2) {
            d dVar8 = this.f26590b.get(i21);
            while (true) {
                i10 = dVar8.f26620b;
                if (i20 >= i10) {
                    break;
                }
                f14 += this.f26593e.getPageWidth(i20) + f10;
                i20++;
            }
            if (i10 == i18) {
                this.f26605q = (dVar8.f26622d + f14) - 1.0f;
            }
            dVar8.f26623e = f14;
            f14 += dVar8.f26622d + f10;
            i21++;
            i20++;
        }
        this.Q = false;
    }

    private void k(boolean z10) {
        boolean z11 = this.F4 == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            this.f26598j.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f26598j.getCurrX();
            int currY = this.f26598j.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
            }
        }
        this.f26610v = false;
        for (int i9 = 0; i9 < this.f26590b.size(); i9++) {
            d dVar = this.f26590b.get(i9);
            if (dVar.f26621c) {
                dVar.f26621c = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                ViewCompat.postOnAnimation(this, this.E4);
            } else {
                this.E4.run();
            }
        }
    }

    private int m(int i9, float f10, int i10, int i11) {
        if (Math.abs(i11) <= this.K || Math.abs(i10) <= this.I) {
            i9 = (int) (i9 + f10 + (i9 >= this.f26594f ? 0.4f : 0.6f));
        } else if (i10 <= 0) {
            i9++;
        }
        if (this.f26590b.size() > 0) {
            ArrayList<d> arrayList = this.f26590b;
            return Math.max(this.f26590b.get(0).f26620b, Math.min(i9, arrayList.get(arrayList.size() - 1).f26620b));
        }
        return i9;
    }

    private void o(boolean z10) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            ViewCompat.setLayerType(getChildAt(i9), z10 ? 2 : 0, null);
        }
    }

    private void p() {
        this.f26612x = false;
        this.f26613y = false;
        VelocityTracker velocityTracker = this.H;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.H = null;
        }
    }

    private Rect r(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int i9) {
        if (this.F4 == i9) {
            return;
        }
        this.F4 = i9;
        if (this.B3 != null) {
            o(i9 != 0);
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.V1;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i9);
        }
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.f26609u != z10) {
            this.f26609u = z10;
        }
    }

    private d u() {
        int i9;
        int clientHeight = getClientHeight();
        float f10 = 0.0f;
        float scrollY = clientHeight > 0 ? getScrollY() / clientHeight : 0.0f;
        float f11 = clientHeight > 0 ? this.f26600l / clientHeight : 0.0f;
        d dVar = null;
        float f12 = 0.0f;
        int i10 = -1;
        int i11 = 0;
        boolean z10 = true;
        while (i11 < this.f26590b.size()) {
            d dVar2 = this.f26590b.get(i11);
            if (!z10 && dVar2.f26620b != (i9 = i10 + 1)) {
                dVar2 = this.f26591c;
                dVar2.f26623e = f10 + f12 + f11;
                dVar2.f26620b = i9;
                dVar2.f26622d = this.f26593e.getPageWidth(i9);
                i11--;
            }
            f10 = dVar2.f26623e;
            float f13 = dVar2.f26622d + f10 + f11;
            if (!z10 && scrollY < f10) {
                return dVar;
            }
            if (scrollY < f13 || i11 == this.f26590b.size() - 1) {
                return dVar2;
            }
            i10 = dVar2.f26620b;
            f12 = dVar2.f26622d;
            i11++;
            dVar = dVar2;
            z10 = false;
        }
        return dVar;
    }

    private void z(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.G) {
            int i9 = actionIndex == 0 ? 1 : 0;
            this.D = MotionEventCompat.getY(motionEvent, i9);
            this.G = MotionEventCompat.getPointerId(motionEvent, i9);
            VelocityTracker velocityTracker = this.H;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    boolean A() {
        PagerAdapter pagerAdapter = this.f26593e;
        if (pagerAdapter == null || this.f26594f >= pagerAdapter.getCount() - 1) {
            return false;
        }
        K(this.f26594f + 1, true);
        return true;
    }

    boolean C() {
        int i9 = this.f26594f;
        if (i9 > 0) {
            K(i9 - 1, true);
            return true;
        }
        return false;
    }

    void E() {
        F(this.f26594f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
        if (r10 == r11) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void F(int r18) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.GitVerticalViewPager.F(int):void");
    }

    public void K(int i9, boolean z10) {
        this.f26610v = false;
        L(i9, z10, false);
    }

    void L(int i9, boolean z10, boolean z11) {
        M(i9, z10, z11, 0);
    }

    void M(int i9, boolean z10, boolean z11, int i10) {
        ViewPager.OnPageChangeListener onPageChangeListener;
        ViewPager.OnPageChangeListener onPageChangeListener2;
        PagerAdapter pagerAdapter = this.f26593e;
        if (pagerAdapter != null && pagerAdapter.getCount() > 0) {
            if (!z11 && this.f26594f == i9 && this.f26590b.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i9 < 0) {
                i9 = 0;
            } else if (i9 >= this.f26593e.getCount()) {
                i9 = this.f26593e.getCount() - 1;
            }
            int i11 = this.f26611w;
            int i12 = this.f26594f;
            if (i9 > i12 + i11 || i9 < i12 - i11) {
                for (int i13 = 0; i13 < this.f26590b.size(); i13++) {
                    this.f26590b.get(i13).f26621c = true;
                }
            }
            boolean z12 = this.f26594f != i9;
            if (this.P) {
                this.f26594f = i9;
                if (z12 && (onPageChangeListener2 = this.V1) != null) {
                    onPageChangeListener2.onPageSelected(i9);
                }
                if (z12 && (onPageChangeListener = this.f26589a2) != null) {
                    onPageChangeListener.onPageSelected(i9);
                }
                requestLayout();
                return;
            }
            F(i9);
            J(i9, z10, i10, z12);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    void N(int i9, int i10, int i11) {
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i12 = i9 - scrollX;
        int i13 = i10 - scrollY;
        if (i12 == 0 && i13 == 0) {
            k(false);
            E();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientHeight = getClientHeight();
        int i14 = clientHeight / 2;
        float f10 = clientHeight;
        float f11 = i14;
        float n9 = f11 + (n(Math.min(1.0f, (Math.abs(i12) * 1.0f) / f10)) * f11);
        int abs2 = Math.abs(i11);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(n9 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i12) / ((f10 * this.f26593e.getPageWidth(this.f26594f)) + this.f26600l)) + 1.0f) * 100.0f);
        }
        this.f26598j.startScroll(scrollX, scrollY, i12, i13, Math.min(abs, 600));
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i9, int i10) {
        d t10;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() == 0 && (t10 = t(childAt)) != null && t10.f26620b == this.f26594f) {
                    childAt.addFocusables(arrayList, i9, i10);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i10 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        d t10;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (t10 = t(childAt)) != null && t10.f26620b == this.f26594f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        e eVar = (e) layoutParams;
        boolean z10 = eVar.f26624a | false;
        eVar.f26624a = z10;
        if (!this.f26608t) {
            super.addView(view, i9, layoutParams);
        } else if (!z10) {
            eVar.f26627d = true;
            addViewInLayout(view, i9, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f26598j.isFinished() && this.f26598j.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f26598j.getCurrX();
            int currY = this.f26598j.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!B(currY)) {
                    this.f26598j.abortAnimation();
                    scrollTo(currX, 0);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        k(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || q(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        d t10;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (t10 = t(childAt)) != null && t10.f26620b == this.f26594f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        boolean z10 = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || (pagerAdapter = this.f26593e) == null || pagerAdapter.getCount() <= 1)) {
            this.N.finish();
            this.O.finish();
        } else {
            if (!this.N.isFinished()) {
                int save = canvas.save();
                int height = getHeight();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), this.f26604p * height);
                this.N.setSize(width, height);
                z10 = false | this.N.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.O.isFinished()) {
                int save2 = canvas.save();
                int height2 = getHeight();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.rotate(180.0f);
                canvas.translate((-width2) - getPaddingLeft(), (-(this.f26605q + 1.0f)) * height2);
                this.O.setSize(width2, height2);
                z10 |= this.O.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z10) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f26601m;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    d e(int i9, int i10) {
        d dVar = new d();
        dVar.f26620b = i9;
        dVar.f26619a = this.f26593e.instantiateItem((ViewGroup) this, i9);
        dVar.f26622d = this.f26593e.getPageWidth(i9);
        if (i10 >= 0 && i10 < this.f26590b.size()) {
            this.f26590b.add(i10, dVar);
        } else {
            this.f26590b.add(dVar);
        }
        return dVar;
    }

    protected boolean f(float f10) {
        return this.f26594f != 0 && f10 > 0.0f;
    }

    protected boolean g(float f10) {
        return this.f26594f != getAdapter().getCount() - 1 && f10 < 0.0f;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public PagerAdapter getAdapter() {
        return this.f26593e;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i9, int i10) {
        if (this.C4 == 2) {
            i10 = (i9 - 1) - i10;
        }
        return ((e) this.D4.get(i10).getLayoutParams()).f26629f;
    }

    public int getCurrentItem() {
        return this.f26594f;
    }

    public int getOffscreenPageLimit() {
        return this.f26611w;
    }

    public int getPageMargin() {
        return this.f26600l;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(int r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != r6) goto Lb
        L9:
            r0 = r3
            goto L69
        Lb:
            if (r0 == 0) goto L69
            android.view.ViewParent r4 = r0.getParent()
        L11:
            boolean r5 = r4 instanceof android.view.ViewGroup
            if (r5 == 0) goto L1e
            if (r4 != r6) goto L19
            r4 = 1
            goto L1f
        L19:
            android.view.ViewParent r4 = r4.getParent()
            goto L11
        L1e:
            r4 = 0
        L1f:
            if (r4 != 0) goto L69
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
        L35:
            boolean r5 = r0 instanceof android.view.ViewGroup
            if (r5 == 0) goto L4e
            java.lang.String r5 = " => "
            r4.append(r5)
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
            goto L35
        L4e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.append(r5)
            java.lang.String r4 = r4.toString()
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = "ViewPager"
            android.util.Log.e(r4, r0)
            goto L9
        L69:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 130(0x82, float:1.82E-43)
            r5 = 33
            if (r3 == 0) goto Lba
            if (r3 == r0) goto Lba
            if (r7 != r5) goto L9a
            android.graphics.Rect r1 = r6.f26592d
            android.graphics.Rect r1 = r6.r(r1, r3)
            int r1 = r1.top
            android.graphics.Rect r2 = r6.f26592d
            android.graphics.Rect r2 = r6.r(r2, r0)
            int r2 = r2.top
            if (r0 == 0) goto L94
            if (r1 < r2) goto L94
            boolean r0 = r6.C()
            goto L98
        L94:
            boolean r0 = r3.requestFocus()
        L98:
            r2 = r0
            goto Lcd
        L9a:
            if (r7 != r4) goto Lcd
            android.graphics.Rect r1 = r6.f26592d
            android.graphics.Rect r1 = r6.r(r1, r3)
            int r1 = r1.bottom
            android.graphics.Rect r2 = r6.f26592d
            android.graphics.Rect r2 = r6.r(r2, r0)
            int r2 = r2.bottom
            if (r0 == 0) goto Lb5
            if (r1 > r2) goto Lb5
            boolean r0 = r6.A()
            goto L98
        Lb5:
            boolean r0 = r3.requestFocus()
            goto L98
        Lba:
            if (r7 == r5) goto Lc9
            if (r7 != r1) goto Lbf
            goto Lc9
        Lbf:
            if (r7 == r4) goto Lc4
            r0 = 2
            if (r7 != r0) goto Lcd
        Lc4:
            boolean r2 = r6.A()
            goto Lcd
        Lc9:
            boolean r2 = r6.C()
        Lcd:
            if (r2 == 0) goto Ld6
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        Ld6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.GitVerticalViewPager.h(int):boolean");
    }

    protected boolean j(View view, boolean z10, int i9, int i10, int i11) {
        int i12;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i13 = i11 + scrollY;
                if (i13 >= childAt.getTop() && i13 < childAt.getBottom() && (i12 = i10 + scrollX) >= childAt.getLeft() && i12 < childAt.getRight() && j(childAt, true, i9, i12 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && ViewCompat.canScrollVertically(view, -i9);
    }

    void l() {
        int count = this.f26593e.getCount();
        this.f26587a = count;
        boolean z10 = this.f26590b.size() < (this.f26611w * 2) + 1 && this.f26590b.size() < count;
        int i9 = this.f26594f;
        int i10 = 0;
        boolean z11 = false;
        while (i10 < this.f26590b.size()) {
            d dVar = this.f26590b.get(i10);
            int itemPosition = this.f26593e.getItemPosition(dVar.f26619a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f26590b.remove(i10);
                    i10--;
                    if (!z11) {
                        this.f26593e.startUpdate((ViewGroup) this);
                        z11 = true;
                    }
                    this.f26593e.destroyItem((ViewGroup) this, dVar.f26620b, dVar.f26619a);
                    int i11 = this.f26594f;
                    if (i11 == dVar.f26620b) {
                        i9 = Math.max(0, Math.min(i11, count - 1));
                    }
                } else {
                    int i12 = dVar.f26620b;
                    if (i12 != itemPosition) {
                        if (i12 == this.f26594f) {
                            i9 = itemPosition;
                        }
                        dVar.f26620b = itemPosition;
                    }
                }
                z10 = true;
            }
            i10++;
        }
        if (z11) {
            this.f26593e.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f26590b, I4);
        if (z10) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                e eVar = (e) getChildAt(i13).getLayoutParams();
                if (!eVar.f26624a) {
                    eVar.f26626c = 0.0f;
                }
            }
            L(i9, false, true);
            requestLayout();
        }
    }

    float n(float f10) {
        return (float) Math.sin((float) ((f10 - 0.5f) * 0.4712389167638204d));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.P = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.E4);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height;
        int i9;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f26600l <= 0 || this.f26601m == null || this.f26590b.size() <= 0 || this.f26593e == null) {
            return;
        }
        int scrollY = getScrollY();
        float height2 = getHeight();
        float f12 = this.f26600l / height2;
        int i10 = 0;
        d dVar = this.f26590b.get(0);
        float f13 = dVar.f26623e;
        int size = this.f26590b.size();
        int i11 = dVar.f26620b;
        int i12 = this.f26590b.get(size - 1).f26620b;
        while (i11 < i12) {
            while (true) {
                i9 = dVar.f26620b;
                if (i11 <= i9 || i10 >= size) {
                    break;
                }
                i10++;
                dVar = this.f26590b.get(i10);
            }
            if (i11 == i9) {
                float f14 = dVar.f26623e;
                float f15 = dVar.f26622d;
                f10 = (f14 + f15) * height2;
                f13 = f14 + f15 + f12;
            } else {
                float pageWidth = this.f26593e.getPageWidth(i11);
                f10 = (f13 + pageWidth) * height2;
                f13 += pageWidth + f12;
            }
            int i13 = this.f26600l;
            if (i13 + f10 > scrollY) {
                f11 = f12;
                this.f26601m.setBounds(this.f26602n, (int) f10, this.f26603o, (int) (i13 + f10 + 0.5f));
                this.f26601m.draw(canvas);
            } else {
                f11 = f12;
            }
            if (f10 > scrollY + height) {
                return;
            }
            i11++;
            f12 = f11;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f10;
        if (this.G4) {
            int action = motionEvent.getAction() & 255;
            if (action != 3 && action != 1) {
                if (action != 0) {
                    if (this.f26612x) {
                        return true;
                    }
                    if (this.f26613y) {
                        return false;
                    }
                }
                if (action == 0) {
                    float x10 = motionEvent.getX();
                    this.E = x10;
                    this.C = x10;
                    float y10 = motionEvent.getY();
                    this.F = y10;
                    this.D = y10;
                    this.G = MotionEventCompat.getPointerId(motionEvent, 0);
                    this.f26613y = false;
                    this.f26598j.computeScrollOffset();
                    if (this.F4 == 2 && Math.abs(this.f26598j.getFinalY() - this.f26598j.getCurrY()) > this.L) {
                        this.f26598j.abortAnimation();
                        this.f26610v = false;
                        E();
                        this.f26612x = true;
                        I(true);
                        setScrollState(1);
                    } else {
                        k(false);
                        this.f26612x = false;
                    }
                } else if (action == 2) {
                    int i9 = this.G;
                    if (i9 != -1) {
                        int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, i9);
                        float y11 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                        float f11 = y11 - this.D;
                        float abs = Math.abs(f11);
                        float x11 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                        float abs2 = Math.abs(x11 - this.E);
                        int i10 = (f11 > 0.0f ? 1 : (f11 == 0.0f ? 0 : -1));
                        if (i10 != 0 && ((f(f11) || g(f11)) && !j(this, true, (int) f11, (int) x11, (int) y11) && abs > 4.0f * abs2)) {
                            this.f26612x = true;
                            I(true);
                            setScrollState(1);
                            if (i10 > 0) {
                                f10 = this.F + this.B;
                            } else {
                                f10 = this.F - this.B;
                            }
                            this.D = f10;
                            this.C = x11;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > this.B) {
                            this.f26613y = true;
                        }
                        if (this.f26612x && D(y11)) {
                            ViewCompat.postInvalidateOnAnimation(this);
                        }
                    }
                } else if (action == 6) {
                    z(motionEvent);
                }
                if (this.H == null) {
                    this.H = VelocityTracker.obtain();
                }
                this.H.addMovement(motionEvent);
                return this.f26612x;
            }
            this.f26612x = false;
            this.f26613y = false;
            this.G = -1;
            VelocityTracker velocityTracker = this.H;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.H = null;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.GitVerticalViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.GitVerticalViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i9, Rect rect) {
        int i10;
        int i11;
        d t10;
        int childCount = getChildCount();
        int i12 = -1;
        if ((i9 & 2) != 0) {
            i12 = childCount;
            i10 = 0;
            i11 = 1;
        } else {
            i10 = childCount - 1;
            i11 = -1;
        }
        while (i10 != i12) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (t10 = t(childAt)) != null && t10.f26620b == this.f26594f && childAt.requestFocus(i9, rect)) {
                return true;
            }
            i10 += i11;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        PagerAdapter pagerAdapter = this.f26593e;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.f26616b, savedState.f26617c);
            L(savedState.f26615a, false, true);
            return;
        }
        this.f26595g = savedState.f26615a;
        this.f26596h = savedState.f26616b;
        this.f26597i = savedState.f26617c;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f26615a = this.f26594f;
        PagerAdapter pagerAdapter = this.f26593e;
        if (pagerAdapter != null) {
            savedState.f26616b = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (i10 != i12) {
            int i13 = this.f26600l;
            G(i10, i12, i13, i13);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        boolean onRelease;
        boolean onRelease2;
        boolean z10 = false;
        if (this.G4) {
            if (this.M) {
                return true;
            }
            if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.f26593e) == null || pagerAdapter.getCount() == 0) {
                return false;
            }
            if (this.H == null) {
                this.H = VelocityTracker.obtain();
            }
            this.H.addMovement(motionEvent);
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.f26598j.abortAnimation();
                this.f26610v = false;
                E();
                float x10 = motionEvent.getX();
                this.E = x10;
                this.C = x10;
                float y10 = motionEvent.getY();
                this.F = y10;
                this.D = y10;
                this.G = MotionEventCompat.getPointerId(motionEvent, 0);
            } else if (action != 1) {
                if (action == 2) {
                    if (!this.f26612x) {
                        int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.G);
                        float y11 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                        float abs = Math.abs(y11 - this.D);
                        float x11 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                        float abs2 = Math.abs(x11 - this.C);
                        if (abs > this.B && abs > abs2 * 4.0f) {
                            this.f26612x = true;
                            I(true);
                            float f10 = this.F;
                            this.D = y11 - f10 > 0.0f ? f10 + this.B : f10 - this.B;
                            this.C = x11;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                    if (this.f26612x) {
                        z10 = false | D(MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.G)));
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.D = MotionEventCompat.getY(motionEvent, actionIndex);
                        this.G = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                    } else if (action == 6) {
                        z(motionEvent);
                        this.D = MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.G));
                    }
                } else if (this.f26612x) {
                    J(this.f26594f, true, 0, false);
                    this.G = -1;
                    p();
                    onRelease = this.N.onRelease();
                    onRelease2 = this.O.onRelease();
                    z10 = onRelease | onRelease2;
                }
            } else if (this.f26612x) {
                VelocityTracker velocityTracker = this.H;
                velocityTracker.computeCurrentVelocity(1000, this.J);
                int yVelocity = (int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.G);
                this.f26610v = true;
                int clientHeight = getClientHeight();
                int scrollY = getScrollY();
                d u10 = u();
                M(m(u10.f26620b, ((scrollY / clientHeight) - u10.f26623e) / u10.f26622d, yVelocity, (int) (MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.G)) - this.F)), true, true, yVelocity);
                this.G = -1;
                p();
                onRelease = this.N.onRelease();
                onRelease2 = this.O.onRelease();
                z10 = onRelease | onRelease2;
            }
            if (z10) {
                ViewCompat.postInvalidateOnAnimation(this);
            }
            return true;
        }
        return false;
    }

    public boolean q(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return h(17);
            }
            if (keyCode == 22) {
                return h(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return h(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return h(1);
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f26608t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    d s(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return t(view);
            }
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        Parcelable parcelable;
        ClassLoader classLoader;
        PagerAdapter pagerAdapter2 = this.f26593e;
        if (pagerAdapter2 != null) {
            pagerAdapter2.unregisterDataSetObserver(this.f26599k);
            this.f26593e.startUpdate((ViewGroup) this);
            for (int i9 = 0; i9 < this.f26590b.size(); i9++) {
                d dVar = this.f26590b.get(i9);
                this.f26593e.destroyItem((ViewGroup) this, dVar.f26620b, dVar.f26619a);
            }
            this.f26593e.finishUpdate((ViewGroup) this);
            this.f26590b.clear();
            H();
            this.f26594f = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.f26593e;
        this.f26593e = pagerAdapter;
        this.f26587a = 0;
        if (pagerAdapter != null) {
            if (this.f26599k == null) {
                this.f26599k = new h(this, null);
            }
            this.f26593e.registerDataSetObserver(this.f26599k);
            this.f26610v = false;
            boolean z10 = this.P;
            this.P = true;
            this.f26587a = this.f26593e.getCount();
            if (this.f26595g >= 0 && (parcelable = this.f26596h) != null && (classLoader = this.f26597i) != null) {
                this.f26593e.restoreState(parcelable, classLoader);
                L(this.f26595g, false, true);
                this.f26595g = -1;
                this.f26596h = null;
                this.f26597i = null;
            } else if (!z10) {
                E();
            } else {
                requestLayout();
            }
        }
        g gVar = this.V2;
        if (gVar == null || pagerAdapter3 == pagerAdapter) {
            return;
        }
        gVar.a(pagerAdapter3, pagerAdapter);
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z10) {
        if (this.V3 == null) {
            try {
                this.V3 = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e10) {
                Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e10);
            }
        }
        try {
            this.V3.invoke(this, Boolean.valueOf(z10));
        } catch (Exception e11) {
            Log.e("ViewPager", "Error changing children drawing order", e11);
        }
    }

    public void setCurrentItem(int i9) {
        this.f26610v = false;
        L(i9, !this.P, false);
    }

    public void setOffscreenPageLimit(int i9) {
        if (i9 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i9 + " too small; defaulting to 1");
            i9 = 1;
        }
        if (i9 != this.f26611w) {
            this.f26611w = i9;
            E();
        }
    }

    void setOnAdapterChangeListener(g gVar) {
        this.V2 = gVar;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.V1 = onPageChangeListener;
    }

    public void setPageMargin(int i9) {
        int i10 = this.f26600l;
        this.f26600l = i9;
        int height = getHeight();
        G(height, height, i9, i10);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f26601m = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollable(boolean z10) {
        this.G4 = z10;
    }

    d t(View view) {
        for (int i9 = 0; i9 < this.f26590b.size(); i9++) {
            d dVar = this.f26590b.get(i9);
            if (this.f26593e.isViewFromObject(view, dVar.f26619a)) {
                return dVar;
            }
        }
        return null;
    }

    d v(int i9) {
        for (int i10 = 0; i10 < this.f26590b.size(); i10++) {
            d dVar = this.f26590b.get(i10);
            if (dVar.f26620b == i9) {
                return dVar;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f26601m;
    }

    void w() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f26598j = new Scroller(context, J4);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.B = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.I = (int) (400.0f * f10);
        this.J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.N = new EdgeEffectCompat(context);
        this.O = new EdgeEffectCompat(context);
        this.K = (int) (25.0f * f10);
        this.L = (int) (2.0f * f10);
        this.f26614z = (int) (f10 * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new f());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    public boolean x(int i9) {
        if (this.f26593e == null) {
            return false;
        }
        int clientHeight = getClientHeight();
        int scrollY = getScrollY();
        return i9 < 0 ? scrollY > ((int) (((float) clientHeight) * this.f26604p)) : i9 > 0 && scrollY < ((int) (((float) clientHeight) * this.f26605q));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void y(int r12, float r13, int r14) {
        /*
            r11 = this;
            int r0 = r11.f26588a1
            r1 = 0
            if (r0 <= 0) goto L6e
            int r0 = r11.getScrollY()
            int r2 = r11.getPaddingTop()
            int r3 = r11.getPaddingBottom()
            int r4 = r11.getHeight()
            int r5 = r11.getChildCount()
            r6 = 0
        L1a:
            if (r6 >= r5) goto L6e
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            com.guochao.faceshow.views.GitVerticalViewPager$e r8 = (com.guochao.faceshow.views.GitVerticalViewPager.e) r8
            boolean r9 = r8.f26624a
            if (r9 != 0) goto L2b
            goto L6b
        L2b:
            int r8 = r8.f26625b
            r8 = r8 & 112(0x70, float:1.57E-43)
            r9 = 16
            if (r8 == r9) goto L50
            r9 = 48
            if (r8 == r9) goto L4a
            r9 = 80
            if (r8 == r9) goto L3d
            r8 = r2
            goto L5f
        L3d:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredHeight()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredHeight()
            int r3 = r3 + r9
            goto L5c
        L4a:
            int r8 = r7.getHeight()
            int r8 = r8 + r2
            goto L5f
        L50:
            int r8 = r7.getMeasuredHeight()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
        L5c:
            r10 = r8
            r8 = r2
            r2 = r10
        L5f:
            int r2 = r2 + r0
            int r9 = r7.getTop()
            int r2 = r2 - r9
            if (r2 == 0) goto L6a
            r7.offsetTopAndBottom(r2)
        L6a:
            r2 = r8
        L6b:
            int r6 = r6 + 1
            goto L1a
        L6e:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r0 = r11.V1
            if (r0 == 0) goto L75
            r0.onPageScrolled(r12, r13, r14)
        L75:
            androidx.viewpager.widget.ViewPager$OnPageChangeListener r0 = r11.f26589a2
            if (r0 == 0) goto L7c
            r0.onPageScrolled(r12, r13, r14)
        L7c:
            androidx.viewpager.widget.ViewPager$PageTransformer r12 = r11.B3
            if (r12 == 0) goto Lad
            int r12 = r11.getScrollY()
            int r13 = r11.getChildCount()
        L88:
            if (r1 >= r13) goto Lad
            android.view.View r14 = r11.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r14.getLayoutParams()
            com.guochao.faceshow.views.GitVerticalViewPager$e r0 = (com.guochao.faceshow.views.GitVerticalViewPager.e) r0
            boolean r0 = r0.f26624a
            if (r0 == 0) goto L99
            goto Laa
        L99:
            int r0 = r14.getTop()
            int r0 = r0 - r12
            float r0 = (float) r0
            int r2 = r11.getClientHeight()
            float r2 = (float) r2
            float r0 = r0 / r2
            androidx.viewpager.widget.ViewPager$PageTransformer r2 = r11.B3
            r2.transformPage(r14, r0)
        Laa:
            int r1 = r1 + 1
            goto L88
        Lad:
            r12 = 1
            r11.R = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.GitVerticalViewPager.y(int, float, int):void");
    }

    /* loaded from: classes4.dex */
    public static class e extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f26624a;

        /* renamed from: b  reason: collision with root package name */
        public int f26625b;

        /* renamed from: c  reason: collision with root package name */
        float f26626c;

        /* renamed from: d  reason: collision with root package name */
        boolean f26627d;

        /* renamed from: e  reason: collision with root package name */
        int f26628e;

        /* renamed from: f  reason: collision with root package name */
        int f26629f;

        public e() {
            super(-1, -1);
            this.f26626c = 0.0f;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f26626c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, GitVerticalViewPager.H4);
            this.f26625b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i9) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i9));
    }

    public GitVerticalViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26590b = new ArrayList<>();
        this.f26591c = new d();
        this.f26592d = new Rect();
        this.f26595g = -1;
        this.f26596h = null;
        this.f26597i = null;
        this.f26604p = -3.4028235E38f;
        this.f26605q = Float.MAX_VALUE;
        this.f26611w = 1;
        this.G = -1;
        this.P = true;
        this.Q = false;
        this.E4 = new c();
        this.F4 = 0;
        this.G4 = false;
        w();
    }
}
