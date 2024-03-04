package com.opensource.svgaplayer.entities;

import com.opensource.svgaplayer.BuildConfig;
import com.opensource.svgaplayer.proto.AudioEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001e\u001a\u00020\u001fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000eR\u0011\u0010\u001a\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u000eR\u0011\u0010\u001c\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u000e¨\u0006 "}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;", "", "audioItem", "Lcom/opensource/svgaplayer/proto/AudioEntity;", "(Lcom/opensource/svgaplayer/proto/AudioEntity;)V", "getAudioItem", "()Lcom/opensource/svgaplayer/proto/AudioEntity;", "audioKey", "", "getAudioKey", "()Ljava/lang/String;", "endFrame", "", "getEndFrame", "()I", "playID", "getPlayID", "()Ljava/lang/Integer;", "setPlayID", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "soundID", "getSoundID", "setSoundID", "startFrame", "getStartFrame", "startTime", "getStartTime", "totalTime", "getTotalTime", "release", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAAudioEntity {
    @NotNull
    private final AudioEntity audioItem;
    @Nullable
    private final String audioKey;
    private final int endFrame;
    @Nullable
    private Integer playID;
    @Nullable
    private Integer soundID;
    private final int startFrame;
    private final int startTime;
    private final int totalTime;

    public SVGAAudioEntity(@NotNull AudioEntity audioItem) {
        Intrinsics.checkNotNullParameter(audioItem, "audioItem");
        this.audioItem = audioItem;
        this.audioKey = audioItem.audioKey;
        Integer num = audioItem.startFrame;
        this.startFrame = num == null ? 0 : num.intValue();
        Integer num2 = audioItem.endFrame;
        this.endFrame = num2 == null ? 0 : num2.intValue();
        Integer num3 = audioItem.startTime;
        this.startTime = num3 == null ? 0 : num3.intValue();
        Integer num4 = audioItem.totalTime;
        this.totalTime = num4 != null ? num4.intValue() : 0;
    }

    @NotNull
    public final AudioEntity getAudioItem() {
        return this.audioItem;
    }

    @Nullable
    public final String getAudioKey() {
        return this.audioKey;
    }

    public final int getEndFrame() {
        return this.endFrame;
    }

    @Nullable
    public final Integer getPlayID() {
        return this.playID;
    }

    @Nullable
    public final Integer getSoundID() {
        return this.soundID;
    }

    public final int getStartFrame() {
        return this.startFrame;
    }

    public final int getStartTime() {
        return this.startTime;
    }

    public final int getTotalTime() {
        return this.totalTime;
    }

    public final void release() {
        this.audioItem.release();
    }

    public final void setPlayID(@Nullable Integer num) {
        this.playID = num;
    }

    public final void setSoundID(@Nullable Integer num) {
        this.soundID = num;
    }
}
