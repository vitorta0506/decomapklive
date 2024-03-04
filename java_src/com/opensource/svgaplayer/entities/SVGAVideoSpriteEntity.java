package com.opensource.svgaplayer.entities;

import com.opensource.svgaplayer.BuildConfig;
import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.SpriteEntity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0006¨\u0006\u0017"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/SpriteEntity;", "(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V", "frames", "", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "getFrames", "()Ljava/util/List;", "imageKey", "", "getImageKey", "()Ljava/lang/String;", "matteKey", "getMatteKey", "getObj", "()Lcom/opensource/svgaplayer/proto/SpriteEntity;", "setObj", "release", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAVideoSpriteEntity {
    @NotNull
    private final List<SVGAVideoSpriteFrameEntity> frames;
    @Nullable
    private final String imageKey;
    @Nullable
    private final String matteKey;
    @Nullable
    private SpriteEntity obj;

    public SVGAVideoSpriteEntity(@NotNull JSONObject obj) {
        List<SVGAVideoSpriteFrameEntity> list;
        Object first;
        Object last;
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.imageKey = obj.optString("imageKey");
        this.matteKey = obj.optString("matteKey");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = obj.optJSONArray("frames");
        if (optJSONArray != null) {
            int i9 = 0;
            int length = optJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i9);
                    if (optJSONObject != null) {
                        SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity = new SVGAVideoSpriteFrameEntity(optJSONObject);
                        if (!sVGAVideoSpriteFrameEntity.getShapes().isEmpty()) {
                            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sVGAVideoSpriteFrameEntity.getShapes());
                            if (((SVGAVideoShapeEntity) first).isKeep() && arrayList.size() > 0) {
                                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) arrayList);
                                sVGAVideoSpriteFrameEntity.setShapes(((SVGAVideoSpriteFrameEntity) last).getShapes());
                            }
                        }
                        arrayList.add(sVGAVideoSpriteFrameEntity);
                    }
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.frames = list;
    }

    @NotNull
    public final List<SVGAVideoSpriteFrameEntity> getFrames() {
        return this.frames;
    }

    @Nullable
    public final String getImageKey() {
        return this.imageKey;
    }

    @Nullable
    public final String getMatteKey() {
        return this.matteKey;
    }

    @Nullable
    public final SpriteEntity getObj() {
        return this.obj;
    }

    public final void release() {
        SpriteEntity spriteEntity = this.obj;
        if (spriteEntity != null) {
            spriteEntity.release();
        }
        this.obj = null;
    }

    public final void setObj(@Nullable SpriteEntity spriteEntity) {
        this.obj = spriteEntity;
    }

    public SVGAVideoSpriteEntity(@NotNull SpriteEntity obj) {
        int collectionSizeOrDefault;
        Object first;
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.imageKey = obj.imageKey;
        this.matteKey = obj.matteKey;
        List<FrameEntity> list = obj.frames;
        List<SVGAVideoSpriteFrameEntity> list2 = null;
        SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity = null;
        if (list != null) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (FrameEntity it : list) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity2 = new SVGAVideoSpriteFrameEntity(it);
                if (!sVGAVideoSpriteFrameEntity2.getShapes().isEmpty()) {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) sVGAVideoSpriteFrameEntity2.getShapes());
                    if (((SVGAVideoShapeEntity) first).isKeep() && sVGAVideoSpriteFrameEntity != null) {
                        sVGAVideoSpriteFrameEntity2.setShapes(sVGAVideoSpriteFrameEntity.getShapes());
                    }
                }
                arrayList.add(sVGAVideoSpriteFrameEntity2);
                sVGAVideoSpriteFrameEntity = sVGAVideoSpriteFrameEntity2;
            }
            list2 = arrayList;
        }
        this.frames = list2 == null ? CollectionsKt__CollectionsKt.emptyList() : list2;
    }
}
