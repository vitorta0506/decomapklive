package com.tencent.qgame.animplayer.mask;

import android.view.MotionEvent;
import com.tencent.qgame.animplayer.AnimConfig;
import com.tencent.qgame.animplayer.AnimPlayer;
import com.tencent.qgame.animplayer.plugin.IAnimPlugin;
import com.tencent.qgame.animplayer.util.ALog;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\b\u0010\u0010\u001a\u00020\fH\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;", "Lcom/tencent/qgame/animplayer/plugin/IAnimPlugin;", "player", "Lcom/tencent/qgame/animplayer/AnimPlayer;", "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V", "animConfig", "Lcom/tencent/qgame/animplayer/AnimConfig;", "maskRender", "Lcom/tencent/qgame/animplayer/mask/MaskRender;", "getPlayer", "()Lcom/tencent/qgame/animplayer/AnimPlayer;", "destroy", "", "onConfigCreate", "", "config", "onDestroy", "onRelease", "onRenderCreate", "onRendering", "frameIndex", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MaskAnimPlugin implements IAnimPlugin {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.MaskAnimPlugin";
    private AnimConfig animConfig;
    private MaskRender maskRender;
    @NotNull
    private final AnimPlayer player;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public MaskAnimPlugin(@NotNull AnimPlayer animPlayer) {
        this.player = animPlayer;
    }

    private final void destroy() {
        MaskConfig maskConfig;
        AnimConfig animConfig = this.animConfig;
        if (animConfig == null || (maskConfig = animConfig.getMaskConfig()) == null) {
            return;
        }
        maskConfig.release();
    }

    @NotNull
    public final AnimPlayer getPlayer() {
        return this.player;
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public int onConfigCreate(@NotNull AnimConfig animConfig) {
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
        return IAnimPlugin.DefaultImpls.onDispatchTouchEvent(this, motionEvent);
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRelease() {
        destroy();
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRenderCreate() {
        ALog.INSTANCE.i(TAG, "mask render init");
        if (this.player.getSupportMaskBoolean()) {
            MaskRender maskRender = new MaskRender(this);
            this.maskRender = maskRender;
            maskRender.initMaskShader(this.player.getMaskEdgeBlurBoolean());
        }
    }

    @Override // com.tencent.qgame.animplayer.plugin.IAnimPlugin
    public void onRendering(int i9) {
        MaskRender maskRender;
        if (this.player.getSupportMaskBoolean() && (this.player.getConfigManager().getConfig() instanceof AnimConfig)) {
            AnimConfig config = this.player.getConfigManager().getConfig();
            this.animConfig = config;
            if (config == null || (maskRender = this.maskRender) == null) {
                return;
            }
            maskRender.renderFrame(config);
        }
    }
}
