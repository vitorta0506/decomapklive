package com.guochao.faceshow.aaspring.modulars.vap;

import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.tencent.qgame.animplayer.AnimConfig;
import com.tencent.qgame.animplayer.AnimView;
import com.tencent.qgame.animplayer.inter.IAnimListener;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils;", "", "()V", "Companion", "IAnimListenerImp", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VaPlayerUtils {
    @NotNull
    public static final Companion Companion = new Companion(null);

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007J&\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$Companion;", "", "()V", "startPlay", "", "animView", "Lcom/tencent/qgame/animplayer/AnimView;", ShareInternalUtility.STAGING_PARAM, "Ljava/io/File;", "listener", "Lcom/tencent/qgame/animplayer/inter/IAnimListener;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void startPlay(@Nullable AnimView animView, @Nullable File file) {
            startPlay(animView, file, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0074  */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void startPlay(@org.jetbrains.annotations.Nullable final com.tencent.qgame.animplayer.AnimView r4, @org.jetbrains.annotations.Nullable java.io.File r5, @org.jetbrains.annotations.Nullable com.tencent.qgame.animplayer.inter.IAnimListener r6) {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                if (r4 == 0) goto Lb
                boolean r2 = r4.isRunning()
                if (r2 != r0) goto Lb
                goto Lc
            Lb:
                r0 = 0
            Lc:
                if (r0 == 0) goto Lf
                return
            Lf:
                r0 = 0
                if (r4 == 0) goto L17
                java.lang.Object r1 = r4.getTag()
                goto L18
            L17:
                r1 = r0
            L18:
                java.lang.String r2 = "video"
                boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r1)
                if (r1 != 0) goto L57
                if (r4 == 0) goto L27
                java.lang.Object r1 = r4.getTag()
                goto L28
            L27:
                r1 = r0
            L28:
                java.lang.String r2 = "bigLiveGift"
                boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r1)
                if (r1 != 0) goto L57
                if (r4 == 0) goto L37
                java.lang.Object r1 = r4.getTag()
                goto L38
            L37:
                r1 = r0
            L38:
                java.lang.String r2 = "1v1"
                boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r1)
                if (r1 != 0) goto L57
                if (r4 == 0) goto L46
                java.lang.Object r0 = r4.getTag()
            L46:
                java.lang.String r1 = "im"
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
                if (r0 == 0) goto L4f
                goto L57
            L4f:
                if (r4 == 0) goto L5f
                com.tencent.qgame.animplayer.util.ScaleType r0 = com.tencent.qgame.animplayer.util.ScaleType.FIT_CENTER
                r4.setScaleType(r0)
                goto L5f
            L57:
                com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils$Companion$startPlay$1 r0 = new com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils$Companion$startPlay$1
                r0.<init>()
                r4.setScaleType(r0)
            L5f:
                if (r4 == 0) goto L67
                kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
                r4.startPlay(r5)
            L67:
                if (r6 != 0) goto L74
                if (r4 == 0) goto L79
                com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils$Companion$startPlay$2 r5 = new com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils$Companion$startPlay$2
                r5.<init>(r4)
                r4.setAnimListener(r5)
                goto L79
            L74:
                if (r4 == 0) goto L79
                r4.setAnimListener(r6)
            L79:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils.Companion.startPlay(com.tencent.qgame.animplayer.AnimView, java.io.File, com.tencent.qgame.animplayer.inter.IAnimListener):void");
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016J\u001a\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0015\u001a\u00020\bH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/vap/VaPlayerUtils$IAnimListenerImp;", "Lcom/tencent/qgame/animplayer/inter/IAnimListener;", "animView", "Lcom/tencent/qgame/animplayer/AnimView;", "(Lcom/tencent/qgame/animplayer/AnimView;)V", "getAnimView", "()Lcom/tencent/qgame/animplayer/AnimView;", "onFailed", "", "errorType", "", "errorMsg", "", "onVideoComplete", "onVideoConfigReady", "", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", "onVideoDestroy", "onVideoRender", "frameIndex", "onVideoStart", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class IAnimListenerImp implements IAnimListener {
        @Nullable
        private final AnimView animView;

        public IAnimListenerImp(@Nullable AnimView animView) {
            this.animView = animView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onFailed$lambda-0  reason: not valid java name */
        public static final void m580onFailed$lambda0(IAnimListenerImp this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.onVideoComplete(this$0.animView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onVideoComplete$lambda-1  reason: not valid java name */
        public static final void m581onVideoComplete$lambda1(IAnimListenerImp this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.onVideoComplete(this$0.animView);
        }

        @Nullable
        public final AnimView getAnimView() {
            return this.animView;
        }

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public void onFailed(int i9, @Nullable String str) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.vap.b
                @Override // java.lang.Runnable
                public final void run() {
                    VaPlayerUtils.IAnimListenerImp.m580onFailed$lambda0(VaPlayerUtils.IAnimListenerImp.this);
                }
            });
        }

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public void onVideoComplete() {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.vap.a
                @Override // java.lang.Runnable
                public final void run() {
                    VaPlayerUtils.IAnimListenerImp.m581onVideoComplete$lambda1(VaPlayerUtils.IAnimListenerImp.this);
                }
            });
        }

        public abstract void onVideoComplete(@Nullable AnimView animView);

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public boolean onVideoConfigReady(@NotNull AnimConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            return true;
        }

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public void onVideoDestroy() {
        }

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public void onVideoRender(int i9, @Nullable AnimConfig animConfig) {
        }

        @Override // com.tencent.qgame.animplayer.inter.IAnimListener
        public void onVideoStart() {
        }
    }

    @JvmStatic
    public static final void startPlay(@Nullable AnimView animView, @Nullable File file) {
        Companion.startPlay(animView, file);
    }

    @JvmStatic
    public static final void startPlay(@Nullable AnimView animView, @Nullable File file, @Nullable IAnimListener iAnimListener) {
        Companion.startPlay(animView, file, iAnimListener);
    }
}
