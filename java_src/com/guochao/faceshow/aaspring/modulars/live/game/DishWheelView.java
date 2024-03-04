package com.guochao.faceshow.aaspring.modulars.live.game;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelItemHolder;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelWinDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.g;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.utils.ScreenTools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public class DishWheelView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public boolean f19381a;

    /* renamed from: b  reason: collision with root package name */
    private ObjectAnimator f19382b;

    /* renamed from: c  reason: collision with root package name */
    private List<JoinGameUser> f19383c;

    /* renamed from: d  reason: collision with root package name */
    private CopyOnWriteArrayList<JoinGameUser> f19384d;

    /* renamed from: e  reason: collision with root package name */
    private LiveRoomModel f19385e;

    /* renamed from: f  reason: collision with root package name */
    private int f19386f;

    /* renamed from: g  reason: collision with root package name */
    private DishWheelWinDialog f19387g;

    /* renamed from: h  reason: collision with root package name */
    private d9.g f19388h;

    /* renamed from: i  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.modulars.live.game.f f19389i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f19390j;

    /* renamed from: k  reason: collision with root package name */
    private Layout f19391k;

    /* renamed from: l  reason: collision with root package name */
    private final StringBuilder f19392l;

    /* renamed from: m  reason: collision with root package name */
    private Paint f19393m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f19394n;

    /* renamed from: o  reason: collision with root package name */
    private List<Integer> f19395o;

    /* renamed from: p  reason: collision with root package name */
    private Bitmap f19396p;

    /* renamed from: q  reason: collision with root package name */
    private float f19397q;

    /* renamed from: r  reason: collision with root package name */
    private float f19398r;

    /* renamed from: s  reason: collision with root package name */
    private List<g.h> f19399s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f19400t;

    /* renamed from: u  reason: collision with root package name */
    private f f19401u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DishWheelView dishWheelView = DishWheelView.this;
            dishWheelView.f19381a = false;
            dishWheelView.j();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements DishWheelWinDialog.b {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelWinDialog.b
        public void a() {
            if (DishWheelView.this.f19401u != null) {
                DishWheelView.this.f19401u.a();
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelWinDialog.b
        public void onDismiss() {
            DishWheelView.this.f19389i.G.setVisibility(0);
            DishWheelView.this.f19389i.f19479a.setVisibility(8);
            if (DishWheelView.this.f19389i.I != null) {
                DishWheelView.this.f19389i.I.setVisibility(8);
            }
            if (DishWheelView.this.f19401u != null) {
                DishWheelView.this.f19401u.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DishWheelView.this.f19400t = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DishWheelView.this.f19401u != null) {
                DishWheelView.this.f19401u.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements DishWheelItemHolder.a {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelItemHolder.a
        public void a(p7.h hVar) {
            if (DishWheelView.this.f19388h == null) {
                return;
            }
            LivePeopleInfoCardFragment.showPeopleInfo(((FragmentActivity) DishWheelView.this.getContext()).getSupportFragmentManager(), hVar.getCurrentUserId(), hVar.getUserName(), DishWheelView.this.f19388h);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelItemHolder.a
        public void b() {
            if (DishWheelView.this.f19401u != null) {
                DishWheelView.this.f19401u.e();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface f {
        void a();

        void b(int i9, JoinGameUser joinGameUser);

        void c(JoinGameUser joinGameUser, int i9, int i10);

        void d();

        void e();
    }

    public DishWheelView(Context context) {
        super(context);
        this.f19383c = new ArrayList();
        this.f19384d = new CopyOnWriteArrayList<>();
        this.f19390j = new Handler(Looper.getMainLooper());
        this.f19392l = new StringBuilder();
        this.f19393m = new Paint();
        this.f19394n = false;
        this.f19395o = new ArrayList();
        this.f19396p = null;
        f();
    }

    private void f() {
        this.f19393m.setAntiAlias(true);
        int size = this.f19383c.size() - this.f19384d.size();
        List<Integer> list = this.f19395o;
        int intValue = (list == null || list.isEmpty()) ? 0 : this.f19395o.get(size).intValue();
        float size2 = 360.0f / this.f19384d.size();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, Key.ROTATION, 0.0f, (((this.f19384d.size() - 1) - intValue) * size2) + 2160.0f + (size2 / 2.0f));
        this.f19382b = ofFloat;
        ofFloat.setInterpolator(new DecelerateInterpolator());
        this.f19382b.setDuration(5000L);
        this.f19382b.addListener(new a());
    }

    private void h(boolean z10) {
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        View view;
        View findViewById;
        switch (this.f19384d.size()) {
            case 2:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_02);
                break;
            case 3:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_03);
                break;
            case 4:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_04);
                break;
            case 5:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_05);
                break;
            case 6:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_06);
                break;
            case 7:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_07);
                break;
            case 8:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_08);
                break;
            case 9:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_09);
                break;
            case 10:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_10);
                break;
            default:
                bitmapDrawable = (BitmapDrawable) ContextCompat.getDrawable(getContext(), R.mipmap.bg_mini_game_01);
                break;
        }
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && getMeasuredWidth() > 0 && getMeasuredHeight() > 0) {
            int min = Math.min(Math.min(bitmap.getWidth(), getMeasuredWidth()), Math.min(bitmap.getHeight(), getMeasuredHeight()));
            int left = getLeft();
            int top = getTop();
            int right = getRight();
            if (((ViewGroup) getParent()).getBottom() < bitmap.getHeight()) {
                int right2 = ((ViewGroup) getParent()).getRight();
                int paddingLeft = ((ViewGroup) getParent()).getPaddingLeft();
                Matrix matrix = new Matrix();
                float f10 = min * 1.0f;
                float width = f10 / bitmap.getWidth();
                float height = f10 / bitmap.getHeight();
                matrix.setScale(width, height);
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                setTranslationX((((right2 - paddingLeft) - 85.0f) - bitmap.getWidth()) / 2.0f);
                com.guochao.faceshow.aaspring.modulars.live.game.f fVar = this.f19389i;
                if (fVar != null && (view = fVar.f19480b) != null && (findViewById = view.findViewById(R.id.layout_lose_result)) != null) {
                    findViewById.setScaleX(width);
                    findViewById.setScaleY(height);
                }
            }
            this.f19396p = bitmap;
            this.f19397q = getLeft() + ((int) (((right - left) - min) / 2.0f));
            this.f19398r = getTop() + ((int) (((getBottom() - top) - min) / 2.0f));
        }
        if (z10) {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        f fVar;
        if (this.f19383c == null) {
            return;
        }
        setRotation(0.0f);
        this.f19382b.pause();
        JoinGameUser joinGameUser = null;
        if (this.f19395o != null) {
            joinGameUser = this.f19383c.get(this.f19395o.get(this.f19383c.size() - this.f19384d.size()).intValue());
            int i9 = 0;
            while (true) {
                if (i9 >= this.f19384d.size()) {
                    break;
                } else if (this.f19384d.get(i9).getCurrentUserId().equals(joinGameUser.getCurrentUserId())) {
                    try {
                        this.f19384d.remove(i9);
                        break;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    i9++;
                }
            }
            int i10 = 0;
            while (true) {
                if (i10 >= getChildCount()) {
                    break;
                }
                View childAt = getChildAt(i10);
                if (joinGameUser.getCurrentUserId().equals(childAt.getTag())) {
                    removeView(childAt);
                    Iterator<g.h> it = this.f19399s.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        g.h next = it.next();
                        if (next.f19511b == childAt) {
                            this.f19399s.remove(next);
                            break;
                        }
                    }
                } else {
                    i10++;
                }
            }
        }
        h(true);
        k(this.f19383c, this.f19395o, false);
        if (!(getContext() instanceof FragmentActivity) || this.f19384d.size() <= 0 || (fVar = this.f19401u) == null) {
            return;
        }
        fVar.b(this.f19384d.size(), joinGameUser);
    }

    private void k(List<JoinGameUser> list, List<Integer> list2, boolean z10) {
        float f10;
        float childCount = 360.0f / getChildCount();
        float f11 = childCount / 2.0f;
        float f12 = getChildCount() == 1 ? 180.0f : f11;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (f12 > 360.0f) {
                    f12 -= 360.0f;
                } else if (f12 < 0.0f) {
                    f12 += 360.0f;
                }
                int size = list.size() - this.f19384d.size();
                if (!z10 || list2.isEmpty() || list2.size() <= size) {
                    f10 = 0.0f;
                } else {
                    int intValue = list2.get(size).intValue();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (list2.get(i10) != null && list2.get(i10).intValue() < list2.get(size).intValue()) {
                            intValue--;
                        }
                    }
                    f10 = (((this.f19384d.size() - 1) - intValue) * childCount) + f11 + childCount;
                }
                childAt.findViewById(R.id.image_wheel).setRotation(((z10 ? -f10 : 0.0f) - f12) + childCount);
                f12 += childCount;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m() {
        /*
            Method dump skipped, instructions count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.m():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Bitmap bitmap = this.f19396p;
        if (bitmap == null || bitmap.isRecycled()) {
            h(false);
        }
        Bitmap bitmap2 = this.f19396p;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            canvas.drawBitmap(this.f19396p, this.f19397q, this.f19398r, this.f19393m);
        }
        super.dispatchDraw(canvas);
        Layout layout = this.f19391k;
        if (layout != null) {
            float lineWidth = layout.getLineWidth(0);
            int height = this.f19391k.getHeight();
            canvas.save();
            canvas.translate((getMeasuredWidth() - lineWidth) / 2.0f, (getMeasuredHeight() - height) / 2.0f);
            this.f19391k.draw(canvas);
            canvas.restore();
        }
    }

    public boolean g() {
        return this.f19400t;
    }

    public void i() {
        this.f19381a = false;
        this.f19382b.cancel();
        this.f19383c.clear();
        this.f19384d.clear();
        this.f19395o.clear();
        this.f19387g = null;
        this.f19400t = false;
        this.f19390j.removeCallbacksAndMessages(null);
        removeAllViews();
        this.f19396p = null;
    }

    public void l(List<JoinGameUser> list, List<JoinGameUser> list2, List<Integer> list3, LiveRoomModel liveRoomModel, int i9) {
        com.guochao.faceshow.aaspring.modulars.live.game.f fVar;
        this.f19385e = liveRoomModel;
        this.f19386f = i9;
        Iterator<JoinGameUser> it = this.f19384d.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!"0".equals(it.next().getCurrentUserId())) {
                i10++;
            }
        }
        this.f19383c.clear();
        this.f19395o.clear();
        this.f19384d.clear();
        this.f19383c.addAll(list);
        this.f19395o.addAll(list3);
        this.f19384d.addAll(list2);
        h(true);
        removeAllViews();
        int i11 = 0;
        for (int i12 = 0; i12 < list2.size(); i12++) {
            DishWheelItemHolder dishWheelItemHolder = new DishWheelItemHolder(LayoutInflater.from(getContext()).inflate(R.layout.layout_item_dish_wheel, (ViewGroup) this, false));
            dishWheelItemHolder.c(list2.get(i12), this.f19399s);
            dishWheelItemHolder.setOnJoinListener(new e());
            addView(dishWheelItemHolder.f19377a);
            if (!"0".equals(list2.get(i12).getCurrentUserId())) {
                i11++;
            }
        }
        if (i10 != i11 && i11 > 1 && (fVar = this.f19389i) != null && !this.f19381a && fVar.k() != null) {
            this.f19389i.d();
        }
        k(list, list3, false);
    }

    public void n() {
        if (this.f19381a) {
            boolean z10 = getContext() instanceof BaseActivity;
            return;
        }
        this.f19381a = true;
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        DishWheelView dishWheelView = this;
        if (ScreenTools.getScreenWidth() != ((FragmentActivity) getContext()).getWindow().getDecorView().getWidth()) {
            return;
        }
        int i16 = i11 - i9;
        int i17 = i12 - i10;
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        float f10 = i16 / 2.0f;
        float f11 = f10 / 2.0f;
        int i18 = (int) f11;
        int i19 = (int) f10;
        float f12 = 360.0f;
        float childCount2 = 360.0f / getChildCount();
        float f13 = childCount2 / 2.0f;
        if (getChildCount() == 1) {
            f13 = 180.0f;
        }
        int i20 = 0;
        while (i20 < childCount) {
            View childAt = dishWheelView.getChildAt(i20);
            if (childAt.getVisibility() == 8) {
                i13 = i16;
                i14 = i17;
                i15 = childCount;
            } else {
                if (f13 > f12) {
                    f13 -= f12;
                } else if (f13 < 0.0f) {
                    f13 += f12;
                }
                double d10 = f11;
                float f14 = f13 - childCount2;
                i13 = i16;
                double d11 = f14;
                int round = Math.round((float) (((i16 / 2) - (i18 / 2)) + (Math.sin(Math.toRadians(d11)) * d10)));
                i14 = i17;
                i15 = childCount;
                int round2 = Math.round((float) (((i17 / 2) - (i19 / 2)) - (d10 * Math.cos(Math.toRadians(d11)))));
                childAt.setRotation(f14);
                childAt.layout(round, round2, round + i18, round2 + i19);
                f13 += childCount2;
            }
            i20++;
            dishWheelView = this;
            i17 = i14;
            i16 = i13;
            childCount = i15;
            f12 = 360.0f;
        }
        dishWheelView.h(false);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        int min = Math.min(View.MeasureSpec.getSize(i9), View.MeasureSpec.getSize(i10));
        setMeasuredDimension(min, min);
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            getChildAt(i11).measure(0, 0);
        }
    }

    public void setDishWheel(com.guochao.faceshow.aaspring.modulars.live.game.f fVar) {
        this.f19389i = fVar;
    }

    public void setListenerInfo(List<g.h> list) {
        this.f19399s = list;
    }

    public void setLiveRoomManager(d9.g gVar) {
        this.f19388h = gVar;
    }

    public void setOnLoseListener(f fVar) {
        this.f19401u = fVar;
    }

    public void setTotalUserAvatars(List<JoinGameUser> list) {
        this.f19383c.clear();
        this.f19383c.addAll(list);
    }

    public DishWheelView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19383c = new ArrayList();
        this.f19384d = new CopyOnWriteArrayList<>();
        this.f19390j = new Handler(Looper.getMainLooper());
        this.f19392l = new StringBuilder();
        this.f19393m = new Paint();
        this.f19394n = false;
        this.f19395o = new ArrayList();
        this.f19396p = null;
        f();
    }

    public DishWheelView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f19383c = new ArrayList();
        this.f19384d = new CopyOnWriteArrayList<>();
        this.f19390j = new Handler(Looper.getMainLooper());
        this.f19392l = new StringBuilder();
        this.f19393m = new Paint();
        this.f19394n = false;
        this.f19395o = new ArrayList();
        this.f19396p = null;
        f();
    }
}
