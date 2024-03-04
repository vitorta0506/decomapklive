package com.tencent.qgame.animplayer.mix;

import android.graphics.Bitmap;
import com.tencent.qgame.animplayer.mix.Src;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/tencent/qgame/animplayer/mix/Resource;", "", "src", "Lcom/tencent/qgame/animplayer/mix/Src;", "(Lcom/tencent/qgame/animplayer/mix/Src;)V", "bitmap", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "loadType", "Lcom/tencent/qgame/animplayer/mix/Src$LoadType;", "getLoadType", "()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;", "setLoadType", "(Lcom/tencent/qgame/animplayer/mix/Src$LoadType;)V", "tag", "getTag", "setTag", "type", "Lcom/tencent/qgame/animplayer/mix/Src$SrcType;", "getType", "()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;", "setType", "(Lcom/tencent/qgame/animplayer/mix/Src$SrcType;)V", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class Resource {
    @Nullable
    private Bitmap bitmap;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private String f33377id;
    @NotNull
    private Src.LoadType loadType;
    @NotNull
    private String tag;
    @NotNull
    private Src.SrcType type;

    public Resource(@NotNull Src src) {
        this.f33377id = "";
        this.type = Src.SrcType.UNKNOWN;
        this.loadType = Src.LoadType.UNKNOWN;
        this.tag = "";
        this.f33377id = src.getSrcId();
        this.type = src.getSrcType();
        this.loadType = src.getLoadType();
        this.tag = src.getSrcTag();
        this.bitmap = src.getBitmap();
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getId() {
        return this.f33377id;
    }

    @NotNull
    public final Src.LoadType getLoadType() {
        return this.loadType;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final Src.SrcType getType() {
        return this.type;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setId(@NotNull String str) {
        this.f33377id = str;
    }

    public final void setLoadType(@NotNull Src.LoadType loadType) {
        this.loadType = loadType;
    }

    public final void setTag(@NotNull String str) {
        this.tag = str;
    }

    public final void setType(@NotNull Src.SrcType srcType) {
        this.type = srcType;
    }
}
