package com.guochao.faceshow.aaspring.modulars.gift.view;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.graphics.PathParser;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.aaspring.modulars.gift.model.GiftPath;
import com.guochao.faceshow.aaspring.modulars.gift.model.HandyGiftPathData;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 Q2\u00020\u0001:\u0003QRSB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u00104\u001a\u00020\nJ\u0018\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u00152\u0006\u00107\u001a\u000208H\u0002J\u0006\u00109\u001a\u00020\u0007J\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014J\u0012\u0010;\u001a\u00020\u00162\b\u00107\u001a\u0004\u0018\u000108H\u0014J\u0018\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0014J\u0010\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020AH\u0016J\u001e\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\u0007H\u0002J.\u0010F\u001a\u00020\u00162\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010H\u001a\u00020\u00072\u0006\u0010I\u001a\u00020\u00072\b\b\u0002\u0010J\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u00162\u0006\u0010L\u001a\u00020\"J\b\u0010M\u001a\u00020\u0016H\u0002J\u0006\u0010N\u001a\u00020\nJ\u0010\u0010O\u001a\u00020\u00162\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010P\u001a\u00020\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR4\u0010\u0012\u001a\u001c\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010(\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R(\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0016\u0018\u00010.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0014\u00103\u001a\b\u0012\u0004\u0012\u00020\u00150\u001cX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "animating", "", "getAnimating", "()Z", "setAnimating", "(Z)V", "animationOnlyMode", "getAnimationOnlyMode", "setAnimationOnlyMode", "capturePointsListener", "Lkotlin/Function2;", "", "Landroid/graphics/PointF;", "", "getCapturePointsListener", "()Lkotlin/jvm/functions/Function2;", "setCapturePointsListener", "(Lkotlin/jvm/functions/Function2;)V", "drawSteps", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;", "drawable", "Landroid/graphics/drawable/Drawable;", "drawableSize", "giftPathData", "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;", "h", "Landroid/os/Handler;", "lastPointF", "lastToast", "", "maxDraw", "getMaxDraw", "()I", "setMaxDraw", "(I)V", "playPointsListener", "Lkotlin/Function1;", "getPlayPointsListener", "()Lkotlin/jvm/functions/Function1;", "setPlayPointsListener", "(Lkotlin/jvm/functions/Function1;)V", "points", "clearPoints", "drawOnPoint", "pointF", "canvas", "Landroid/graphics/Canvas;", "getCurrentDrawCount", "getCurrentPoints", "onDraw", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onTouchEvent", "event", "Landroid/view/MotionEvent;", "pathToPoints", "data", "Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;", "totalCount", "playPoints", "list", "canvasWidth", "canvasHeight", "clearOnEnd", "readTemplatePath", "handyGiftPathData", "resetView", "revocation", "setCurrentDrawable", "trackSend", "Companion", "DrawStep", "RepeatRunnable", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HandyAnimView extends View {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float DRAWABLE_SIZE = 30.0f;
    private static final long FRAME_TIME = 66;
    private boolean animating;
    private boolean animationOnlyMode;
    @Nullable
    private Function2<? super HandyAnimView, ? super List<? extends PointF>, Unit> capturePointsListener;
    @NotNull
    private final List<DrawStep> drawSteps;
    @Nullable
    private Drawable drawable;
    private final int drawableSize;
    @Nullable
    private HandyGiftPathData giftPathData;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Handler f17918h;
    @Nullable
    private PointF lastPointF;
    private long lastToast;
    private int maxDraw;
    @Nullable
    private Function1<? super HandyAnimView, Unit> playPointsListener;
    @NotNull
    private final List<PointF> points;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$Companion;", "", "()V", "DRAWABLE_SIZE", "", "FRAME_TIME", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$DrawStep;", "", "points", "", "Landroid/graphics/PointF;", "(Ljava/util/List;)V", "getPoints", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DrawStep {
        @NotNull
        private final List<PointF> points;

        /* JADX WARN: Multi-variable type inference failed */
        public DrawStep(@NotNull List<? extends PointF> points) {
            Intrinsics.checkNotNullParameter(points, "points");
            this.points = points;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ DrawStep copy$default(DrawStep drawStep, List list, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                list = drawStep.points;
            }
            return drawStep.copy(list);
        }

        @NotNull
        public final List<PointF> component1() {
            return this.points;
        }

        @NotNull
        public final DrawStep copy(@NotNull List<? extends PointF> points) {
            Intrinsics.checkNotNullParameter(points, "points");
            return new DrawStep(points);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DrawStep) && Intrinsics.areEqual(this.points, ((DrawStep) obj).points);
        }

        @NotNull
        public final List<PointF> getPoints() {
            return this.points;
        }

        public int hashCode() {
            return this.points.hashCode();
        }

        @NotNull
        public String toString() {
            return "DrawStep(points=" + this.points + ')';
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HandyAnimView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HandyAnimView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HandyAnimView(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    private final void drawOnPoint(PointF pointF, Canvas canvas) {
        canvas.save();
        float f10 = pointF.x;
        int i9 = this.drawableSize;
        canvas.translate(f10 - (i9 / 2), pointF.y - (i9 / 2));
        Drawable drawable = this.drawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<PointF> pathToPoints(GiftPath giftPath, int i9) {
        ArrayList arrayList = new ArrayList();
        Matrix matrix = new Matrix();
        float max = Math.max(Math.min(getMeasuredWidth() / 400.0f, getMeasuredHeight() / 400.0f) - 0.9f, 1.0f);
        float f10 = 400.0f * max;
        Path createPathFromPathData = PathParser.createPathFromPathData(giftPath.getPath());
        matrix.setScale(max, max);
        matrix.postTranslate((getMeasuredWidth() - f10) / 2.0f, (getMeasuredHeight() - f10) / 2.0f);
        createPathFromPathData.transform(matrix);
        int i10 = 0;
        PathMeasure pathMeasure = new PathMeasure(createPathFromPathData, false);
        float length = pathMeasure.getLength();
        float[] fArr = new float[9];
        int giftCount = giftPath.getGiftCount();
        if (giftCount >= 0) {
            while (true) {
                matrix.reset();
                pathMeasure.getMatrix((i10 / giftCount) * length, matrix, 1);
                matrix.getValues(fArr);
                arrayList.add(new PointF(fArr[2], fArr[5]));
                if (i10 == giftCount) {
                    break;
                }
                i10++;
            }
        }
        if (pathMeasure.isClosed() || giftPath.getRemoveLast()) {
            CollectionsKt__MutableCollectionsKt.removeLast(arrayList);
        }
        return arrayList;
    }

    public static /* synthetic */ void playPoints$default(HandyAnimView handyAnimView, List list, int i9, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        handyAnimView.playPoints(list, i9, i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetView() {
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
    }

    public final boolean clearPoints() {
        if (this.animating) {
            return false;
        }
        this.points.clear();
        this.drawSteps.clear();
        this.f17918h.removeCallbacksAndMessages(null);
        Function2<? super HandyAnimView, ? super List<? extends PointF>, Unit> function2 = this.capturePointsListener;
        if (function2 != null) {
            function2.mo1invoke(this, this.points);
        }
        invalidate();
        return true;
    }

    public final boolean getAnimating() {
        return this.animating;
    }

    public final boolean getAnimationOnlyMode() {
        return this.animationOnlyMode;
    }

    @Nullable
    public final Function2<HandyAnimView, List<? extends PointF>, Unit> getCapturePointsListener() {
        return this.capturePointsListener;
    }

    public final int getCurrentDrawCount() {
        int i9 = 0;
        for (DrawStep drawStep : this.drawSteps) {
            i9 += drawStep.getPoints().size();
        }
        return i9 + this.points.size();
    }

    @NotNull
    public final List<PointF> getCurrentPoints() {
        ArrayList arrayList = new ArrayList();
        for (DrawStep drawStep : this.drawSteps) {
            arrayList.addAll(drawStep.getPoints());
        }
        arrayList.addAll(this.points);
        return arrayList;
    }

    public final int getMaxDraw() {
        return this.maxDraw;
    }

    @Nullable
    public final Function1<HandyAnimView, Unit> getPlayPointsListener() {
        return this.playPointsListener;
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        super.onDraw(canvas);
        if (canvas == null) {
            return;
        }
        for (DrawStep drawStep : this.drawSteps) {
            for (PointF pointF : drawStep.getPoints()) {
                drawOnPoint(pointF, canvas);
            }
        }
        for (PointF pointF2 : this.points) {
            drawOnPoint(pointF2, canvas);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int coerceAtMost;
        int size = View.MeasureSpec.getSize(i9);
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(size, View.MeasureSpec.getSize(i10));
        setMeasuredDimension(size, coerceAtMost);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d6, code lost:
        if (r3 != 3) goto L33;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void playPoints(@NotNull List<? extends PointF> list, int i9, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(list, "list");
        int width = getWidth();
        getHeight();
        ArrayList arrayList = new ArrayList();
        float f10 = width / i9;
        for (PointF pointF : list) {
            pointF.set(pointF.x * f10, pointF.y * f10);
            arrayList.add(pointF);
        }
        this.animating = true;
        this.f17918h.post(new RepeatRunnable(this, 0, arrayList, z10));
        invalidate();
    }

    public final void readTemplatePath(@NotNull final HandyGiftPathData handyGiftPathData) {
        Intrinsics.checkNotNullParameter(handyGiftPathData, "handyGiftPathData");
        if (ViewCompat.isLaidOut(this) && !isLayoutRequested()) {
            this.f17918h.removeCallbacksAndMessages(null);
            this.giftPathData = handyGiftPathData;
            this.drawSteps.clear();
            this.points.clear();
            ArrayList arrayList = new ArrayList();
            for (GiftPath giftPath : handyGiftPathData.getGiftPathList()) {
                arrayList.addAll(pathToPoints(giftPath, giftPath.getGiftCount()));
            }
            playPoints(arrayList, getMeasuredWidth(), getMeasuredHeight(), false);
            invalidate();
            return;
        }
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView$readTemplatePath$$inlined$doOnLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(@NotNull View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                HandyAnimView.this.f17918h.removeCallbacksAndMessages(null);
                HandyAnimView.this.giftPathData = handyGiftPathData;
                HandyAnimView.this.drawSteps.clear();
                HandyAnimView.this.points.clear();
                ArrayList arrayList2 = new ArrayList();
                for (GiftPath giftPath2 : handyGiftPathData.getGiftPathList()) {
                    arrayList2.addAll(HandyAnimView.this.pathToPoints(giftPath2, giftPath2.getGiftCount()));
                }
                HandyAnimView handyAnimView = HandyAnimView.this;
                handyAnimView.playPoints(arrayList2, handyAnimView.getMeasuredWidth(), HandyAnimView.this.getMeasuredHeight(), false);
                HandyAnimView.this.invalidate();
            }
        });
    }

    public final boolean revocation() {
        if (this.animating) {
            return false;
        }
        if (this.drawSteps.isEmpty() && this.points.isEmpty()) {
            return false;
        }
        if (this.drawSteps.isEmpty()) {
            this.points.clear();
        } else {
            CollectionsKt__MutableCollectionsKt.removeLast(this.drawSteps);
        }
        invalidate();
        Function2<? super HandyAnimView, ? super List<? extends PointF>, Unit> function2 = this.capturePointsListener;
        if (function2 != null) {
            function2.mo1invoke(this, this.points);
            return true;
        }
        return true;
    }

    public final void setAnimating(boolean z10) {
        this.animating = z10;
    }

    public final void setAnimationOnlyMode(boolean z10) {
        this.animationOnlyMode = z10;
    }

    public final void setCapturePointsListener(@Nullable Function2<? super HandyAnimView, ? super List<? extends PointF>, Unit> function2) {
        this.capturePointsListener = function2;
    }

    public final void setCurrentDrawable(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setBounds(0, 0, DensityUtil.dp2px(DRAWABLE_SIZE), DensityUtil.dp2px(DRAWABLE_SIZE));
        } else {
            drawable = null;
        }
        this.drawable = drawable;
        invalidate();
    }

    public final void setMaxDraw(int i9) {
        this.maxDraw = i9;
    }

    public final void setPlayPointsListener(@Nullable Function1<? super HandyAnimView, Unit> function1) {
        this.playPointsListener = function1;
    }

    public final void trackSend() {
        if (this.giftPathData == null) {
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("Graffiti_gift_give_4000_%s", Arrays.copyOf(new Object[]{"1"}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            eventTrackingV2Utils.track(format);
        } else if (this.drawSteps.size() == 1 && this.points.isEmpty()) {
            EventTrackingV2Utils eventTrackingV2Utils2 = EventTrackingV2Utils.INSTANCE;
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String format2 = String.format("Graffiti_gift_give_4000_%s", Arrays.copyOf(new Object[]{"0"}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
            eventTrackingV2Utils2.track(format2);
        } else {
            EventTrackingV2Utils eventTrackingV2Utils3 = EventTrackingV2Utils.INSTANCE;
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
            String format3 = String.format("Graffiti_gift_give_4000_%s", Arrays.copyOf(new Object[]{"2"}, 1));
            Intrinsics.checkNotNullExpressionValue(format3, "format(format, *args)");
            eventTrackingV2Utils3.track(format3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HandyAnimView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        int dp2px;
        Intrinsics.checkNotNullParameter(context, "context");
        this.points = new ArrayList();
        this.drawSteps = new ArrayList();
        this.f17918h = new Handler(Looper.getMainLooper());
        int i10 = getResources().getDisplayMetrics().widthPixels;
        if (i10 <= 800) {
            dp2px = DensityUtil.dp2px(24.0f);
        } else if (i10 <= 1200) {
            dp2px = DensityUtil.dp2px(DRAWABLE_SIZE);
        } else {
            dp2px = DensityUtil.dp2px(DRAWABLE_SIZE);
        }
        this.drawableSize = dp2px;
        this.maxDraw = 100;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView$RepeatRunnable;", "Ljava/lang/Runnable;", "index", "", "list", "", "Landroid/graphics/PointF;", "clearOnEnd", "", "(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;ILjava/util/List;Z)V", "getClearOnEnd", "()Z", "getIndex", "()I", "setIndex", "(I)V", "getList", "()Ljava/util/List;", "run", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class RepeatRunnable implements Runnable {
        private final boolean clearOnEnd;
        private int index;
        @NotNull
        private final List<PointF> list;
        final /* synthetic */ HandyAnimView this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public RepeatRunnable(HandyAnimView handyAnimView, @NotNull int i9, List<? extends PointF> list, boolean z10) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.this$0 = handyAnimView;
            this.index = i9;
            this.list = list;
            this.clearOnEnd = z10;
        }

        public final boolean getClearOnEnd() {
            return this.clearOnEnd;
        }

        public final int getIndex() {
            return this.index;
        }

        @NotNull
        public final List<PointF> getList() {
            return this.list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.index < this.list.size()) {
                this.this$0.points.add(this.list.get(this.index));
                Function2<HandyAnimView, List<? extends PointF>, Unit> capturePointsListener = this.this$0.getCapturePointsListener();
                if (capturePointsListener != null) {
                    HandyAnimView handyAnimView = this.this$0;
                    capturePointsListener.mo1invoke(handyAnimView, handyAnimView.points);
                }
                this.index++;
                this.this$0.f17918h.postDelayed(this, HandyAnimView.FRAME_TIME);
                this.this$0.invalidate();
            } else if (this.clearOnEnd) {
                ViewPropertyAnimator alpha = this.this$0.animate().scaleX(1.2f).scaleY(1.2f).alpha(0.2f);
                final HandyAnimView handyAnimView2 = this.this$0;
                alpha.setListener(new Animator.AnimatorListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView$RepeatRunnable$run$1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(@Nullable Animator animator) {
                        HandyAnimView.this.setAnimating(false);
                        HandyAnimView.this.clearPoints();
                        HandyAnimView.this.drawable = null;
                        HandyAnimView.this.resetView();
                        Function1<HandyAnimView, Unit> playPointsListener = HandyAnimView.this.getPlayPointsListener();
                        if (playPointsListener != null) {
                            playPointsListener.invoke(HandyAnimView.this);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(@Nullable Animator animator) {
                        HandyAnimView.this.setAnimating(false);
                        HandyAnimView.this.clearPoints();
                        HandyAnimView.this.drawable = null;
                        HandyAnimView.this.resetView();
                        Function1<HandyAnimView, Unit> playPointsListener = HandyAnimView.this.getPlayPointsListener();
                        if (playPointsListener != null) {
                            playPointsListener.invoke(HandyAnimView.this);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(@Nullable Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(@Nullable Animator animator) {
                    }
                }).start();
            } else {
                this.this$0.drawSteps.add(new DrawStep(new ArrayList(this.this$0.points)));
                this.this$0.points.clear();
                this.this$0.invalidate();
                this.this$0.setAnimating(false);
                Function2<HandyAnimView, List<? extends PointF>, Unit> capturePointsListener2 = this.this$0.getCapturePointsListener();
                if (capturePointsListener2 != null) {
                    HandyAnimView handyAnimView3 = this.this$0;
                    capturePointsListener2.mo1invoke(handyAnimView3, handyAnimView3.points);
                }
            }
        }

        public final void setIndex(int i9) {
            this.index = i9;
        }

        public /* synthetic */ RepeatRunnable(HandyAnimView handyAnimView, int i9, List list, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(handyAnimView, i9, list, (i10 & 4) != 0 ? true : z10);
        }
    }
}
