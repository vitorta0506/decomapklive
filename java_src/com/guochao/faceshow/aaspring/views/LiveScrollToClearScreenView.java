package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveScrollToClearScreenView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    Scroller f23815a;

    /* renamed from: b  reason: collision with root package name */
    int f23816b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f23817c;

    /* renamed from: d  reason: collision with root package name */
    int f23818d;

    /* renamed from: e  reason: collision with root package name */
    int f23819e;

    /* renamed from: f  reason: collision with root package name */
    boolean f23820f;

    /* renamed from: g  reason: collision with root package name */
    private c f23821g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23822h;

    /* renamed from: i  reason: collision with root package name */
    private final List<View> f23823i;

    /* renamed from: j  reason: collision with root package name */
    boolean f23824j;

    /* renamed from: k  reason: collision with root package name */
    private b f23825k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23826l;

    /* renamed from: m  reason: collision with root package name */
    private List<a> f23827m;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        View f23828a;

        /* renamed from: b  reason: collision with root package name */
        View.OnClickListener f23829b;

        a(View view, View.OnClickListener onClickListener) {
            this.f23828a = view;
            this.f23829b = onClickListener;
        }

        public View a() {
            return this.f23828a;
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void l0(LiveScrollToClearScreenView liveScrollToClearScreenView);

        void r0(LiveScrollToClearScreenView liveScrollToClearScreenView);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a(MotionEvent motionEvent);

        void b(MotionEvent motionEvent);
    }

    public LiveScrollToClearScreenView(@NonNull Context context) {
        super(context);
        this.f23817c = false;
        this.f23820f = false;
        this.f23823i = new ArrayList();
        this.f23824j = true;
        c();
    }

    private void a() {
        if (getContext() instanceof BaseLiveActivity) {
            BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getContext();
            if (baseLiveActivity.k0()) {
                SoftKeyBoardUtils.closeSoftKeyBoardV2(baseLiveActivity, this);
            }
        }
    }

    private void c() {
        this.f23815a = new Scroller(getContext());
        this.f23816b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        setWillNotDraw(false);
    }

    private void k(int i9, int i10, int i11, int i12, int i13) {
        this.f23815a.startScroll(i9, i10, i11, i12, i13);
        postInvalidateOnAnimation();
    }

    private a l(float f10, float f11) {
        if (this.f23827m != null) {
            for (int i9 = 0; i9 < this.f23827m.size(); i9++) {
                a aVar = this.f23827m.get(i9);
                int[] iArr = new int[2];
                View view = aVar.f23828a;
                view.getLocationInWindow(iArr);
                int width = iArr[0] + view.getWidth();
                int height = iArr[1] + view.getHeight();
                if (iArr[0] < f10 && width > f10 && iArr[1] < f11 && height > f11) {
                    return aVar;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r0 != 3) goto L66;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean b(android.view.MotionEvent r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView.b(android.view.MotionEvent, boolean):java.lang.Boolean");
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f23815a.computeScrollOffset()) {
            scrollTo(this.f23815a.getCurrX(), this.f23815a.getCurrY());
            for (int i9 = 0; i9 < this.f23823i.size(); i9++) {
                this.f23823i.get(i9).setTranslationX(-this.f23815a.getCurrX());
            }
            invalidate();
        }
    }

    public void d(View view) {
        if (this.f23823i.contains(view)) {
            return;
        }
        this.f23823i.add(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f23824j) {
            return super.dispatchTouchEvent(motionEvent) || this.f23826l;
        }
        Boolean b10 = b(motionEvent, true);
        if (b10 != null) {
            return b10.booleanValue();
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void e(View view) {
        List<a> list = this.f23827m;
        if (list == null) {
            return;
        }
        Iterator<a> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().f23828a == view) {
                it.remove();
                return;
            }
        }
    }

    public void f() {
        scrollTo(0, 0);
        for (int i9 = 0; i9 < this.f23823i.size(); i9++) {
            this.f23823i.get(i9).setTranslationX(0.0f);
        }
        this.f23817c = false;
    }

    public void g() {
        int i9 = getLayoutDirection() == 1 ? getResources().getDisplayMetrics().widthPixels : -getResources().getDisplayMetrics().widthPixels;
        scrollTo(i9, 0);
        for (int i10 = 0; i10 < this.f23823i.size(); i10++) {
            this.f23823i.get(i10).setTranslationX(i9);
        }
        this.f23817c = true;
        a();
    }

    public List<a> getClickInfos() {
        return this.f23827m;
    }

    public b getOnSwipeListener() {
        return this.f23825k;
    }

    public c getOnTouchDownListener() {
        return this.f23821g;
    }

    public void h() {
        if (getLayoutDirection() == 1) {
            int width = getWidth();
            if (getScrollX() == width + 0) {
                return;
            }
            k(0, 0, width, 0, 1000);
            if (getContext() instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) getContext()).f18073j = false;
            }
            b bVar = this.f23825k;
            if (bVar != null) {
                bVar.l0(this);
                a();
                return;
            }
            return;
        }
        int i9 = -getWidth();
        int width2 = getWidth();
        if (getScrollX() == i9 + width2) {
            return;
        }
        k(i9, 0, width2, 0, 1000);
        if (getContext() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getContext()).f18073j = true;
        }
        b bVar2 = this.f23825k;
        if (bVar2 != null) {
            bVar2.r0(this);
        }
    }

    public void i() {
        if (getLayoutDirection() == 1) {
            int width = getWidth();
            int i9 = -getWidth();
            if (getScrollX() == width + i9) {
                return;
            }
            k(width, 0, i9, 0, 1000);
            if (getContext() instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) getContext()).f18073j = true;
            }
            b bVar = this.f23825k;
            if (bVar != null) {
                bVar.r0(this);
                return;
            }
            return;
        }
        int i10 = -getWidth();
        if (getScrollX() == i10 + 0) {
            return;
        }
        k(0, 0, i10, 0, 1000);
        if (getContext() instanceof WatchLiveRoomActivity) {
            ((WatchLiveRoomActivity) getContext()).f18073j = false;
        }
        b bVar2 = this.f23825k;
        if (bVar2 != null) {
            bVar2.l0(this);
            a();
        }
    }

    public void j(View view, View.OnClickListener onClickListener) {
        if (this.f23827m == null) {
            this.f23827m = new ArrayList();
        }
        this.f23827m.add(new a(view, onClickListener));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        c cVar;
        if (motionEvent.getAction() == 0 && (cVar = this.f23821g) != null) {
            cVar.b(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        this.f23822h = z10;
        super.requestDisallowInterceptTouchEvent(z10);
    }

    public void setIsVoiceRoom(boolean z10) {
        this.f23826l = z10;
    }

    public void setOnSwipeListener(b bVar) {
        this.f23825k = bVar;
    }

    public void setOnTouchDownListener(c cVar) {
        this.f23821g = cVar;
    }

    public void setTouchEnabled(boolean z10) {
        this.f23824j = z10;
    }

    public LiveScrollToClearScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23817c = false;
        this.f23820f = false;
        this.f23823i = new ArrayList();
        this.f23824j = true;
        c();
    }

    public LiveScrollToClearScreenView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23817c = false;
        this.f23820f = false;
        this.f23823i = new ArrayList();
        this.f23824j = true;
        c();
    }
}
