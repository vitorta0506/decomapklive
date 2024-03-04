package com.tencent.qgame.animplayer.mix;

import android.opengl.GLES20;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.qgame.animplayer.AnimConfig;
import com.tencent.qgame.animplayer.Decoder;
import com.tencent.qgame.animplayer.IRenderListener;
import com.tencent.qgame.animplayer.PointRect;
import com.tencent.qgame.animplayer.mix.Src;
import com.tencent.qgame.animplayer.util.ALog;
import com.tencent.qgame.animplayer.util.GlFloatArray;
import com.tencent.qgame.animplayer.util.TexCoordsUtil;
import com.tencent.qgame.animplayer.util.TextureLoadUtil;
import com.tencent.qgame.animplayer.util.VertexUtil;
import java.util.Collection;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 .2\u00020\u0001:\u0001.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J8\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001bJ\u001e\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001bH\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\n¨\u0006/"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/MixRender;", "", "mixAnimPlugin", "Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;", "(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V", "maskArray", "Lcom/tencent/qgame/animplayer/util/GlFloatArray;", "getMaskArray", "()Lcom/tencent/qgame/animplayer/util/GlFloatArray;", "setMaskArray", "(Lcom/tencent/qgame/animplayer/util/GlFloatArray;)V", "shader", "Lcom/tencent/qgame/animplayer/mix/MixShader;", "getShader", "()Lcom/tencent/qgame/animplayer/mix/MixShader;", "setShader", "(Lcom/tencent/qgame/animplayer/mix/MixShader;)V", "srcArray", "getSrcArray", "setSrcArray", "vertexArray", "getVertexArray", "setVertexArray", "genSrcCoordsArray", "", "array", "fw", "", "fh", "sw", "sh", "fitType", "Lcom/tencent/qgame/animplayer/mix/Src$FitType;", "init", "", "release", "textureId", "renderFrame", "config", "Lcom/tencent/qgame/animplayer/AnimConfig;", TypedValues.AttributesType.S_FRAME, "Lcom/tencent/qgame/animplayer/mix/Frame;", "src", "Lcom/tencent/qgame/animplayer/mix/Src;", "transColor", "color", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class MixRender {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.MixRender";
    private final MixAnimPlugin mixAnimPlugin;
    @Nullable
    private MixShader shader;
    @NotNull
    private GlFloatArray vertexArray = new GlFloatArray();
    @NotNull
    private GlFloatArray srcArray = new GlFloatArray();
    @NotNull
    private GlFloatArray maskArray = new GlFloatArray();

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/MixRender$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public MixRender(@NotNull MixAnimPlugin mixAnimPlugin) {
        this.mixAnimPlugin = mixAnimPlugin;
    }

    private final float[] genSrcCoordsArray(float[] fArr, int i9, int i10, int i11, int i12, Src.FitType fitType) {
        PointRect pointRect;
        if (fitType == Src.FitType.CENTER_FULL) {
            if (i9 <= i11 && i10 <= i12) {
                return TexCoordsUtil.INSTANCE.create(i11, i12, new PointRect((i11 - i9) / 2, (i12 - i10) / 2, i9, i10), fArr);
            }
            float f10 = (i9 * 1.0f) / i10;
            float f11 = i11;
            float f12 = i12;
            if (f10 > (1.0f * f11) / f12) {
                int i13 = (int) (f11 / f10);
                pointRect = new PointRect(0, (i12 - i13) / 2, i11, i13);
            } else {
                int i14 = (int) (f12 * f10);
                pointRect = new PointRect((i11 - i14) / 2, 0, i14, i12);
            }
            return TexCoordsUtil.INSTANCE.create(i11, i12, pointRect, fArr);
        }
        return TexCoordsUtil.INSTANCE.create(i9, i10, new PointRect(0, 0, i9, i10), fArr);
    }

    private final float[] transColor(int i9) {
        return new float[]{((i9 >>> 24) & 255) / 255.0f, ((i9 >>> 16) & 255) / 255.0f, ((i9 >>> 8) & 255) / 255.0f, (i9 & 255) / 255.0f};
    }

    @NotNull
    public final GlFloatArray getMaskArray() {
        return this.maskArray;
    }

    @Nullable
    public final MixShader getShader() {
        return this.shader;
    }

    @NotNull
    public final GlFloatArray getSrcArray() {
        return this.srcArray;
    }

    @NotNull
    public final GlFloatArray getVertexArray() {
        return this.vertexArray;
    }

    public final void init() {
        HashMap<String, Src> map;
        Collection<Src> values;
        this.shader = new MixShader();
        GLES20.glDisable(2929);
        SrcMap srcMap = this.mixAnimPlugin.getSrcMap();
        if (srcMap == null || (map = srcMap.getMap()) == null || (values = map.values()) == null) {
            return;
        }
        for (Src src : values) {
            ALog aLog = ALog.INSTANCE;
            aLog.i(TAG, "init srcId=" + src.getSrcId());
            src.setSrcTextureId(TextureLoadUtil.INSTANCE.loadTexture(src.getBitmap()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("textureProgram=");
            MixShader mixShader = this.shader;
            sb2.append(mixShader != null ? Integer.valueOf(mixShader.getProgram()) : null);
            sb2.append(",textureId=");
            sb2.append(src.getSrcTextureId());
            aLog.i(TAG, sb2.toString());
        }
    }

    public final void release(int i9) {
        if (i9 != 0) {
            GLES20.glDeleteTextures(1, new int[]{i9}, 0);
        }
    }

    public final void renderFrame(@NotNull AnimConfig animConfig, @NotNull Frame frame, @NotNull Src src) {
        IRenderListener render;
        int externalTexture;
        MixShader mixShader;
        Decoder decoder = this.mixAnimPlugin.getPlayer().getDecoder();
        if (decoder == null || (render = decoder.getRender()) == null || (externalTexture = render.getExternalTexture()) <= 0 || (mixShader = this.shader) == null) {
            return;
        }
        mixShader.useProgram();
        this.vertexArray.setArray(VertexUtil.INSTANCE.create(animConfig.getWidth(), animConfig.getHeight(), frame.getFrame(), this.vertexArray.getArray()));
        this.vertexArray.setVertexAttribPointer(mixShader.getAPositionLocation());
        GlFloatArray glFloatArray = this.srcArray;
        glFloatArray.setArray(genSrcCoordsArray(glFloatArray.getArray(), frame.getFrame().getW(), frame.getFrame().getH(), src.getW(), src.getH(), src.getFitType()));
        this.srcArray.setVertexAttribPointer(mixShader.getATextureSrcCoordinatesLocation());
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, src.getSrcTextureId());
        GLES20.glUniform1i(mixShader.getUTextureSrcUnitLocation(), 0);
        GlFloatArray glFloatArray2 = this.maskArray;
        TexCoordsUtil texCoordsUtil = TexCoordsUtil.INSTANCE;
        glFloatArray2.setArray(texCoordsUtil.create(animConfig.getVideoWidth(), animConfig.getVideoHeight(), frame.getMFrame(), this.maskArray.getArray()));
        if (frame.getMt() == 90) {
            GlFloatArray glFloatArray3 = this.maskArray;
            glFloatArray3.setArray(texCoordsUtil.rotate90(glFloatArray3.getArray()));
        }
        this.maskArray.setVertexAttribPointer(mixShader.getATextureMaskCoordinatesLocation());
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(36197, externalTexture);
        GLES20.glUniform1i(mixShader.getUTextureMaskUnitLocation(), 1);
        if (src.getSrcType() == Src.SrcType.TXT && this.mixAnimPlugin.getAutoTxtColorFill()) {
            GLES20.glUniform1i(mixShader.getUIsFillLocation(), 1);
            float[] transColor = transColor(src.getColor());
            GLES20.glUniform4f(mixShader.getUColorLocation(), transColor[1], transColor[2], transColor[3], transColor[0]);
        } else {
            GLES20.glUniform1i(mixShader.getUIsFillLocation(), 0);
            GLES20.glUniform4f(mixShader.getUColorLocation(), 0.0f, 0.0f, 0.0f, 0.0f);
        }
        GLES20.glEnable(3042);
        GLES20.glBlendFuncSeparate(770, 771, 1, 771);
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisable(3042);
    }

    public final void setMaskArray(@NotNull GlFloatArray glFloatArray) {
        this.maskArray = glFloatArray;
    }

    public final void setShader(@Nullable MixShader mixShader) {
        this.shader = mixShader;
    }

    public final void setSrcArray(@NotNull GlFloatArray glFloatArray) {
        this.srcArray = glFloatArray;
    }

    public final void setVertexArray(@NotNull GlFloatArray glFloatArray) {
        this.vertexArray = glFloatArray;
    }
}
