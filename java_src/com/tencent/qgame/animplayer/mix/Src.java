package com.tencent.qgame.animplayer.mix;

import android.graphics.Bitmap;
import com.facebook.internal.AnalyticsEvents;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 ?2\u00020\u0001:\u0005?@ABCB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010>\u001a\u00020!H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\u001a\u0010)\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000e\"\u0004\b+\u0010\u0010R\u001a\u0010,\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u00102\u001a\u000203X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u00108\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010#\"\u0004\b:\u0010%R\u001a\u0010;\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u000e\"\u0004\b=\u0010\u0010¨\u0006D"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src;", "", "json", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "color", "", "getColor", "()I", "setColor", "(I)V", "fitType", "Lcom/tencent/qgame/animplayer/mix/Src$FitType;", "getFitType", "()Lcom/tencent/qgame/animplayer/mix/Src$FitType;", "setFitType", "(Lcom/tencent/qgame/animplayer/mix/Src$FitType;)V", "h", "getH", "setH", "loadType", "Lcom/tencent/qgame/animplayer/mix/Src$LoadType;", "getLoadType", "()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;", "setLoadType", "(Lcom/tencent/qgame/animplayer/mix/Src$LoadType;)V", "srcId", "", "getSrcId", "()Ljava/lang/String;", "setSrcId", "(Ljava/lang/String;)V", "srcTag", "getSrcTag", "setSrcTag", "srcTextureId", "getSrcTextureId", "setSrcTextureId", "srcType", "Lcom/tencent/qgame/animplayer/mix/Src$SrcType;", "getSrcType", "()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;", "setSrcType", "(Lcom/tencent/qgame/animplayer/mix/Src$SrcType;)V", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "Lcom/tencent/qgame/animplayer/mix/Src$Style;", "getStyle", "()Lcom/tencent/qgame/animplayer/mix/Src$Style;", "setStyle", "(Lcom/tencent/qgame/animplayer/mix/Src$Style;)V", "txt", "getTxt", "setTxt", "w", "getW", "setW", "toString", "Companion", "FitType", "LoadType", "SrcType", "Style", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class Src {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AnimPlayer.Src";
    @Nullable
    private Bitmap bitmap;
    private int color;
    @NotNull
    private FitType fitType;

    /* renamed from: h  reason: collision with root package name */
    private int f33378h;
    @NotNull
    private LoadType loadType;
    @NotNull
    private String srcId;
    @NotNull
    private String srcTag;
    private int srcTextureId;
    @NotNull
    private SrcType srcType;
    @NotNull
    private Style style;
    @NotNull
    private String txt;

    /* renamed from: w  reason: collision with root package name */
    private int f33379w;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src$Companion;", "", "()V", "TAG", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src$FitType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "FIT_XY", "CENTER_FULL", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public enum FitType {
        FIT_XY("fitXY"),
        CENTER_FULL("centerFull");
        
        @NotNull
        private final String type;

        FitType(String str) {
            this.type = str;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src$LoadType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", GrsBaseInfo.CountryCodeSource.UNKNOWN, "NET", "LOCAL", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public enum LoadType {
        UNKNOWN("unknown"),
        NET("net"),
        LOCAL("local");
        
        @NotNull
        private final String type;

        LoadType(String str) {
            this.type = str;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src$SrcType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", GrsBaseInfo.CountryCodeSource.UNKNOWN, "IMG", "TXT", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public enum SrcType {
        UNKNOWN("unknown"),
        IMG("img"),
        TXT("txt");
        
        @NotNull
        private final String type;

        SrcType(String str) {
            this.type = str;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Src$Style;", "", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getStyle", "()Ljava/lang/String;", "DEFAULT", "BOLD", "animplayer_release"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes4.dex */
    public enum Style {
        DEFAULT(V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND),
        BOLD("b");
        
        @NotNull
        private final String style;

        Style(String str) {
            this.style = str;
        }

        @NotNull
        public final String getStyle() {
            return this.style;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0089, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r5, r7.getType()) != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ac, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, r5.getType()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Src(@org.jetbrains.annotations.NotNull org.json.JSONObject r10) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qgame.animplayer.mix.Src.<init>(org.json.JSONObject):void");
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final int getColor() {
        return this.color;
    }

    @NotNull
    public final FitType getFitType() {
        return this.fitType;
    }

    public final int getH() {
        return this.f33378h;
    }

    @NotNull
    public final LoadType getLoadType() {
        return this.loadType;
    }

    @NotNull
    public final String getSrcId() {
        return this.srcId;
    }

    @NotNull
    public final String getSrcTag() {
        return this.srcTag;
    }

    public final int getSrcTextureId() {
        return this.srcTextureId;
    }

    @NotNull
    public final SrcType getSrcType() {
        return this.srcType;
    }

    @NotNull
    public final Style getStyle() {
        return this.style;
    }

    @NotNull
    public final String getTxt() {
        return this.txt;
    }

    public final int getW() {
        return this.f33379w;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setColor(int i9) {
        this.color = i9;
    }

    public final void setFitType(@NotNull FitType fitType) {
        this.fitType = fitType;
    }

    public final void setH(int i9) {
        this.f33378h = i9;
    }

    public final void setLoadType(@NotNull LoadType loadType) {
        this.loadType = loadType;
    }

    public final void setSrcId(@NotNull String str) {
        this.srcId = str;
    }

    public final void setSrcTag(@NotNull String str) {
        this.srcTag = str;
    }

    public final void setSrcTextureId(int i9) {
        this.srcTextureId = i9;
    }

    public final void setSrcType(@NotNull SrcType srcType) {
        this.srcType = srcType;
    }

    public final void setStyle(@NotNull Style style) {
        this.style = style;
    }

    public final void setTxt(@NotNull String str) {
        this.txt = str;
    }

    public final void setW(int i9) {
        this.f33379w = i9;
    }

    @NotNull
    public String toString() {
        return "Src(srcId='" + this.srcId + "', srcType=" + this.srcType + ", loadType=" + this.loadType + ", srcTag='" + this.srcTag + "', bitmap=" + this.bitmap + ", txt='" + this.txt + "')";
    }
}
