package cn.jpush.android.t;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.os.Vibrator;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import cn.jiguang.android.BuildConfig;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.x.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class b {

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    private static Point a(Context context, int i9, View view) {
        if (view != null) {
            view.measure(-2, -2);
            Logger.d("InAppAnimator", "animation getPoint, viewWidth: " + BuildConfig.VERSION_CODE + ", viewHeight: " + TypedValues.CycleType.TYPE_EASING + ", startPos: " + i9);
            if (i9 == 0) {
                return new Point(0, TypedValues.CycleType.TYPE_EASING);
            }
            if (i9 == 1) {
                return new Point(-290, 0);
            }
            if (i9 == 2) {
                return new Point(BuildConfig.VERSION_CODE, 0);
            }
            if (i9 == 3) {
                return new Point(0, -420);
            }
        }
        return new Point(0, -420);
    }

    public static void a(Context context, final View view, int i9, final long j10, final a aVar) {
        if (context == null || view == null) {
            return;
        }
        try {
            view.setAlpha(0.0f);
            Point a10 = a(context, i9, view);
            Logger.i("InAppAnimator", "[slideIntoView] start position, point: " + a10.toString() + ", showElapseTime: " + j10);
            view.animate().translationX((float) a10.x).translationY((float) a10.y).setDuration(10L).setListener(new AnimatorListenerAdapter() { // from class: cn.jpush.android.t.b.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    view.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(j10).setListener(null);
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            });
        } catch (Throwable th2) {
            Logger.w("InAppAnimator", "in-app message slideIntoView error. " + th2.getMessage());
        }
    }

    private static void a(Context context, View view, int i9, WindowManager windowManager) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = i9;
            Logger.d("InAppAnimator", "setViewGroupHeigthStart:" + layoutParams.height);
            view.setLayoutParams(layoutParams);
            windowManager.updateViewLayout(view, layoutParams);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(Context context, final View view, AnimatorListenerAdapter animatorListenerAdapter, List<List<a.b.C0051a>> list) {
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2;
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        int i9 = j.a(context).widthPixels;
        int i10 = 0;
        while (i10 < list.size()) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            ArrayList arrayList2 = new ArrayList();
            List<a.b.C0051a> list2 = list.get(i10);
            Logger.d("InAppAnimator", "inAnimatorVals.size():" + list2.size());
            int i11 = 0;
            while (i11 < list2.size()) {
                a.b.C0051a c0051a = list2.get(i11);
                String trim = c0051a.f3472a.trim();
                List<Float> list3 = c0051a.f3473b;
                int size = list3.size();
                float[] fArr = new float[size];
                List<a.b.C0051a> list4 = list2;
                for (int i12 = 0; i12 < list3.size(); i12++) {
                    fArr[i12] = list3.get(i12).floatValue();
                }
                if ("translationY".equals(trim) || "translationX".equals(trim) || "width".equals(trim) || "height".equals(trim)) {
                    int i13 = 0;
                    while (i13 < size) {
                        fArr[i13] = (fArr[i13] * i9) / 100.0f;
                        i13++;
                        size = size;
                    }
                }
                AnimatorSet animatorSet3 = animatorSet;
                ArrayList arrayList3 = arrayList;
                long j10 = c0051a.f3474c;
                StringBuilder sb2 = new StringBuilder();
                int i14 = i9;
                sb2.append("type:");
                sb2.append(trim);
                Logger.d("InAppAnimator", sb2.toString());
                Logger.d("InAppAnimator", "duration:" + j10);
                Logger.d("InAppAnimator", "valuesP:" + Arrays.toString(fArr));
                if ("width".equals(trim)) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
                    ofFloat.setDuration(j10);
                    animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: cn.jpush.android.t.b.5
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                            layoutParams.width = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            view.setLayoutParams(layoutParams);
                        }
                    };
                    objectAnimator2 = ofFloat;
                } else if ("height".equals(trim)) {
                    ValueAnimator ofFloat2 = ValueAnimator.ofFloat(fArr);
                    ofFloat2.setDuration(j10);
                    animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: cn.jpush.android.t.b.6
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                            layoutParams.height = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            view.setLayoutParams(layoutParams);
                        }
                    };
                    objectAnimator2 = ofFloat2;
                } else {
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, trim, fArr);
                    ofFloat3.setDuration(j10);
                    objectAnimator = ofFloat3;
                    arrayList2.add(objectAnimator);
                    i11++;
                    animatorSet = animatorSet3;
                    arrayList = arrayList3;
                    list2 = list4;
                    i9 = i14;
                }
                objectAnimator2.addUpdateListener(animatorUpdateListener);
                objectAnimator = objectAnimator2;
                arrayList2.add(objectAnimator);
                i11++;
                animatorSet = animatorSet3;
                arrayList = arrayList3;
                list2 = list4;
                i9 = i14;
            }
            ArrayList arrayList4 = arrayList;
            animatorSet2.playTogether(arrayList2);
            arrayList4.add(animatorSet2);
            i10++;
            arrayList = arrayList4;
            animatorSet = animatorSet;
        }
        AnimatorSet animatorSet4 = animatorSet;
        animatorSet4.addListener(animatorListenerAdapter);
        animatorSet4.playSequentially(arrayList);
        animatorSet4.start();
    }

    public static void a(final Context context, View view, final View view2, final a aVar, final WindowManager windowManager) {
        if (context == null || view == null) {
            return;
        }
        try {
            final boolean z10 = context.getResources().getConfiguration().orientation == 2;
            List<List<a.b.C0051a>> b10 = cn.jpush.android.w.a.b(context, z10);
            a(context, view2, cn.jpush.android.w.a.d(context, z10), windowManager);
            a(context, view, new AnimatorListenerAdapter() { // from class: cn.jpush.android.t.b.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    Logger.d("InAppAnimator", "slideOutOfViewNotification onAnimationEnd:");
                    a aVar2 = a.this;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                    b.b(context, view2, cn.jpush.android.w.a.f(context, z10), windowManager, true);
                }
            }, b10);
        } catch (Throwable th2) {
            Logger.w("InAppAnimator", "in-app message slideOutOfViewNotification error. " + th2.getMessage());
        }
    }

    public static void a(final Context context, View view, final View view2, final a aVar, final WindowManager windowManager, boolean z10) {
        try {
            Logger.d("InAppAnimator", "slideIntoViewNotification");
            if (context == null || view == null) {
                return;
            }
            boolean z11 = context.getResources().getConfiguration().orientation == 2;
            List<List<a.b.C0051a>> a10 = cn.jpush.android.w.a.a(context, z11);
            final boolean z12 = z11;
            AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: cn.jpush.android.t.b.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Logger.d("InAppAnimator", "slideIntoViewNotification onAnimationEnd:");
                    super.onAnimationEnd(animator);
                    a aVar2 = a.this;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                    b.b(context, view2, cn.jpush.android.w.a.e(context, z12), windowManager, false);
                }
            };
            a(context, view2, cn.jpush.android.w.a.c(context, z11), windowManager);
            a(context, view, animatorListenerAdapter, a10);
            List<Long> a11 = cn.jpush.android.w.a.a(context);
            if (z10) {
                a(context, a11);
            }
        } catch (Throwable th2) {
            Logger.w("InAppAnimator", "in-app message slideIntoViewNotification error. " + th2.getMessage());
        }
    }

    private static void a(Context context, List<Long> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        Vibrator vibrator = (Vibrator) context.getSystemService("vibrator");
        long[] jArr = new long[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            jArr[i9] = list.get(i9).longValue();
        }
        vibrator.vibrate(jArr, -1);
    }

    public static void b(Context context, View view, int i9, long j10, final a aVar) {
        if (context == null || view == null) {
            return;
        }
        try {
            Point a10 = a(context, i9, view);
            view.animate().translationX(a10.x).translationY(a10.y).setDuration(j10).setListener(new AnimatorListenerAdapter() { // from class: cn.jpush.android.t.b.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    a aVar2 = a.this;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            });
        } catch (Throwable th2) {
            Logger.w("InAppAnimator", "in-app message slideOutOfView error. " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, View view, int i9, WindowManager windowManager, boolean z10) {
        if (view == null || z10) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i9;
        Logger.d("InAppAnimator", "setViewGroupHeigthLast:" + layoutParams.height);
        view.setLayoutParams(layoutParams);
        windowManager.updateViewLayout(view, layoutParams);
    }
}
