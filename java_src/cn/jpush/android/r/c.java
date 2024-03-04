package cn.jpush.android.r;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class c implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f3196a;

    /* renamed from: b  reason: collision with root package name */
    private int f3197b;

    /* renamed from: c  reason: collision with root package name */
    private int f3198c;

    /* renamed from: d  reason: collision with root package name */
    private long f3199d;

    /* renamed from: e  reason: collision with root package name */
    private View f3200e;

    /* renamed from: f  reason: collision with root package name */
    private a f3201f;

    /* renamed from: g  reason: collision with root package name */
    private int f3202g = 1;

    /* renamed from: h  reason: collision with root package name */
    private int f3203h = 1;

    /* renamed from: i  reason: collision with root package name */
    private float f3204i;

    /* renamed from: j  reason: collision with root package name */
    private float f3205j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f3206k;

    /* renamed from: l  reason: collision with root package name */
    private int f3207l;

    /* renamed from: m  reason: collision with root package name */
    private Object f3208m;

    /* renamed from: n  reason: collision with root package name */
    private VelocityTracker f3209n;

    /* renamed from: o  reason: collision with root package name */
    private float f3210o;

    /* renamed from: p  reason: collision with root package name */
    private float f3211p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f3212q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f3213r;

    /* loaded from: classes.dex */
    public interface a {
        void a(View view, Object obj);

        boolean a(Object obj);
    }

    public c(cn.jpush.android.s.c cVar, Object obj, a aVar) {
        this.f3212q = false;
        this.f3213r = true;
        View d10 = cVar.d();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(d10.getContext());
        this.f3196a = viewConfiguration.getScaledTouchSlop();
        this.f3197b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f3198c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f3199d = 1000L;
        this.f3200e = d10;
        this.f3208m = obj;
        this.f3201f = aVar;
        this.f3212q = false;
        this.f3213r = cVar.f().c() == 80;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[InAppSwipeDismissTouchListener] in-app show at top: ");
        sb2.append(!this.f3213r);
        sb2.append(", dismiss top_bottom: ");
        sb2.append(!this.f3212q);
        Logger.d("InAppSwipeDismissTouchListener", sb2.toString());
    }

    private void a(float f10, float f11, AnimatorListenerAdapter animatorListenerAdapter) {
        try {
            final float a10 = this.f3212q ? a() : b();
            final float f12 = f10 - a10;
            final float alpha = this.f3200e.getAlpha();
            final float f13 = f11 - alpha;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            if (ofFloat != null) {
                ofFloat.setDuration(this.f3199d);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.jpush.android.r.c.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float animatedFraction = a10 + (valueAnimator.getAnimatedFraction() * f12);
                        float animatedFraction2 = alpha + (valueAnimator.getAnimatedFraction() * f13);
                        if (c.this.f3212q) {
                            c.this.a(animatedFraction);
                        } else {
                            c.this.b(animatedFraction);
                        }
                        c.this.c(animatedFraction2);
                    }
                });
                if (animatorListenerAdapter != null) {
                    ofFloat.addListener(animatorListenerAdapter);
                }
                ofFloat.start();
            }
        } catch (Throwable th2) {
            Logger.w("InAppSwipeDismissTouchListener", "[animateTo] failed" + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            View view = this.f3200e;
            if (view != null) {
                final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                final int height = this.f3200e.getHeight();
                final int width = this.f3200e.getWidth();
                int[] iArr = new int[2];
                iArr[0] = this.f3212q ? height : width;
                iArr[1] = 1;
                ValueAnimator duration = ValueAnimator.ofInt(iArr).setDuration(this.f3199d);
                duration.addListener(new AnimatorListenerAdapter() { // from class: cn.jpush.android.r.c.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        Logger.d("InAppSwipeDismissTouchListener", "[onAnimationEnd] ...");
                        if (c.this.f3201f != null) {
                            c.this.f3201f.a(c.this.f3200e, c.this.f3208m);
                        }
                        c.this.f3200e.setAlpha(1.0f);
                        if (c.this.f3212q) {
                            c.this.f3200e.setTranslationX(0.0f);
                            layoutParams.height = height;
                        } else {
                            c.this.f3200e.setTranslationY(0.0f);
                            layoutParams.width = width;
                        }
                        c.this.f3200e.setLayoutParams(layoutParams);
                    }
                });
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.jpush.android.r.c.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        if (c.this.f3212q) {
                            layoutParams.height = intValue;
                        } else {
                            layoutParams.width = intValue;
                        }
                        c.this.f3200e.setLayoutParams(layoutParams);
                    }
                });
                duration.start();
            }
        } catch (Throwable th2) {
            Logger.w("InAppSwipeDismissTouchListener", "[performDismiss] failed." + th2.getMessage());
        }
    }

    protected float a() {
        return this.f3200e.getTranslationX();
    }

    protected void a(float f10) {
        this.f3200e.setTranslationX(f10);
    }

    protected void a(boolean z10) {
        int i9 = this.f3203h;
        if (z10) {
            i9 = -i9;
        }
        Logger.d("InAppSwipeDismissTouchListener", "[startDismissAnimationY] dismissTop: " + z10);
        a((float) i9, 0.0f, new AnimatorListenerAdapter() { // from class: cn.jpush.android.r.c.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                c.this.d();
            }
        });
    }

    protected float b() {
        return this.f3200e.getTranslationY();
    }

    protected void b(float f10) {
        this.f3200e.setTranslationY(f10);
    }

    protected void b(boolean z10) {
        a(z10 ? this.f3202g : -this.f3202g, 0.0f, new AnimatorListenerAdapter() { // from class: cn.jpush.android.r.c.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                c.this.d();
            }
        });
    }

    protected void c() {
        a(0.0f, 1.0f, null);
    }

    protected void c(float f10) {
        this.f3200e.setAlpha(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011a A[Catch: all -> 0x038f, TryCatch #0 {all -> 0x038f, blocks: (B:3:0x0007, B:5:0x000d, B:7:0x0016, B:11:0x0030, B:20:0x0043, B:23:0x0049, B:24:0x0056, B:25:0x005a, B:28:0x0060, B:30:0x0077, B:32:0x0082, B:34:0x008f, B:36:0x0095, B:38:0x009b, B:39:0x00b9, B:37:0x0098, B:59:0x0116, B:61:0x011a, B:63:0x0120, B:64:0x013e, B:65:0x0142, B:40:0x00bd, B:42:0x00c8, B:46:0x00d7, B:49:0x00dd, B:51:0x00e1, B:54:0x00ed, B:56:0x00f1, B:58:0x00f7, B:57:0x00f4, B:67:0x0162, B:70:0x0168, B:73:0x01f6, B:75:0x0201, B:106:0x0248, B:131:0x031c, B:133:0x0320, B:138:0x032f, B:140:0x0333, B:141:0x0336, B:134:0x0324, B:135:0x0328, B:137:0x032c, B:82:0x020f, B:84:0x0216, B:88:0x0221, B:101:0x0238, B:107:0x0294, B:109:0x029f, B:129:0x02d1, B:116:0x02ad, B:118:0x02b4, B:122:0x02bf, B:124:0x02c3, B:142:0x0344, B:144:0x037c, B:146:0x0384, B:8:0x001f, B:10:0x0028), top: B:153:0x0007 }] */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r17, android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.r.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
