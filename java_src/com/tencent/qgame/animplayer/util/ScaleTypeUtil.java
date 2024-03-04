package com.tencent.qgame.animplayer.util;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u0000 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010$\u001a\u00020%H\u0002J\b\u0010\u0005\u001a\u00020\u001dH\u0002J\u0010\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)J\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0+J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\nJ\u0016\u00100\u001a\u00020-2\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0011\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;", "", "()V", "currentScaleType", "Lcom/tencent/qgame/animplayer/util/ScaleType;", "getCurrentScaleType", "()Lcom/tencent/qgame/animplayer/util/ScaleType;", "setCurrentScaleType", "(Lcom/tencent/qgame/animplayer/util/ScaleType;)V", "layoutHeight", "", "layoutWidth", "scaleTypeCenterCrop", "Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;", "getScaleTypeCenterCrop", "()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;", "scaleTypeCenterCrop$delegate", "Lkotlin/Lazy;", "scaleTypeFitCenter", "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;", "getScaleTypeFitCenter", "()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;", "scaleTypeFitCenter$delegate", "scaleTypeFitXY", "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;", "getScaleTypeFitXY", "()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;", "scaleTypeFitXY$delegate", "scaleTypeImpl", "Lcom/tencent/qgame/animplayer/util/IScaleType;", "getScaleTypeImpl", "()Lcom/tencent/qgame/animplayer/util/IScaleType;", "setScaleTypeImpl", "(Lcom/tencent/qgame/animplayer/util/IScaleType;)V", "videoHeight", "videoWidth", "checkParams", "", "getLayoutParam", "Landroid/widget/FrameLayout$LayoutParams;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "getRealSize", "Lkotlin/Pair;", "setLayoutSize", "", "w", "h", "setVideoSize", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class ScaleTypeUtil {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ScaleTypeUtil.class), "scaleTypeFitXY", "getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ScaleTypeUtil.class), "scaleTypeFitCenter", "getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ScaleTypeUtil.class), "scaleTypeCenterCrop", "getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;"))};
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.ScaleTypeUtil";
    @NotNull
    private ScaleType currentScaleType;
    private int layoutHeight;
    private int layoutWidth;
    private final Lazy scaleTypeCenterCrop$delegate;
    private final Lazy scaleTypeFitCenter$delegate;
    private final Lazy scaleTypeFitXY$delegate;
    @Nullable
    private IScaleType scaleTypeImpl;
    private int videoHeight;
    private int videoWidth;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScaleType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[ScaleType.FIT_XY.ordinal()] = 1;
            iArr[ScaleType.FIT_CENTER.ordinal()] = 2;
            iArr[ScaleType.CENTER_CROP.ordinal()] = 3;
        }
    }

    public ScaleTypeUtil() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ScaleTypeFitXY>() { // from class: com.tencent.qgame.animplayer.util.ScaleTypeUtil$scaleTypeFitXY$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ScaleTypeFitXY invoke() {
                return new ScaleTypeFitXY();
            }
        });
        this.scaleTypeFitXY$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ScaleTypeFitCenter>() { // from class: com.tencent.qgame.animplayer.util.ScaleTypeUtil$scaleTypeFitCenter$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ScaleTypeFitCenter invoke() {
                return new ScaleTypeFitCenter();
            }
        });
        this.scaleTypeFitCenter$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ScaleTypeCenterCrop>() { // from class: com.tencent.qgame.animplayer.util.ScaleTypeUtil$scaleTypeCenterCrop$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ScaleTypeCenterCrop invoke() {
                return new ScaleTypeCenterCrop();
            }
        });
        this.scaleTypeCenterCrop$delegate = lazy3;
        this.currentScaleType = ScaleType.FIT_XY;
    }

    private final boolean checkParams() {
        return this.layoutWidth > 0 && this.layoutHeight > 0 && this.videoWidth > 0 && this.videoHeight > 0;
    }

    private final ScaleTypeCenterCrop getScaleTypeCenterCrop() {
        Lazy lazy = this.scaleTypeCenterCrop$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ScaleTypeCenterCrop) lazy.getValue();
    }

    private final ScaleTypeFitCenter getScaleTypeFitCenter() {
        Lazy lazy = this.scaleTypeFitCenter$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ScaleTypeFitCenter) lazy.getValue();
    }

    private final ScaleTypeFitXY getScaleTypeFitXY() {
        Lazy lazy = this.scaleTypeFitXY$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ScaleTypeFitXY) lazy.getValue();
    }

    @NotNull
    /* renamed from: getCurrentScaleType  reason: collision with other method in class */
    public final ScaleType m829getCurrentScaleType() {
        return this.currentScaleType;
    }

    @NotNull
    public final FrameLayout.LayoutParams getLayoutParam(@Nullable View view) {
        ViewGroup.LayoutParams layoutParams = view != null ? view.getLayoutParams() : null;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) (layoutParams instanceof FrameLayout.LayoutParams ? layoutParams : null);
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        }
        FrameLayout.LayoutParams layoutParams3 = layoutParams2;
        if (!checkParams()) {
            ALog aLog = ALog.INSTANCE;
            aLog.e(TAG, "params error: layoutWidth=" + this.layoutWidth + ", layoutHeight=" + this.layoutHeight + ", videoWidth=" + this.videoWidth + ", videoHeight=" + this.videoHeight);
            return layoutParams3;
        }
        return getCurrentScaleType().getLayoutParam(this.layoutWidth, this.layoutHeight, this.videoWidth, this.videoHeight, layoutParams3);
    }

    @NotNull
    public final Pair<Integer, Integer> getRealSize() {
        Pair<Integer, Integer> realSize = getCurrentScaleType().getRealSize();
        ALog aLog = ALog.INSTANCE;
        aLog.i(TAG, "get real size (" + realSize.getFirst().intValue() + ", " + realSize.getSecond().intValue() + ')');
        return realSize;
    }

    @Nullable
    public final IScaleType getScaleTypeImpl() {
        return this.scaleTypeImpl;
    }

    public final void setCurrentScaleType(@NotNull ScaleType scaleType) {
        this.currentScaleType = scaleType;
    }

    public final void setLayoutSize(int i9, int i10) {
        this.layoutWidth = i9;
        this.layoutHeight = i10;
    }

    public final void setScaleTypeImpl(@Nullable IScaleType iScaleType) {
        this.scaleTypeImpl = iScaleType;
    }

    public final void setVideoSize(int i9, int i10) {
        this.videoWidth = i9;
        this.videoHeight = i10;
    }

    private final IScaleType getCurrentScaleType() {
        IScaleType iScaleType = this.scaleTypeImpl;
        if (iScaleType != null) {
            ALog.INSTANCE.i(TAG, "custom scaleType");
            return iScaleType;
        }
        ALog aLog = ALog.INSTANCE;
        aLog.i(TAG, "scaleType=" + this.currentScaleType);
        int i9 = WhenMappings.$EnumSwitchMapping$0[this.currentScaleType.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return getScaleTypeCenterCrop();
                }
                throw new NoWhenBranchMatchedException();
            }
            return getScaleTypeFitCenter();
        }
        return getScaleTypeFitXY();
    }
}
