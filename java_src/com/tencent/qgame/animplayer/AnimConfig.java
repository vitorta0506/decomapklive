package com.tencent.qgame.animplayer;

import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.qgame.animplayer.mask.MaskConfig;
import com.tencent.qgame.animplayer.util.ALog;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 @2\u00020\u0001:\u0001@B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010<\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\u001dJ\b\u0010>\u001a\u00020?H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\f\"\u0004\b*\u0010\u000eR\u001a\u0010+\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\u001a\u0010.\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\f\"\u0004\b0\u0010\u000eR\u0014\u00101\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\fR\u001a\u00103\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\f\"\u0004\b5\u0010\u000eR\u001a\u00106\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\f\"\u0004\b8\u0010\u000eR\u001a\u00109\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\f\"\u0004\b;\u0010\u000e¨\u0006A"}, d2 = {"Lcom/tencent/qgame/animplayer/AnimConfig;", "", "()V", "alphaPointRect", "Lcom/tencent/qgame/animplayer/PointRect;", "getAlphaPointRect", "()Lcom/tencent/qgame/animplayer/PointRect;", "setAlphaPointRect", "(Lcom/tencent/qgame/animplayer/PointRect;)V", "defaultVideoMode", "", "getDefaultVideoMode", "()I", "setDefaultVideoMode", "(I)V", "fps", "getFps", "setFps", "height", "getHeight", "setHeight", "isDefaultConfig", "", "()Z", "setDefaultConfig", "(Z)V", "isMix", "setMix", "jsonConfig", "Lorg/json/JSONObject;", "getJsonConfig", "()Lorg/json/JSONObject;", "setJsonConfig", "(Lorg/json/JSONObject;)V", "maskConfig", "Lcom/tencent/qgame/animplayer/mask/MaskConfig;", "getMaskConfig", "()Lcom/tencent/qgame/animplayer/mask/MaskConfig;", "setMaskConfig", "(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V", "orien", "getOrien", "setOrien", "rgbPointRect", "getRgbPointRect", "setRgbPointRect", "totalFrames", "getTotalFrames", "setTotalFrames", "version", "getVersion", "videoHeight", "getVideoHeight", "setVideoHeight", "videoWidth", "getVideoWidth", "setVideoWidth", "width", "getWidth", "setWidth", "parse", "json", "toString", "", "Companion", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class AnimConfig {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.AnimConfig";
    private int fps;
    private int height;
    private boolean isDefaultConfig;
    private boolean isMix;
    @Nullable
    private JSONObject jsonConfig;
    @Nullable
    private MaskConfig maskConfig;
    private int orien;
    private int totalFrames;
    private int videoHeight;
    private int videoWidth;
    private int width;
    private final int version = 2;
    @NotNull
    private PointRect alphaPointRect = new PointRect(0, 0, 0, 0);
    @NotNull
    private PointRect rgbPointRect = new PointRect(0, 0, 0, 0);
    private int defaultVideoMode = 1;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/AnimConfig$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @NotNull
    public final PointRect getAlphaPointRect() {
        return this.alphaPointRect;
    }

    public final int getDefaultVideoMode() {
        return this.defaultVideoMode;
    }

    public final int getFps() {
        return this.fps;
    }

    public final int getHeight() {
        return this.height;
    }

    @Nullable
    public final JSONObject getJsonConfig() {
        return this.jsonConfig;
    }

    @Nullable
    public final MaskConfig getMaskConfig() {
        return this.maskConfig;
    }

    public final int getOrien() {
        return this.orien;
    }

    @NotNull
    public final PointRect getRgbPointRect() {
        return this.rgbPointRect;
    }

    public final int getTotalFrames() {
        return this.totalFrames;
    }

    public final int getVersion() {
        return this.version;
    }

    public final int getVideoHeight() {
        return this.videoHeight;
    }

    public final int getVideoWidth() {
        return this.videoWidth;
    }

    public final int getWidth() {
        return this.width;
    }

    public final boolean isDefaultConfig() {
        return this.isDefaultConfig;
    }

    public final boolean isMix() {
        return this.isMix;
    }

    public final boolean parse(@NotNull JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("info");
            int i9 = jSONObject2.getInt(NotifyType.VIBRATE);
            if (this.version != i9) {
                ALog aLog = ALog.INSTANCE;
                aLog.e(TAG, "current version=" + this.version + " target=" + i9);
                return false;
            }
            this.totalFrames = jSONObject2.getInt("f");
            this.width = jSONObject2.getInt("w");
            this.height = jSONObject2.getInt("h");
            this.videoWidth = jSONObject2.getInt("videoW");
            this.videoHeight = jSONObject2.getInt("videoH");
            this.orien = jSONObject2.getInt("orien");
            this.fps = jSONObject2.getInt("fps");
            this.isMix = jSONObject2.getInt("isVapx") == 1;
            JSONArray jSONArray = jSONObject2.getJSONArray("aFrame");
            if (jSONArray != null) {
                this.alphaPointRect = new PointRect(jSONArray.getInt(0), jSONArray.getInt(1), jSONArray.getInt(2), jSONArray.getInt(3));
                JSONArray jSONArray2 = jSONObject2.getJSONArray("rgbFrame");
                if (jSONArray2 != null) {
                    this.rgbPointRect = new PointRect(jSONArray2.getInt(0), jSONArray2.getInt(1), jSONArray2.getInt(2), jSONArray2.getInt(3));
                    return true;
                }
            }
            return false;
        } catch (JSONException e10) {
            ALog aLog2 = ALog.INSTANCE;
            aLog2.e(TAG, "json parse fail " + e10, e10);
            return false;
        }
    }

    public final void setAlphaPointRect(@NotNull PointRect pointRect) {
        this.alphaPointRect = pointRect;
    }

    public final void setDefaultConfig(boolean z10) {
        this.isDefaultConfig = z10;
    }

    public final void setDefaultVideoMode(int i9) {
        this.defaultVideoMode = i9;
    }

    public final void setFps(int i9) {
        this.fps = i9;
    }

    public final void setHeight(int i9) {
        this.height = i9;
    }

    public final void setJsonConfig(@Nullable JSONObject jSONObject) {
        this.jsonConfig = jSONObject;
    }

    public final void setMaskConfig(@Nullable MaskConfig maskConfig) {
        this.maskConfig = maskConfig;
    }

    public final void setMix(boolean z10) {
        this.isMix = z10;
    }

    public final void setOrien(int i9) {
        this.orien = i9;
    }

    public final void setRgbPointRect(@NotNull PointRect pointRect) {
        this.rgbPointRect = pointRect;
    }

    public final void setTotalFrames(int i9) {
        this.totalFrames = i9;
    }

    public final void setVideoHeight(int i9) {
        this.videoHeight = i9;
    }

    public final void setVideoWidth(int i9) {
        this.videoWidth = i9;
    }

    public final void setWidth(int i9) {
        this.width = i9;
    }

    @NotNull
    public String toString() {
        return "AnimConfig(version=" + this.version + ", totalFrames=" + this.totalFrames + ", width=" + this.width + ", height=" + this.height + ", videoWidth=" + this.videoWidth + ", videoHeight=" + this.videoHeight + ", orien=" + this.orien + ", fps=" + this.fps + ", isMix=" + this.isMix + ", alphaPointRect=" + this.alphaPointRect + ", rgbPointRect=" + this.rgbPointRect + ", isDefaultConfig=" + this.isDefaultConfig + ')';
    }
}
