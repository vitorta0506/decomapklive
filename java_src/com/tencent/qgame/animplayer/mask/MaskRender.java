package com.tencent.qgame.animplayer.mask;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import com.tencent.qgame.animplayer.AnimConfig;
import com.tencent.qgame.animplayer.Decoder;
import com.tencent.qgame.animplayer.IRenderListener;
import com.tencent.qgame.animplayer.PointRect;
import com.tencent.qgame.animplayer.RefVec2;
import com.tencent.qgame.animplayer.util.GlFloatArray;
import com.tencent.qgame.animplayer.util.TexCoordsUtil;
import com.tencent.qgame.animplayer.util.VertexUtil;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, d2 = {"Lcom/tencent/qgame/animplayer/mask/MaskRender;", "", "maskAnimPlugin", "Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;", "(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V", "maskArray", "Lcom/tencent/qgame/animplayer/util/GlFloatArray;", "maskShader", "Lcom/tencent/qgame/animplayer/mask/MaskShader;", "getMaskShader", "()Lcom/tencent/qgame/animplayer/mask/MaskShader;", "setMaskShader", "(Lcom/tencent/qgame/animplayer/mask/MaskShader;)V", "vertexArray", "getVertexArray", "()Lcom/tencent/qgame/animplayer/util/GlFloatArray;", "setVertexArray", "(Lcom/tencent/qgame/animplayer/util/GlFloatArray;)V", "initMaskShader", "", "edgeBlur", "", "renderFrame", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MaskRender {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.MaskRender";
    private final MaskAnimPlugin maskAnimPlugin;
    @Nullable
    private MaskShader maskShader;
    @NotNull
    private GlFloatArray vertexArray = new GlFloatArray();
    private GlFloatArray maskArray = new GlFloatArray();

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/mask/MaskRender$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public MaskRender(@NotNull MaskAnimPlugin maskAnimPlugin) {
        this.maskAnimPlugin = maskAnimPlugin;
    }

    @Nullable
    public final MaskShader getMaskShader() {
        return this.maskShader;
    }

    @NotNull
    public final GlFloatArray getVertexArray() {
        return this.vertexArray;
    }

    public final void initMaskShader(boolean z10) {
        this.maskShader = new MaskShader(z10);
        GLES20.glDisable(2929);
    }

    public final void renderFrame(@NotNull AnimConfig animConfig) {
        IRenderListener render;
        MaskShader maskShader;
        MaskConfig maskConfig;
        Bitmap alphaMaskBitmap;
        MaskConfig maskConfig2;
        Pair<PointRect, RefVec2> maskTexPair;
        PointRect first;
        MaskConfig maskConfig3;
        Pair<PointRect, RefVec2> maskTexPair2;
        RefVec2 second;
        PointRect pointRect;
        RefVec2 refVec2;
        Pair<PointRect, RefVec2> maskPositionPair;
        Pair<PointRect, RefVec2> maskPositionPair2;
        Decoder decoder = this.maskAnimPlugin.getPlayer().getDecoder();
        if (decoder == null || (render = decoder.getRender()) == null || render.getExternalTexture() <= 0 || (maskShader = this.maskShader) == null || (maskConfig = animConfig.getMaskConfig()) == null) {
            return;
        }
        int maskTexId = maskConfig.getMaskTexId();
        MaskConfig maskConfig4 = animConfig.getMaskConfig();
        if (maskConfig4 == null || (alphaMaskBitmap = maskConfig4.getAlphaMaskBitmap()) == null || (maskConfig2 = animConfig.getMaskConfig()) == null || (maskTexPair = maskConfig2.getMaskTexPair()) == null || (first = maskTexPair.getFirst()) == null || (maskConfig3 = animConfig.getMaskConfig()) == null || (maskTexPair2 = maskConfig3.getMaskTexPair()) == null || (second = maskTexPair2.getSecond()) == null) {
            return;
        }
        MaskConfig maskConfig5 = animConfig.getMaskConfig();
        if (maskConfig5 == null || (maskPositionPair2 = maskConfig5.getMaskPositionPair()) == null || (pointRect = maskPositionPair2.getFirst()) == null) {
            pointRect = new PointRect(0, 0, animConfig.getWidth(), animConfig.getHeight());
        }
        MaskConfig maskConfig6 = animConfig.getMaskConfig();
        if (maskConfig6 == null || (maskPositionPair = maskConfig6.getMaskPositionPair()) == null || (refVec2 = maskPositionPair.getSecond()) == null) {
            refVec2 = new RefVec2(animConfig.getWidth(), animConfig.getHeight());
        }
        maskShader.useProgram();
        this.vertexArray.setArray(VertexUtil.INSTANCE.create(refVec2.getW(), refVec2.getH(), pointRect, this.vertexArray.getArray()));
        this.vertexArray.setVertexAttribPointer(maskShader.getAPositionLocation());
        if (maskTexId <= 0 && !alphaMaskBitmap.isRecycled()) {
            MaskConfig maskConfig7 = animConfig.getMaskConfig();
            maskTexId = maskConfig7 != null ? maskConfig7.updateMaskTex() : 0;
        }
        if (maskTexId > 0) {
            this.maskArray.setArray(TexCoordsUtil.INSTANCE.create(second.getW(), second.getH(), first, this.maskArray.getArray()));
            this.maskArray.setVertexAttribPointer(maskShader.getATextureMaskCoordinatesLocation());
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, maskTexId);
            GLES20.glTexParameterf(3553, 10241, 9728);
            GLES20.glTexParameterf(3553, 10240, 9729);
            GLES20.glTexParameteri(36197, 10242, 33071);
            GLES20.glTexParameteri(36197, 10243, 33071);
            GLES20.glUniform1i(maskShader.getUTextureMaskUnitLocation(), 0);
            GLES20.glEnable(3042);
            GLES20.glBlendFuncSeparate(1, 770, 0, 770);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glDisable(3042);
        }
    }

    public final void setMaskShader(@Nullable MaskShader maskShader) {
        this.maskShader = maskShader;
    }

    public final void setVertexArray(@NotNull GlFloatArray glFloatArray) {
        this.vertexArray = glFloatArray;
    }
}
