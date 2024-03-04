package com.guochao.faceshow.gift.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.constraintlayout.motion.widget.Key;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.databinding.ViewGiftComboBinding;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.utils.DensityUtil;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0002SV\u0018\u0000 f2\u00020\u00012\u00020\u0002:\u0004gfhiB\u001d\b\u0007\u0012\u0006\u0010a\u001a\u00020`\u0012\n\b\u0002\u0010c\u001a\u0004\u0018\u00010b¢\u0006\u0004\bd\u0010eJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\bH\u0002J&\u0010\u0011\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\bH\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0006\u0010\u0019\u001a\u00020\u0003J\u0010\u0010\u001c\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ$\u0010\u001e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\b2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\b\u0010 \u001a\u0004\u0018\u00010\u001fR\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u0004\u0018\u00010$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R$\u0010)\u001a\u0012\u0012\u0004\u0012\u00020\b0'j\b\u0012\u0004\u0012\u00020\b`(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\"\u0010.\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082D¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00107\u001a\u0002048\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u00106R\u0014\u00108\u001a\u0002048\u0002X\u0082D¢\u0006\u0006\n\u0004\b8\u00106R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010;R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010?R\"\u0010A\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010-\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010/\u001a\u0004\bE\u00101\"\u0004\bF\u00103R2\u0010K\u001a\u001e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I0Gj\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020I`J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010M\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010OR\u0014\u0010Q\u001a\u00020P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0014\u0010T\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010W\u001a\u00020V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010XR\u0014\u0010Z\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010[R\u0014\u0010]\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010[R\u0016\u0010^\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010-R\u0014\u0010_\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010[¨\u0006j"}, d2 = {"Lcom/guochao/faceshow/gift/view/GiftComboView;", "Landroid/widget/RelativeLayout;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "", "play", "", "duration", "finish", "", "num", "setNum", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "mCurrentGiftItemData", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;", "users", "setCurrentKey", "putMap", "getCont", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "addLifecycleObserver", "owner", "onDestroy", "reset", "Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;", "listener", "setComboListener", com.huawei.hms.opendevice.c.f27627a, "show", "", "getComboLocation", "Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;", "binding", "Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;", "Landroid/os/Vibrator;", "vibratorManager", "Landroid/os/Vibrator;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "numList", "Ljava/util/ArrayList;", "", "isAccept", "Z", "currentComboId", "I", "getCurrentComboId", "()I", "setCurrentComboId", "(I)V", "", "top", "F", "bottom", "half", "Landroid/animation/AnimatorSet;", "animatorSet", "Landroid/animation/AnimatorSet;", "perfectAnimatorSet", "Landroid/animation/ObjectAnimator;", "numYAnimator", "Landroid/animation/ObjectAnimator;", "anim", "isTouch", "()Z", "setTouch", "(Z)V", "getCount", "setCount", "Ljava/util/HashMap;", "", "Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;", "Lkotlin/collections/HashMap;", "countMap", "Ljava/util/HashMap;", "mCurrentKey", "Ljava/lang/String;", "Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;", "Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;", "handler", "Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;", "com/guochao/faceshow/gift/view/GiftComboView$runnable$1", "runnable", "Lcom/guochao/faceshow/gift/view/GiftComboView$runnable$1;", "com/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1", "shakeRunnable", "Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;", "Ljava/lang/Runnable;", "reSetRunnable", "Ljava/lang/Runnable;", "realTimeOut", "finishRunnable", "isBallRunning", "ballRunnable", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Companion", "ComboViewListener", "TimeCount", "UIHandler", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public final class GiftComboView extends RelativeLayout implements DefaultLifecycleObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final long DURATION_CACHE = 5100;
    private static final long DURATION_COMBO_CHANGE = 250;
    private static final long DURATION_DISMISS = 5000;
    @NotNull
    private final ObjectAnimator anim;
    @NotNull
    private final AnimatorSet animatorSet;
    @NotNull
    private final Runnable ballRunnable;
    @NotNull
    private final ViewGiftComboBinding binding;
    private final float bottom;
    private int count;
    @NotNull
    private HashMap<String, TimeCount> countMap;
    private int currentComboId;
    @NotNull
    private final Runnable finishRunnable;
    private final float half;
    @NotNull
    private final UIHandler handler;
    private boolean isAccept;
    private boolean isBallRunning;
    private boolean isTouch;
    @Nullable
    private ComboViewListener listener;
    @NotNull
    private String mCurrentKey;
    @NotNull
    private final ArrayList<Integer> numList;
    private ObjectAnimator numYAnimator;
    @NotNull
    private final AnimatorSet perfectAnimatorSet;
    @NotNull
    private final Runnable reSetRunnable;
    @NotNull
    private final Runnable realTimeOut;
    @NotNull
    private final GiftComboView$runnable$1 runnable;
    @NotNull
    private final GiftComboView$shakeRunnable$1 shakeRunnable;
    private final float top;
    @Nullable
    private final Vibrator vibratorManager;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/gift/view/GiftComboView$ComboViewListener;", "", "onCombo", "", ViewHierarchyConstants.VIEW_KEY, "Lcom/guochao/faceshow/gift/view/GiftComboView;", "combo", "", "onComboTimeout", "onComboTimeout2", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ComboViewListener {

        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class DefaultImpls {
            @Deprecated
            public static void onComboTimeout2(@NotNull ComboViewListener comboViewListener, @NotNull GiftComboView view) {
                Intrinsics.checkNotNullParameter(view, "view");
                h.a(comboViewListener, view);
            }
        }

        void onCombo(@NotNull GiftComboView giftComboView, int i9);

        @Deprecated(message = "点击其他的按钮导致被重置的时候也会触发这个方法，不准确")
        void onComboTimeout(@NotNull GiftComboView giftComboView);

        void onComboTimeout2(@NotNull GiftComboView giftComboView);
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/gift/view/GiftComboView$Companion;", "", "()V", "DURATION_CACHE", "", "DURATION_COMBO_CHANGE", "DURATION_DISMISS", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/gift/view/GiftComboView$TimeCount;", "", CrashHianalyticsData.TIME, "", AnimatedPasterJsonConfig.CONFIG_COUNT, "", "(JI)V", "getCount", "()I", "setCount", "(I)V", "getTime", "()J", "setTime", "(J)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class TimeCount {
        private int count;
        private long time;

        public TimeCount(long j10, int i9) {
            this.time = j10;
            this.count = i9;
        }

        public static /* synthetic */ TimeCount copy$default(TimeCount timeCount, long j10, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = timeCount.time;
            }
            if ((i10 & 2) != 0) {
                i9 = timeCount.count;
            }
            return timeCount.copy(j10, i9);
        }

        public final long component1() {
            return this.time;
        }

        public final int component2() {
            return this.count;
        }

        @NotNull
        public final TimeCount copy(long j10, int i9) {
            return new TimeCount(j10, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TimeCount) {
                TimeCount timeCount = (TimeCount) obj;
                return this.time == timeCount.time && this.count == timeCount.count;
            }
            return false;
        }

        public final int getCount() {
            return this.count;
        }

        public final long getTime() {
            return this.time;
        }

        public int hashCode() {
            return (b7.b.a(this.time) * 31) + this.count;
        }

        public final void setCount(int i9) {
            this.count = i9;
        }

        public final void setTime(long j10) {
            this.time = j10;
        }

        @NotNull
        public String toString() {
            return "TimeCount(time=" + this.time + ", count=" + this.count + ')';
        }

        public /* synthetic */ TimeCount(long j10, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10, (i10 & 2) != 0 ? 1 : i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;", "Landroid/os/Handler;", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class UIHandler extends Handler {
        public UIHandler() {
            super(Looper.getMainLooper());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GiftComboView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ GiftComboView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-6  reason: not valid java name */
    public static final boolean m675_init_$lambda6(final GiftComboView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isAccept) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this$0.handler.removeCallbacks(this$0.finishRunnable);
                this$0.handler.removeCallbacks(this$0.ballRunnable);
                this$0.handler.removeCallbacks(this$0.realTimeOut);
                this$0.play();
                this$0.isTouch = true;
                ViewGiftComboBinding viewGiftComboBinding = this$0.binding;
                ObjectAnimator duration = ObjectAnimator.ofFloat(viewGiftComboBinding.roadIV, "y", viewGiftComboBinding.numTV.getY()).setDuration(50L);
                Intrinsics.checkNotNullExpressionValue(duration, "ofFloat(binding.roadIV, …         .setDuration(50)");
                duration.start();
                this$0.binding.roadIV.postDelayed(new Runnable() { // from class: com.guochao.faceshow.gift.view.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        GiftComboView.m678lambda6$lambda5(GiftComboView.this);
                    }
                }, 101L);
            } else if (action != 1) {
                return false;
            } else {
                this$0.isTouch = false;
                finish$default(this$0, 0L, 1, null);
                this$0.handler.removeCallbacks(this$0.realTimeOut);
                this$0.handler.postDelayed(this$0.realTimeOut, 5000L);
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ballRunnable$lambda-4  reason: not valid java name */
    public static final void m676ballRunnable$lambda4(GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isBallRunning = false;
        this$0.binding.ballView.clearPlay();
    }

    private final void finish(long j10) {
        this.handler.removeCallbacks(this.runnable);
        this.anim.setDuration(j10);
        this.anim.start();
        this.handler.removeCallbacks(this.shakeRunnable);
        this.handler.removeCallbacks(this.reSetRunnable);
        this.handler.postDelayed(this.reSetRunnable, j10);
        this.handler.postDelayed(this.finishRunnable, 264L);
        this.handler.postDelayed(this.ballRunnable, 500L);
    }

    static /* synthetic */ void finish$default(GiftComboView giftComboView, long j10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            j10 = 5000;
        }
        giftComboView.finish(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finishRunnable$lambda-3  reason: not valid java name */
    public static final void m677finishRunnable$lambda3(GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.animatorSet.end();
        this$0.binding.rippleView1.setVisibility(4);
        this$0.binding.rippleView2.setVisibility(4);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this$0.binding.roadIV, "alpha", 0.0f).setDuration(100L);
        Intrinsics.checkNotNullExpressionValue(duration, "ofFloat(binding.roadIV, …ha\", 0f).setDuration(100)");
        duration.start();
        ObjectAnimator objectAnimator = this$0.numYAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (objectAnimator == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
            objectAnimator = null;
        }
        objectAnimator.end();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this$0.binding.numTV, "translationY", DensityUtil.dp2px(this$0.bottom));
        Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(\n               …ttom).toFloat()\n        )");
        this$0.numYAnimator = ofFloat;
        if (ofFloat == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
            ofFloat = null;
        }
        ofFloat.setDuration(2500L);
        ObjectAnimator objectAnimator3 = this$0.numYAnimator;
        if (objectAnimator3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
        } else {
            objectAnimator2 = objectAnimator3;
        }
        objectAnimator2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getCont() {
        TimeCount timeCount;
        if (!this.countMap.containsKey(this.mCurrentKey) || (timeCount = this.countMap.get(this.mCurrentKey)) == null) {
            return 0;
        }
        if (System.currentTimeMillis() - timeCount.getTime() > DURATION_CACHE) {
            this.countMap.remove(this.mCurrentKey);
            return 0;
        }
        return timeCount.getCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lambda-6$lambda-5  reason: not valid java name */
    public static final void m678lambda6$lambda5(GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.binding.roadIV.setVisibility(0);
    }

    private final void play() {
        putMap();
        setNum(getCont());
        this.binding.rippleView1.setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.binding.rippleView1, "scaleX", 1.0f, 1.2f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.binding.rippleView1, "scaleY", 1.0f, 1.2f);
        ofFloat.setDuration(264L);
        ofFloat2.setDuration(264L);
        ofFloat.setRepeatCount(-1);
        ofFloat2.setRepeatCount(-1);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.binding.rippleView1, "alpha", 1.0f, 0.5f).setDuration(264L);
        Intrinsics.checkNotNullExpressionValue(duration, "ofFloat(binding.rippleVi…f, 0.5f).setDuration(264)");
        duration.setDuration(264L);
        duration.setRepeatCount(-1);
        this.binding.rippleView2.setVisibility(0);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.binding.rippleView2, "scaleX", 1.0f, 1.2f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.binding.rippleView2, "scaleY", 1.0f, 1.2f);
        ofFloat3.setDuration(264L);
        ofFloat4.setDuration(264L);
        ofFloat3.setRepeatCount(-1);
        ofFloat4.setRepeatCount(-1);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.binding.rippleView2, "alpha", 0.5f, 0.0f).setDuration(264L);
        Intrinsics.checkNotNullExpressionValue(duration2, "ofFloat(binding.rippleVi….5f, 0f).setDuration(264)");
        duration2.setDuration(264L);
        duration2.setRepeatCount(-1);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.binding.scaleView, "scaleX", 1.0f, 1.08f, 1.0f).setDuration(264L);
        Intrinsics.checkNotNullExpressionValue(duration3, "ofFloat(binding.scaleVie…        .setDuration(264)");
        duration3.setRepeatCount(-1);
        duration3.setRepeatMode(1);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.binding.scaleView, "scaleY", 1.0f, 1.08f, 1.0f).setDuration(264L);
        Intrinsics.checkNotNullExpressionValue(duration4, "ofFloat(binding.scaleVie…        .setDuration(264)");
        duration4.setRepeatCount(-1);
        duration4.setRepeatMode(1);
        ObjectAnimator objectAnimator = null;
        if (this.perfectAnimatorSet.isRunning()) {
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.binding.numTV, "translationY", DensityUtil.dp2px(this.half));
            Intrinsics.checkNotNullExpressionValue(ofFloat5, "ofFloat(\n               …).toFloat()\n            )");
            this.numYAnimator = ofFloat5;
            if (ofFloat5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                ofFloat5 = null;
            }
            ofFloat5.setDuration(200L);
        } else {
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.binding.numTV, "translationY", DensityUtil.dp2px(this.top));
            Intrinsics.checkNotNullExpressionValue(ofFloat6, "ofFloat(\n               …).toFloat()\n            )");
            this.numYAnimator = ofFloat6;
            if (ofFloat6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                ofFloat6 = null;
            }
            ofFloat6.setDuration(500L);
        }
        this.animatorSet.playTogether(duration3, duration4, ofFloat2, ofFloat, duration, ofFloat4, ofFloat3, duration2);
        if (!this.animatorSet.isRunning()) {
            this.animatorSet.start();
        }
        ObjectAnimator objectAnimator2 = this.numYAnimator;
        if (objectAnimator2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
        } else {
            objectAnimator = objectAnimator2;
        }
        objectAnimator.start();
        this.handler.postDelayed(this.runnable, 250L);
        this.handler.postDelayed(this.shakeRunnable, 500L);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.binding.roadIV, "alpha", 1.0f).setDuration(100L);
        Intrinsics.checkNotNullExpressionValue(duration5, "ofFloat(binding.roadIV, …ha\", 1f).setDuration(100)");
        duration5.start();
        this.handler.removeCallbacks(this.reSetRunnable);
        this.anim.end();
        if (this.isBallRunning) {
            return;
        }
        this.binding.ballView.playRaw(R.raw.gift_point);
        this.isBallRunning = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void putMap() {
        if (this.countMap.containsKey(this.mCurrentKey)) {
            TimeCount timeCount = this.countMap.get(this.mCurrentKey);
            if (timeCount != null) {
                if (System.currentTimeMillis() - timeCount.getTime() > DURATION_CACHE) {
                    this.countMap.put(this.mCurrentKey, new TimeCount(System.currentTimeMillis(), 1));
                    return;
                }
                timeCount.setCount(timeCount.getCount() + 1);
                timeCount.setTime(System.currentTimeMillis());
                return;
            }
            return;
        }
        this.countMap.put(this.mCurrentKey, new TimeCount(System.currentTimeMillis(), 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reSetRunnable$lambda-1  reason: not valid java name */
    public static final void m679reSetRunnable$lambda1(final GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAccept = false;
        this$0.binding.numTV.setVisibility(4);
        this$0.binding.bottomRL.animate().translationY(DensityUtil.dp2px(-10.0f)).setDuration(165L).scaleX(0.0f).scaleY(0.0f);
        this$0.binding.bottomRL.postDelayed(new Runnable() { // from class: com.guochao.faceshow.gift.view.e
            @Override // java.lang.Runnable
            public final void run() {
                GiftComboView.m680reSetRunnable$lambda1$lambda0(GiftComboView.this);
            }
        }, 164L);
        ComboViewListener comboViewListener = this$0.listener;
        if (comboViewListener != null) {
            comboViewListener.onComboTimeout(this$0);
        }
        this$0.currentComboId++;
        GiftSender.INSTANCE.setEndCombo(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reSetRunnable$lambda-1$lambda-0  reason: not valid java name */
    public static final void m680reSetRunnable$lambda1$lambda0(GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.isAccept = true;
        this$0.setVisibility(8);
        this$0.binding.bottomRL.animate().translationY(DensityUtil.dp2px(0.0f)).setDuration(1L).scaleX(1.0f).scaleY(1.0f);
        this$0.binding.numTV.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: realTimeOut$lambda-2  reason: not valid java name */
    public static final void m681realTimeOut$lambda2(GiftComboView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ComboViewListener comboViewListener = this$0.listener;
        if (comboViewListener != null) {
            comboViewListener.onComboTimeout2(this$0);
        }
    }

    private final void setCurrentKey(ResourceListItemBean resourceListItemBean, int i9, List<? extends GiftFragment.r> list) {
        Iterator<T> it;
        String str = "";
        while (list.iterator().hasNext()) {
            str = str + ((GiftFragment.r) it.next()).f17819a;
        }
        this.mCurrentKey = resourceListItemBean.getId() + '_' + i9 + '_' + str;
        String simpleName = GiftComboView.class.getSimpleName();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mCurrentKey:");
        sb2.append(this.mCurrentKey);
        LogUtils.i(simpleName, sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setNum(int i9) {
        ComboViewListener comboViewListener;
        if (i9 < 1) {
            return;
        }
        if (i9 == 10) {
            this.binding.numTV.setVisibility(4);
        } else {
            this.binding.numTV.setVisibility(0);
        }
        String valueOf = String.valueOf(i9);
        this.binding.numTV.removeAllViews();
        for (int i10 = 0; i10 < valueOf.length(); i10++) {
            char charAt = valueOf.charAt(i10);
            ImageView imageView = new ImageView(getContext());
            Integer num = this.numList.get(Integer.parseInt(String.valueOf(charAt)));
            Intrinsics.checkNotNullExpressionValue(num, "numList[it.toString().toInt()]");
            imageView.setImageResource(num.intValue());
            this.binding.numTV.addView(imageView);
        }
        if (i9 == 10) {
            this.binding.perfectIV.setVisibility(0);
            ObjectAnimator objectAnimator = this.numYAnimator;
            ObjectAnimator objectAnimator2 = null;
            if (objectAnimator == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                objectAnimator = null;
            }
            objectAnimator.end();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.binding.numTV, "translationY", DensityUtil.dp2px(this.half));
            Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(\n               …).toFloat()\n            )");
            this.numYAnimator = ofFloat;
            if (ofFloat == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                ofFloat = null;
            }
            ofFloat.setDuration(200L);
            ObjectAnimator objectAnimator3 = this.numYAnimator;
            if (objectAnimator3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
            } else {
                objectAnimator2 = objectAnimator3;
            }
            objectAnimator2.start();
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.binding.perfectIV, "scaleX", 0.3f, 1.0f, 0.9f, 0.9f).setDuration(500L);
            Intrinsics.checkNotNullExpressionValue(duration, "ofFloat(binding.perfectI…        .setDuration(500)");
            ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.binding.perfectIV, "scaleY", 0.3f, 1.0f, 0.9f, 0.9f).setDuration(500L);
            Intrinsics.checkNotNullExpressionValue(duration2, "ofFloat(binding.perfectI…        .setDuration(500)");
            this.perfectAnimatorSet.playTogether(duration, duration2);
            this.perfectAnimatorSet.addListener(new Animator.AnimatorListener(this) { // from class: com.guochao.faceshow.gift.view.GiftComboView$setNum$$inlined$addListener$default$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(@NotNull Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animator) {
                    ViewGiftComboBinding viewGiftComboBinding;
                    ViewGiftComboBinding viewGiftComboBinding2;
                    ViewGiftComboBinding viewGiftComboBinding3;
                    float f10;
                    ObjectAnimator objectAnimator4;
                    ObjectAnimator objectAnimator5;
                    GiftComboView.UIHandler uIHandler;
                    GiftComboView$shakeRunnable$1 giftComboView$shakeRunnable$1;
                    Intrinsics.checkNotNullParameter(animator, "animator");
                    viewGiftComboBinding = GiftComboView.this.binding;
                    viewGiftComboBinding.perfectIV.setVisibility(4);
                    viewGiftComboBinding2 = GiftComboView.this.binding;
                    viewGiftComboBinding2.numTV.setVisibility(0);
                    if (GiftComboView.this.isTouch()) {
                        GiftComboView giftComboView = GiftComboView.this;
                        viewGiftComboBinding3 = giftComboView.binding;
                        LinearLayout linearLayout = viewGiftComboBinding3.numTV;
                        f10 = GiftComboView.this.top;
                        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(linearLayout, "translationY", DensityUtil.dp2px(f10));
                        Intrinsics.checkNotNullExpressionValue(ofFloat2, "ofFloat(\n               …t()\n                    )");
                        giftComboView.numYAnimator = ofFloat2;
                        objectAnimator4 = GiftComboView.this.numYAnimator;
                        ObjectAnimator objectAnimator6 = null;
                        if (objectAnimator4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                            objectAnimator4 = null;
                        }
                        objectAnimator4.setDuration(500L);
                        objectAnimator5 = GiftComboView.this.numYAnimator;
                        if (objectAnimator5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("numYAnimator");
                        } else {
                            objectAnimator6 = objectAnimator5;
                        }
                        objectAnimator6.start();
                        uIHandler = GiftComboView.this.handler;
                        giftComboView$shakeRunnable$1 = GiftComboView.this.shakeRunnable;
                        uIHandler.postDelayed(giftComboView$shakeRunnable$1, 500L);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(@NotNull Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(@NotNull Animator animator) {
                    GiftComboView.UIHandler uIHandler;
                    GiftComboView$shakeRunnable$1 giftComboView$shakeRunnable$1;
                    Intrinsics.checkNotNullParameter(animator, "animator");
                    uIHandler = GiftComboView.this.handler;
                    giftComboView$shakeRunnable$1 = GiftComboView.this.shakeRunnable;
                    uIHandler.removeCallbacks(giftComboView$shakeRunnable$1);
                }
            });
            this.perfectAnimatorSet.start();
        }
        if (getCont() != 1 && getCont() != this.count + 1 && (comboViewListener = this.listener) != null) {
            comboViewListener.onCombo(this, 1);
        }
        Vibrator vibrator = this.vibratorManager;
        if (vibrator != null) {
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 26) {
                vibrator.vibrate(10L);
            } else if (i11 >= 29) {
                vibrator.vibrate(VibrationEffect.createPredefined(0));
            } else {
                vibrator.vibrate(10L);
            }
        }
    }

    public final void addLifecycleObserver(@Nullable LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        if (lifecycleOwner == null || (lifecycle = lifecycleOwner.getLifecycle()) == null) {
            return;
        }
        lifecycle.addObserver(this);
    }

    @Nullable
    public final int[] getComboLocation() {
        if (this.binding.scaleView.isLaidOut()) {
            int[] iArr = new int[2];
            this.binding.scaleView.getLocationInWindow(iArr);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return null;
            }
            iArr[0] = iArr[0] + (this.binding.scaleView.getWidth() / 2);
            iArr[1] = iArr[1] + (this.binding.scaleView.getHeight() / 2);
            return iArr;
        }
        return null;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getCurrentComboId() {
        return this.currentComboId;
    }

    public final boolean isTouch() {
        return this.isTouch;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.a(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        androidx.lifecycle.a.b(this, owner);
        this.handler.removeCallbacksAndMessages(null);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.d(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.e(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.f(this, lifecycleOwner);
    }

    public final void reset() {
        this.isAccept = false;
        finish(200L);
    }

    public final void setComboListener(@Nullable ComboViewListener comboViewListener) {
        this.listener = comboViewListener;
    }

    public final void setCount(int i9) {
        this.count = i9;
    }

    public final void setCurrentComboId(int i9) {
        this.currentComboId = i9;
    }

    public final void setTouch(boolean z10) {
        this.isTouch = z10;
    }

    public final void show(@NotNull ResourceListItemBean mCurrentGiftItemData, int i9, @NotNull List<? extends GiftFragment.r> users) {
        Intrinsics.checkNotNullParameter(mCurrentGiftItemData, "mCurrentGiftItemData");
        Intrinsics.checkNotNullParameter(users, "users");
        setCurrentKey(mCurrentGiftItemData, i9, users);
        this.count = getCont();
        setVisibility(0);
        this.handler.removeCallbacks(this.reSetRunnable);
        this.handler.postDelayed(this.reSetRunnable, 5000L);
        this.anim.setDuration(5000L);
        this.anim.start();
        play();
        finish$default(this, 0L, 1, null);
        this.handler.removeCallbacks(this.realTimeOut);
        this.handler.postDelayed(this.realTimeOut, 5000L);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r6v24, types: [com.guochao.faceshow.gift.view.GiftComboView$runnable$1] */
    /* JADX WARN: Type inference failed for: r6v25, types: [com.guochao.faceshow.gift.view.GiftComboView$shakeRunnable$1] */
    @JvmOverloads
    public GiftComboView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ArrayList<Integer> arrayListOf;
        Intrinsics.checkNotNullParameter(context, "context");
        ViewGiftComboBinding inflate = ViewGiftComboBinding.inflate(LayoutInflater.from(context), this);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context), this)");
        this.binding = inflate;
        Vibrator vibrator = null;
        try {
            Object systemService = context.getSystemService("vibrator");
            if (systemService instanceof Vibrator) {
                vibrator = (Vibrator) systemService;
            }
        } catch (Exception unused) {
        }
        this.vibratorManager = vibrator;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(Integer.valueOf((int) R.mipmap.num0), Integer.valueOf((int) R.mipmap.num1), Integer.valueOf((int) R.mipmap.num2), Integer.valueOf((int) R.mipmap.num3), Integer.valueOf((int) R.mipmap.num4), Integer.valueOf((int) R.mipmap.num5), Integer.valueOf((int) R.mipmap.num6), Integer.valueOf((int) R.mipmap.num7), Integer.valueOf((int) R.mipmap.num8), Integer.valueOf((int) R.mipmap.num9));
        this.numList = arrayListOf;
        this.isAccept = true;
        this.top = -60.0f;
        this.half = -40.0f;
        this.animatorSet = new AnimatorSet();
        this.perfectAnimatorSet = new AnimatorSet();
        this.countMap = new HashMap<>();
        this.mCurrentKey = "111";
        this.handler = new UIHandler();
        this.runnable = new Runnable() { // from class: com.guochao.faceshow.gift.view.GiftComboView$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                GiftComboView.UIHandler uIHandler;
                int cont;
                uIHandler = GiftComboView.this.handler;
                uIHandler.postDelayed(this, 250L);
                if (GiftComboView.this.isTouch()) {
                    GiftComboView.this.putMap();
                    GiftComboView giftComboView = GiftComboView.this;
                    cont = giftComboView.getCont();
                    giftComboView.setNum(cont);
                }
            }
        };
        this.shakeRunnable = new Runnable() { // from class: com.guochao.faceshow.gift.view.GiftComboView$shakeRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                GiftComboView.UIHandler uIHandler;
                ViewGiftComboBinding viewGiftComboBinding;
                ViewGiftComboBinding viewGiftComboBinding2;
                int random;
                ViewGiftComboBinding viewGiftComboBinding3;
                ViewGiftComboBinding viewGiftComboBinding4;
                uIHandler = GiftComboView.this.handler;
                uIHandler.postDelayed(this, 100L);
                viewGiftComboBinding = GiftComboView.this.binding;
                ViewPropertyAnimator animate = viewGiftComboBinding.numTV.animate();
                viewGiftComboBinding2 = GiftComboView.this.binding;
                float translationY = viewGiftComboBinding2.numTV.getTranslationY();
                random = RangesKt___RangesKt.random(new IntRange(-1, 1), Random.Default);
                animate.translationY(translationY + random).setDuration(100L);
                viewGiftComboBinding3 = GiftComboView.this.binding;
                ImageView imageView = viewGiftComboBinding3.roadIV;
                viewGiftComboBinding4 = GiftComboView.this.binding;
                ObjectAnimator duration = ObjectAnimator.ofFloat(imageView, "y", viewGiftComboBinding4.numTV.getY()).setDuration(100L);
                Intrinsics.checkNotNullExpressionValue(duration, "ofFloat(binding.roadIV, …numTV.y).setDuration(100)");
                duration.start();
            }
        };
        this.reSetRunnable = new Runnable() { // from class: com.guochao.faceshow.gift.view.b
            @Override // java.lang.Runnable
            public final void run() {
                GiftComboView.m679reSetRunnable$lambda1(GiftComboView.this);
            }
        };
        this.realTimeOut = new Runnable() { // from class: com.guochao.faceshow.gift.view.c
            @Override // java.lang.Runnable
            public final void run() {
                GiftComboView.m681realTimeOut$lambda2(GiftComboView.this);
            }
        };
        this.finishRunnable = new Runnable() { // from class: com.guochao.faceshow.gift.view.g
            @Override // java.lang.Runnable
            public final void run() {
                GiftComboView.m677finishRunnable$lambda3(GiftComboView.this);
            }
        };
        this.ballRunnable = new Runnable() { // from class: com.guochao.faceshow.gift.view.d
            @Override // java.lang.Runnable
            public final void run() {
                GiftComboView.m676ballRunnable$lambda4(GiftComboView.this);
            }
        };
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.binding.numTV, "translationY", DensityUtil.dp2px(-60.0f));
        Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(binding.numTV, \"…til.dp2px(top).toFloat())");
        this.numYAnimator = ofFloat;
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.binding.rotateIV, Key.ROTATION, 0.0f, 360.0f);
        Intrinsics.checkNotNullExpressionValue(ofFloat2, "ofFloat(binding.rotateIV, \"rotation\", 0f, 360f)");
        this.anim = ofFloat2;
        setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.gift.view.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m675_init_$lambda6;
                m675_init_$lambda6 = GiftComboView.m675_init_$lambda6(GiftComboView.this, view, motionEvent);
                return m675_init_$lambda6;
            }
        });
    }
}
