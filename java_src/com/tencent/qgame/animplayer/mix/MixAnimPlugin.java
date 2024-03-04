package com.tencent.qgame.animplayer.mix;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.MotionEvent;
import com.tencent.qgame.animplayer.AnimConfig;
import com.tencent.qgame.animplayer.AnimPlayer;
import com.tencent.qgame.animplayer.inter.IFetchResource;
import com.tencent.qgame.animplayer.inter.OnResourceClickListener;
import com.tencent.qgame.animplayer.mix.Src;
import com.tencent.qgame.animplayer.plugin.IAnimPlugin;
import com.tencent.qgame.animplayer.util.ALog;
import com.tencent.qgame.animplayer.util.BitmapUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 J2\u00020\u0001:\u0001JB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u00107\u001a\u00020\u0006H\u0002J\b\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u000209H\u0002J\b\u0010;\u001a\u000209H\u0002J\u0010\u0010<\u001a\u00020\f2\u0006\u0010=\u001a\u00020>H\u0016J\b\u0010?\u001a\u000209H\u0016J\u0010\u0010@\u001a\u00020\u00062\u0006\u0010A\u001a\u00020BH\u0016J\b\u0010C\u001a\u000209H\u0016J\b\u0010D\u001a\u000209H\u0016J\u0010\u0010E\u001a\u0002092\u0006\u0010F\u001a\u00020\fH\u0016J\u0010\u0010G\u001a\u0002092\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010H\u001a\u0002092\u0006\u0010=\u001a\u00020>H\u0002J\b\u0010I\u001a\u000209H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u000e\u00100\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106¨\u0006K"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;", "Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;", "player", "Lcom/tencent/qgame/animplayer/AnimPlayer;", "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V", "autoTxtColorFill", "", "getAutoTxtColorFill", "()Z", "setAutoTxtColorFill", "(Z)V", "curFrameIndex", "", "getCurFrameIndex", "()I", "setCurFrameIndex", "(I)V", "forceStopLock", "frameAll", "Lcom/tencent/qgame/animplayer/mix/FrameAll;", "getFrameAll", "()Lcom/tencent/qgame/animplayer/mix/FrameAll;", "setFrameAll", "(Lcom/tencent/qgame/animplayer/mix/FrameAll;)V", "lock", "Ljava/lang/Object;", "mixRender", "Lcom/tencent/qgame/animplayer/mix/MixRender;", "mixTouch", "Lcom/tencent/qgame/animplayer/mix/MixTouch;", "getMixTouch", "()Lcom/tencent/qgame/animplayer/mix/MixTouch;", "mixTouch$delegate", "Lkotlin/Lazy;", "getPlayer", "()Lcom/tencent/qgame/animplayer/AnimPlayer;", "resourceClickListener", "Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;", "getResourceClickListener", "()Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;", "setResourceClickListener", "(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V", "resourceRequest", "Lcom/tencent/qgame/animplayer/inter/IFetchResource;", "getResourceRequest", "()Lcom/tencent/qgame/animplayer/inter/IFetchResource;", "setResourceRequest", "(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V", "resultCbCount", "srcMap", "Lcom/tencent/qgame/animplayer/mix/SrcMap;", "getSrcMap", "()Lcom/tencent/qgame/animplayer/mix/SrcMap;", "setSrcMap", "(Lcom/tencent/qgame/animplayer/mix/SrcMap;)V", "createBitmap", "destroy", "", "fetchResourceSync", "forceStopLockThread", "onConfigCreate", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", "onDestroy", "onDispatchTouchEvent", "ev", "Landroid/view/MotionEvent;", "onRelease", "onRenderCreate", "onRendering", "frameIndex", "parseFrame", "parseSrc", "resultCall", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MixAnimPlugin implements IAnimPlugin {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(MixAnimPlugin.class), "mixTouch", "getMixTouch()Lcom/tencent/qgame/animplayer/mix/MixTouch;"))};
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.MixAnimPlugin";
    private boolean autoTxtColorFill;
    private int curFrameIndex = -1;
    private boolean forceStopLock;
    @Nullable
    private FrameAll frameAll;
    private final Object lock;
    private MixRender mixRender;
    private final Lazy mixTouch$delegate;
    @NotNull
    private final AnimPlayer player;
    @Nullable
    private OnResourceClickListener resourceClickListener;
    @Nullable
    private IFetchResource resourceRequest;
    private int resultCbCount;
    @Nullable
    private SrcMap srcMap;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
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
            int[] iArr = new int[Src.SrcType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Src.SrcType.IMG.ordinal()] = 1;
            iArr[Src.SrcType.TXT.ordinal()] = 2;
        }
    }

    public MixAnimPlugin(@NotNull AnimPlayer animPlayer) {
        Lazy lazy;
        this.player = animPlayer;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MixTouch>() { // from class: com.tencent.qgame.animplayer.mix.MixAnimPlugin$mixTouch$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MixTouch invoke() {
                return new MixTouch(MixAnimPlugin.this);
            }
        });
        this.mixTouch$delegate = lazy;
        this.autoTxtColorFill = true;
        this.lock = new Object();
    }

    private final boolean createBitmap() {
        HashMap<String, Src> map;
        Collection<Src> values;
        try {
            SrcMap srcMap = this.srcMap;
            if (srcMap != null && (map = srcMap.getMap()) != null && (values = map.values()) != null) {
                for (Src src : values) {
                    if (src.getSrcType() == Src.SrcType.TXT) {
                        BitmapUtil bitmapUtil = BitmapUtil.INSTANCE;
                        Intrinsics.checkExpressionValueIsNotNull(src, "src");
                        src.setBitmap(bitmapUtil.createTxtBitmap(src));
                    }
                }
            }
            return true;
        } catch (OutOfMemoryError e10) {
            ALog aLog = ALog.INSTANCE;
            aLog.e(TAG, "draw text OOM " + e10, e10);
            return false;
        }
    }

    private final void destroy() {
        SparseArray<FrameSet> map;
        HashMap<String, Src> map2;
        HashMap<String, Src> map3;
        Collection<Src> values;
        Bitmap bitmap;
        forceStopLockThread();
        AnimConfig config = this.player.getConfigManager().getConfig();
        if (config == null || config.isMix()) {
            ArrayList arrayList = new ArrayList();
            SrcMap srcMap = this.srcMap;
            if (srcMap != null && (map3 = srcMap.getMap()) != null && (values = map3.values()) != null) {
                for (Src src : values) {
                    MixRender mixRender = this.mixRender;
                    if (mixRender != null) {
                        mixRender.release(src.getSrcTextureId());
                    }
                    int i9 = WhenMappings.$EnumSwitchMapping$0[src.getSrcType().ordinal()];
                    if (i9 == 1) {
                        Intrinsics.checkExpressionValueIsNotNull(src, "src");
                        arrayList.add(new Resource(src));
                    } else if (i9 == 2 && (bitmap = src.getBitmap()) != null) {
                        bitmap.recycle();
                    }
                }
            }
            IFetchResource iFetchResource = this.resourceRequest;
            if (iFetchResource != null) {
                iFetchResource.releaseResource(arrayList);
            }
            this.curFrameIndex = -1;
            SrcMap srcMap2 = this.srcMap;
            if (srcMap2 != null && (map2 = srcMap2.getMap()) != null) {
                map2.clear();
            }
            FrameAll frameAll = this.frameAll;
            if (frameAll == null || (map = frameAll.getMap()) == null) {
                return;
            }
            map.clear();
        }
    }

    private final void fetchResourceSync() {
        HashMap<String, Src> map;
        Collection<Src> values;
        HashMap<String, Src> map2;
        synchronized (this.lock) {
            this.forceStopLock = false;
            Unit unit = Unit.INSTANCE;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        SrcMap srcMap = this.srcMap;
        int size = (srcMap == null || (map2 = srcMap.getMap()) == null) ? 0 : map2.size();
        ALog aLog = ALog.INSTANCE;
        aLog.i(TAG, "load resource totalSrc = " + size);
        this.resultCbCount = 0;
        SrcMap srcMap2 = this.srcMap;
        if (srcMap2 != null && (map = srcMap2.getMap()) != null && (values = map.values()) != null) {
            for (final Src src : values) {
                if (src.getSrcType() == Src.SrcType.IMG) {
                    ALog aLog2 = ALog.INSTANCE;
                    aLog2.i(TAG, "fetch image " + src.getSrcId());
                    IFetchResource iFetchResource = this.resourceRequest;
                    if (iFetchResource != null) {
                        Intrinsics.checkExpressionValueIsNotNull(src, "src");
                        iFetchResource.fetchImage(new Resource(src), new Function1<Bitmap, Unit>() { // from class: com.tencent.qgame.animplayer.mix.MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap) {
                                invoke2(bitmap);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@Nullable Bitmap bitmap) {
                                Bitmap bitmap2;
                                Src src2 = Src.this;
                                if (bitmap == null) {
                                    ALog aLog3 = ALog.INSTANCE;
                                    aLog3.e("AnimPlayer.MixAnimPlugin", "fetch image " + Src.this.getSrcId() + " bitmap return null");
                                    bitmap2 = BitmapUtil.INSTANCE.createEmptyBitmap();
                                } else {
                                    bitmap2 = bitmap;
                                }
                                src2.setBitmap(bitmap2);
                                ALog aLog4 = ALog.INSTANCE;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("fetch image ");
                                sb2.append(Src.this.getSrcId());
                                sb2.append(" finish bitmap is ");
                                sb2.append(bitmap != null ? Integer.valueOf(bitmap.hashCode()) : null);
                                aLog4.i("AnimPlayer.MixAnimPlugin", sb2.toString());
                                this.resultCall();
                            }
                        });
                    }
                } else if (src.getSrcType() == Src.SrcType.TXT) {
                    ALog aLog3 = ALog.INSTANCE;
                    aLog3.i(TAG, "fetch txt " + src.getSrcId());
                    IFetchResource iFetchResource2 = this.resourceRequest;
                    if (iFetchResource2 != null) {
                        Intrinsics.checkExpressionValueIsNotNull(src, "src");
                        iFetchResource2.fetchText(new Resource(src), new Function1<String, Unit>() { // from class: com.tencent.qgame.animplayer.mix.MixAnimPlugin$fetchResourceSync$$inlined$forEach$lambda$2
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                                invoke2(str);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@Nullable String str) {
                                Src.this.setTxt(str != null ? str : "");
                                ALog aLog4 = ALog.INSTANCE;
                                aLog4.i("AnimPlayer.MixAnimPlugin", "fetch text " + Src.this.getSrcId() + " finish txt is " + str);
                                this.resultCall();
                            }
                        });
                    }
                }
            }
        }
        synchronized (this.lock) {
            while (this.resultCbCount < size && !this.forceStopLock) {
                this.lock.wait();
            }
            Unit unit2 = Unit.INSTANCE;
        }
        ALog aLog4 = ALog.INSTANCE;
        aLog4.i(TAG, "fetchResourceSync cost=" + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
    }

    private final void forceStopLockThread() {
        synchronized (this.lock) {
            this.forceStopLock = true;
            this.lock.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final MixTouch getMixTouch() {
        Lazy lazy = this.mixTouch$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (MixTouch) lazy.getValue();
    }

    private final void parseFrame(AnimConfig animConfig) {
        JSONObject jsonConfig = animConfig.getJsonConfig();
        if (jsonConfig != null) {
            this.frameAll = new FrameAll(jsonConfig);
        }
    }

    private final void parseSrc(AnimConfig animConfig) {
        JSONObject jsonConfig = animConfig.getJsonConfig();
        if (jsonConfig != null) {
            this.srcMap = new SrcMap(jsonConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resultCall() {
        synchronized (this.lock) {
            this.resultCbCount++;
            this.lock.notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean getAutoTxtColorFill() {
        return this.autoTxtColorFill;
    }

    public final int getCurFrameIndex() {
        return this.curFrameIndex;
    }

    @Nullable
    public final FrameAll getFrameAll() {
        return this.frameAll;
    }

    @NotNull
    public final AnimPlayer getPlayer() {
        return this.player;
    }

    @Nullable
    public final OnResourceClickListener getResourceClickListener() {
        return this.resourceClickListener;
    }

    @Nullable
    public final IFetchResource getResourceRequest() {
        return this.resourceRequest;
    }

    @Nullable
    public final SrcMap getSrcMap() {
        return this.srcMap;
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public int onConfigCreate(@NotNull AnimConfig animConfig) {
        HashMap<String, Src> map;
        Collection<Src> values;
        if (animConfig.isMix()) {
            if (this.resourceRequest == null) {
                ALog.INSTANCE.e(TAG, "IFetchResource is empty");
                return 0;
            }
            parseSrc(animConfig);
            parseFrame(animConfig);
            fetchResourceSync();
            if (createBitmap()) {
                ALog aLog = ALog.INSTANCE;
                aLog.i(TAG, "load resource " + this.resultCbCount);
                SrcMap srcMap = this.srcMap;
                if (srcMap != null && (map = srcMap.getMap()) != null && (values = map.values()) != null) {
                    for (Src src : values) {
                        if (src.getBitmap() == null) {
                            ALog aLog2 = ALog.INSTANCE;
                            aLog2.e(TAG, "missing src " + src);
                            return 10006;
                        }
                        Bitmap bitmap = src.getBitmap();
                        if ((bitmap != null ? bitmap.getConfig() : null) == Bitmap.Config.ALPHA_8) {
                            ALog aLog3 = ALog.INSTANCE;
                            aLog3.e(TAG, "src " + src + " bitmap must not be ALPHA_8");
                            return 10006;
                        }
                    }
                }
                return 0;
            }
            return 10006;
        }
        return 0;
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onDecoding(int i9) {
        IAnimPlugin.DefaultImpls.onDecoding(this, i9);
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onDestroy() {
        destroy();
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public boolean onDispatchTouchEvent(@NotNull MotionEvent motionEvent) {
        AnimConfig config = this.player.getConfigManager().getConfig();
        if ((config != null && !config.isMix()) || this.resourceClickListener == null) {
            return IAnimPlugin.DefaultImpls.onDispatchTouchEvent(this, motionEvent);
        }
        final Resource onTouchEvent = getMixTouch().onTouchEvent(motionEvent);
        if (onTouchEvent != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.qgame.animplayer.mix.MixAnimPlugin$onDispatchTouchEvent$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    OnResourceClickListener resourceClickListener = this.getResourceClickListener();
                    if (resourceClickListener != null) {
                        resourceClickListener.onClick(Resource.this);
                    }
                }
            });
            return true;
        }
        return true;
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRelease() {
        destroy();
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRenderCreate() {
        AnimConfig config = this.player.getConfigManager().getConfig();
        if (config == null || config.isMix()) {
            ALog.INSTANCE.i(TAG, "mix render init");
            MixRender mixRender = new MixRender(this);
            this.mixRender = mixRender;
            mixRender.init();
        }
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRendering(int i9) {
        SparseArray<FrameSet> map;
        FrameSet frameSet;
        ArrayList<Frame> list;
        HashMap<String, Src> map2;
        Src src;
        AnimConfig config = this.player.getConfigManager().getConfig();
        if (config == null || !config.isMix()) {
            return;
        }
        this.curFrameIndex = i9;
        FrameAll frameAll = this.frameAll;
        if (frameAll == null || (map = frameAll.getMap()) == null || (frameSet = map.get(i9)) == null || (list = frameSet.getList()) == null) {
            return;
        }
        for (Frame frame : list) {
            SrcMap srcMap = this.srcMap;
            if (srcMap != null && (map2 = srcMap.getMap()) != null && (src = map2.get(frame.getSrcId())) != null) {
                Intrinsics.checkExpressionValueIsNotNull(src, "srcMap?.map?.get(frame.srcId) ?: return@forEach");
                MixRender mixRender = this.mixRender;
                if (mixRender != null) {
                    mixRender.renderFrame(config, frame, src);
                }
            }
        }
    }

    public final void setAutoTxtColorFill(boolean z10) {
        this.autoTxtColorFill = z10;
    }

    public final void setCurFrameIndex(int i9) {
        this.curFrameIndex = i9;
    }

    public final void setFrameAll(@Nullable FrameAll frameAll) {
        this.frameAll = frameAll;
    }

    public final void setResourceClickListener(@Nullable OnResourceClickListener onResourceClickListener) {
        this.resourceClickListener = onResourceClickListener;
    }

    public final void setResourceRequest(@Nullable IFetchResource iFetchResource) {
        this.resourceRequest = iFetchResource;
    }

    public final void setSrcMap(@Nullable SrcMap srcMap) {
        this.srcMap = srcMap;
    }
}
