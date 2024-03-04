package com.opensource.svgaplayer.entities;

import android.graphics.Matrix;
import com.opensource.svgaplayer.BuildConfig;
import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.Layout;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import com.opensource.svgaplayer.utils.SVGARect;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/FrameEntity;", "(Lcom/opensource/svgaplayer/proto/FrameEntity;)V", "alpha", "", "getAlpha", "()D", "setAlpha", "(D)V", "layout", "Lcom/opensource/svgaplayer/utils/SVGARect;", "getLayout", "()Lcom/opensource/svgaplayer/utils/SVGARect;", "setLayout", "(Lcom/opensource/svgaplayer/utils/SVGARect;)V", "maskPath", "Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "getMaskPath", "()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "setMaskPath", "(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V", "shapes", "", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "getShapes", "()Ljava/util/List;", "setShapes", "(Ljava/util/List;)V", "transform", "Landroid/graphics/Matrix;", "getTransform", "()Landroid/graphics/Matrix;", "setTransform", "(Landroid/graphics/Matrix;)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAVideoSpriteFrameEntity {
    private double alpha;
    @NotNull
    private SVGARect layout;
    @Nullable
    private SVGAPathEntity maskPath;
    @NotNull
    private List<SVGAVideoShapeEntity> shapes;
    @NotNull
    private Matrix transform;

    /* JADX WARN: Removed duplicated region for block: B:22:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SVGAVideoSpriteFrameEntity(@org.jetbrains.annotations.NotNull org.json.JSONObject r16) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.entities.SVGAVideoSpriteFrameEntity.<init>(org.json.JSONObject):void");
    }

    public final double getAlpha() {
        return this.alpha;
    }

    @NotNull
    public final SVGARect getLayout() {
        return this.layout;
    }

    @Nullable
    public final SVGAPathEntity getMaskPath() {
        return this.maskPath;
    }

    @NotNull
    public final List<SVGAVideoShapeEntity> getShapes() {
        return this.shapes;
    }

    @NotNull
    public final Matrix getTransform() {
        return this.transform;
    }

    public final void setAlpha(double d10) {
        this.alpha = d10;
    }

    public final void setLayout(@NotNull SVGARect sVGARect) {
        Intrinsics.checkNotNullParameter(sVGARect, "<set-?>");
        this.layout = sVGARect;
    }

    public final void setMaskPath(@Nullable SVGAPathEntity sVGAPathEntity) {
        this.maskPath = sVGAPathEntity;
    }

    public final void setShapes(@NotNull List<SVGAVideoShapeEntity> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shapes = list;
    }

    public final void setTransform(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.transform = matrix;
    }

    public SVGAVideoSpriteFrameEntity(@NotNull FrameEntity obj) {
        List<SVGAVideoShapeEntity> emptyList;
        Float f10;
        int collectionSizeOrDefault;
        Float f11;
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.layout = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.transform = new Matrix();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.shapes = emptyList;
        this.alpha = obj.alpha == null ? 0.0f : f10.floatValue();
        Layout layout = obj.layout;
        if (layout != null) {
            Float f12 = layout.f28857x;
            double floatValue = f12 == null ? 0.0f : f12.floatValue();
            Float f13 = layout.f28858y;
            double floatValue2 = f13 == null ? 0.0f : f13.floatValue();
            Float f14 = layout.width;
            setLayout(new SVGARect(floatValue, floatValue2, f14 == null ? 0.0f : f14.floatValue(), layout.height == null ? 0.0f : f11.floatValue()));
        }
        Transform transform = obj.transform;
        if (transform != null) {
            float[] fArr = new float[9];
            Float f15 = transform.f28879a;
            float floatValue3 = f15 == null ? 1.0f : f15.floatValue();
            Float f16 = transform.f28880b;
            float floatValue4 = f16 == null ? 0.0f : f16.floatValue();
            Float f17 = transform.f28881c;
            float floatValue5 = f17 == null ? 0.0f : f17.floatValue();
            Float f18 = transform.f28882d;
            float floatValue6 = f18 == null ? 1.0f : f18.floatValue();
            Float f19 = transform.tx;
            float floatValue7 = f19 == null ? 0.0f : f19.floatValue();
            Float f20 = transform.ty;
            float floatValue8 = f20 == null ? 0.0f : f20.floatValue();
            fArr[0] = floatValue3;
            fArr[1] = floatValue5;
            fArr[2] = floatValue7;
            fArr[3] = floatValue4;
            fArr[4] = floatValue6;
            fArr[5] = floatValue8;
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
            fArr[8] = 1.0f;
            getTransform().setValues(fArr);
        }
        String str = obj.clipPath;
        if (str != null) {
            str = str.length() > 0 ? str : null;
            if (str != null) {
                setMaskPath(new SVGAPathEntity(str));
            }
        }
        List<ShapeEntity> list = obj.shapes;
        Intrinsics.checkNotNullExpressionValue(list, "obj.shapes");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ShapeEntity it : list) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            arrayList.add(new SVGAVideoShapeEntity(it));
        }
        this.shapes = arrayList;
    }
}
