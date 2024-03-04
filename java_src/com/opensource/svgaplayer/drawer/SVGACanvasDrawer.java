package com.opensource.svgaplayer.drawer;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.media.SoundPool;
import android.os.Build;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Surface;
import android.widget.ImageView;
import com.opensource.svgaplayer.BuildConfig;
import com.opensource.svgaplayer.IClickAreaListener;
import com.opensource.svgaplayer.SVGADynamicEntity;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.drawer.SGVADrawer;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.entities.SVGAPathEntity;
import com.opensource.svgaplayer.entities.SVGAVideoShapeEntity;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u000289B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\u001e\u0010!\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#J\u001c\u0010&\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001c\u0010'\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J$\u0010(\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J,\u0010)\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u000e2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010+\u001a\u00020,H\u0002J\"\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020 2\u0010\u0010/\u001a\f\u0012\b\u0012\u00060\u001cR\u00020\u000100H\u0002J\"\u00101\u001a\u00020\t2\u0006\u0010.\u001a\u00020 2\u0010\u0010/\u001a\f\u0012\b\u0012\u00060\u001cR\u00020\u000100H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,H\u0002R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;", "Lcom/opensource/svgaplayer/drawer/SGVADrawer;", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "dynamicItem", "Lcom/opensource/svgaplayer/SVGADynamicEntity;", "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V", "beginIndexList", "", "", "[Ljava/lang/Boolean;", "drawTextCache", "Ljava/util/HashMap;", "", "Landroid/graphics/Bitmap;", "Lkotlin/collections/HashMap;", "getDynamicItem", "()Lcom/opensource/svgaplayer/SVGADynamicEntity;", "endIndexList", "matrixScaleTempValues", "", "pathCache", "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;", "sharedValues", "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;", "drawDynamic", "", "sprite", "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;", "canvas", "Landroid/graphics/Canvas;", "frameIndex", "", "drawFrame", "scaleType", "Landroid/widget/ImageView$ScaleType;", "surface", "Landroid/view/Surface;", "drawImage", "drawShape", "drawSprite", "drawTextOnBitmap", "drawingBitmap", "frameMatrix", "Landroid/graphics/Matrix;", "isMatteBegin", "spriteIndex", "sprites", "", "isMatteEnd", "matrixScale", "", "matrix", "playAudio", "shareFrameMatrix", "transform", "PathCache", "ShareValues", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGACanvasDrawer extends SGVADrawer {
    @Nullable
    private Boolean[] beginIndexList;
    @NotNull
    private final HashMap<String, Bitmap> drawTextCache;
    @NotNull
    private final SVGADynamicEntity dynamicItem;
    @Nullable
    private Boolean[] endIndexList;
    @NotNull
    private final float[] matrixScaleTempValues;
    @NotNull
    private final PathCache pathCache;
    @NotNull
    private final ShareValues sharedValues;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;", "", "()V", "cache", "Ljava/util/HashMap;", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "Landroid/graphics/Path;", "Lkotlin/collections/HashMap;", "canvasHeight", "", "canvasWidth", "buildPath", "shape", "onSizeChanged", "", "canvas", "Landroid/graphics/Canvas;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class PathCache {
        @NotNull
        private final HashMap<SVGAVideoShapeEntity, Path> cache = new HashMap<>();
        private int canvasHeight;
        private int canvasWidth;

        @NotNull
        public final Path buildPath(@NotNull SVGAVideoShapeEntity shape) {
            Intrinsics.checkNotNullParameter(shape, "shape");
            if (!this.cache.containsKey(shape)) {
                Path path = new Path();
                path.set(shape.getShapePath());
                this.cache.put(shape, path);
            }
            Path path2 = this.cache.get(shape);
            Intrinsics.checkNotNull(path2);
            return path2;
        }

        public final void onSizeChanged(@NotNull Canvas canvas) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            if (this.canvasWidth != canvas.getWidth() || this.canvasHeight != canvas.getHeight()) {
                this.cache.clear();
            }
            this.canvasWidth = canvas.getWidth();
            this.canvasHeight = canvas.getHeight();
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;", "", "()V", "shareMatteCanvas", "Landroid/graphics/Canvas;", "shareMattePaint", "Landroid/graphics/Paint;", "sharedMatrix", "Landroid/graphics/Matrix;", "sharedMatrix2", "sharedMatteBitmap", "Landroid/graphics/Bitmap;", "sharedPaint", "sharedPath", "Landroid/graphics/Path;", "sharedPath2", "width", "", "height", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ShareValues {
        @Nullable
        private Canvas shareMatteCanvas;
        @Nullable
        private Bitmap sharedMatteBitmap;
        @NotNull
        private final Paint sharedPaint = new Paint();
        @NotNull
        private final Path sharedPath = new Path();
        @NotNull
        private final Path sharedPath2 = new Path();
        @NotNull
        private final Matrix sharedMatrix = new Matrix();
        @NotNull
        private final Matrix sharedMatrix2 = new Matrix();
        @NotNull
        private final Paint shareMattePaint = new Paint();

        @NotNull
        public final Canvas shareMatteCanvas(int i9, int i10) {
            if (this.shareMatteCanvas == null) {
                this.sharedMatteBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ALPHA_8);
            }
            return new Canvas(this.sharedMatteBitmap);
        }

        @NotNull
        public final Paint shareMattePaint() {
            this.shareMattePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            return this.shareMattePaint;
        }

        @NotNull
        public final Matrix sharedMatrix() {
            this.sharedMatrix.reset();
            return this.sharedMatrix;
        }

        @NotNull
        public final Matrix sharedMatrix2() {
            this.sharedMatrix2.reset();
            return this.sharedMatrix2;
        }

        @NotNull
        public final Bitmap sharedMatteBitmap() {
            Bitmap bitmap = this.sharedMatteBitmap;
            Objects.requireNonNull(bitmap, "null cannot be cast to non-null type android.graphics.Bitmap");
            return bitmap;
        }

        @NotNull
        public final Paint sharedPaint() {
            this.sharedPaint.reset();
            return this.sharedPaint;
        }

        @NotNull
        public final Path sharedPath() {
            this.sharedPath.reset();
            return this.sharedPath;
        }

        @NotNull
        public final Path sharedPath2() {
            this.sharedPath2.reset();
            return this.sharedPath2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGACanvasDrawer(@NotNull SVGAVideoEntity videoItem, @NotNull SVGADynamicEntity dynamicItem) {
        super(videoItem);
        Intrinsics.checkNotNullParameter(videoItem, "videoItem");
        Intrinsics.checkNotNullParameter(dynamicItem, "dynamicItem");
        this.dynamicItem = dynamicItem;
        this.sharedValues = new ShareValues();
        this.drawTextCache = new HashMap<>();
        this.pathCache = new PathCache();
        this.matrixScaleTempValues = new float[16];
    }

    private final void drawDynamic(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas, int i9) {
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey == null) {
            return;
        }
        Function2<Canvas, Integer, Boolean> function2 = this.dynamicItem.getDynamicDrawer$com_opensource_svgaplayer().get(imageKey);
        if (function2 != null) {
            Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
            canvas.save();
            canvas.concat(shareFrameMatrix);
            function2.mo1invoke(canvas, Integer.valueOf(i9));
            canvas.restore();
        }
        Function4<Canvas, Integer, Integer, Integer, Boolean> function4 = this.dynamicItem.getDynamicDrawerSized$com_opensource_svgaplayer().get(imageKey);
        if (function4 == null) {
            return;
        }
        Matrix shareFrameMatrix2 = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
        canvas.save();
        canvas.concat(shareFrameMatrix2);
        function4.invoke(canvas, Integer.valueOf(i9), Integer.valueOf((int) sVGADrawerSprite.getFrameEntity().getLayout().getWidth()), Integer.valueOf((int) sVGADrawerSprite.getFrameEntity().getLayout().getHeight()));
        canvas.restore();
    }

    private final void drawImage(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas) {
        boolean endsWith$default;
        String str;
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey == null || Intrinsics.areEqual(this.dynamicItem.getDynamicHidden$com_opensource_svgaplayer().get(imageKey), Boolean.TRUE)) {
            return;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(imageKey, ".matte", false, 2, null);
        if (endsWith$default) {
            str = imageKey.substring(0, imageKey.length() - 6);
            Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        } else {
            str = imageKey;
        }
        Bitmap bitmap = this.dynamicItem.getDynamicImage$com_opensource_svgaplayer().get(str);
        if (bitmap == null && (bitmap = getVideoItem().getImageMap$com_opensource_svgaplayer().get(str)) == null) {
            return;
        }
        Bitmap bitmap2 = bitmap;
        Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
        Paint sharedPaint = this.sharedValues.sharedPaint();
        sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
        sharedPaint.setFilterBitmap(getVideoItem().getAntiAlias());
        sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * 255));
        if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
            SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
            if (maskPath == null) {
                return;
            }
            canvas.save();
            Path sharedPath = this.sharedValues.sharedPath();
            maskPath.buildPath(sharedPath);
            sharedPath.transform(shareFrameMatrix);
            canvas.clipPath(sharedPath);
            shareFrameMatrix.preScale((float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap2.getWidth()), (float) (sVGADrawerSprite.getFrameEntity().getLayout().getHeight() / bitmap2.getHeight()));
            if (!bitmap2.isRecycled()) {
                canvas.drawBitmap(bitmap2, shareFrameMatrix, sharedPaint);
            }
            canvas.restore();
        } else {
            shareFrameMatrix.preScale((float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap2.getWidth()), (float) (sVGADrawerSprite.getFrameEntity().getLayout().getHeight() / bitmap2.getHeight()));
            if (!bitmap2.isRecycled()) {
                canvas.drawBitmap(bitmap2, shareFrameMatrix, sharedPaint);
            }
        }
        IClickAreaListener iClickAreaListener = this.dynamicItem.getDynamicIClickArea$com_opensource_svgaplayer().get(imageKey);
        if (iClickAreaListener != null) {
            float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
            shareFrameMatrix.getValues(fArr);
            iClickAreaListener.onResponseArea(imageKey, (int) fArr[2], (int) fArr[5], (int) ((bitmap2.getWidth() * fArr[0]) + fArr[2]), (int) ((bitmap2.getHeight() * fArr[4]) + fArr[5]));
        }
        drawTextOnBitmap(canvas, bitmap2, sVGADrawerSprite, shareFrameMatrix);
    }

    private final void drawShape(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas) {
        SVGAVideoShapeEntity.Styles styles;
        float[] lineDash;
        String lineJoin;
        boolean equals;
        boolean equals2;
        boolean equals3;
        String lineCap;
        boolean equals4;
        boolean equals5;
        boolean equals6;
        int fill;
        Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
        for (SVGAVideoShapeEntity sVGAVideoShapeEntity : sVGADrawerSprite.getFrameEntity().getShapes()) {
            sVGAVideoShapeEntity.buildPath();
            if (sVGAVideoShapeEntity.getShapePath() != null) {
                Paint sharedPaint = this.sharedValues.sharedPaint();
                sharedPaint.reset();
                sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
                double d10 = 255;
                sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d10));
                Path sharedPath = this.sharedValues.sharedPath();
                sharedPath.reset();
                sharedPath.addPath(this.pathCache.buildPath(sVGAVideoShapeEntity));
                Matrix sharedMatrix2 = this.sharedValues.sharedMatrix2();
                sharedMatrix2.reset();
                Matrix transform = sVGAVideoShapeEntity.getTransform();
                if (transform != null) {
                    sharedMatrix2.postConcat(transform);
                }
                sharedMatrix2.postConcat(shareFrameMatrix);
                sharedPath.transform(sharedMatrix2);
                SVGAVideoShapeEntity.Styles styles2 = sVGAVideoShapeEntity.getStyles();
                if (styles2 != null && (fill = styles2.getFill()) != 0) {
                    sharedPaint.setStyle(Paint.Style.FILL);
                    sharedPaint.setColor(fill);
                    sharedPaint.setAlpha(Math.min(255, Math.max(0, (int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d10))));
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.save();
                    }
                    SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
                    if (maskPath != null) {
                        Path sharedPath2 = this.sharedValues.sharedPath2();
                        maskPath.buildPath(sharedPath2);
                        sharedPath2.transform(shareFrameMatrix);
                        canvas.clipPath(sharedPath2);
                    }
                    canvas.drawPath(sharedPath, sharedPaint);
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.restore();
                    }
                }
                SVGAVideoShapeEntity.Styles styles3 = sVGAVideoShapeEntity.getStyles();
                if (styles3 != null && styles3.getStrokeWidth() > 0.0f) {
                    sharedPaint.setStyle(Paint.Style.STROKE);
                    SVGAVideoShapeEntity.Styles styles4 = sVGAVideoShapeEntity.getStyles();
                    if (styles4 != null) {
                        sharedPaint.setColor(styles4.getStroke());
                        sharedPaint.setAlpha(Math.min(255, Math.max(0, (int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d10))));
                    }
                    float matrixScale = matrixScale(shareFrameMatrix);
                    SVGAVideoShapeEntity.Styles styles5 = sVGAVideoShapeEntity.getStyles();
                    if (styles5 != null) {
                        sharedPaint.setStrokeWidth(styles5.getStrokeWidth() * matrixScale);
                    }
                    SVGAVideoShapeEntity.Styles styles6 = sVGAVideoShapeEntity.getStyles();
                    if (styles6 != null && (lineCap = styles6.getLineCap()) != null) {
                        equals4 = StringsKt__StringsJVMKt.equals(lineCap, "butt", true);
                        if (equals4) {
                            sharedPaint.setStrokeCap(Paint.Cap.BUTT);
                        } else {
                            equals5 = StringsKt__StringsJVMKt.equals(lineCap, "round", true);
                            if (equals5) {
                                sharedPaint.setStrokeCap(Paint.Cap.ROUND);
                            } else {
                                equals6 = StringsKt__StringsJVMKt.equals(lineCap, "square", true);
                                if (equals6) {
                                    sharedPaint.setStrokeCap(Paint.Cap.SQUARE);
                                }
                            }
                        }
                    }
                    SVGAVideoShapeEntity.Styles styles7 = sVGAVideoShapeEntity.getStyles();
                    if (styles7 != null && (lineJoin = styles7.getLineJoin()) != null) {
                        equals = StringsKt__StringsJVMKt.equals(lineJoin, "miter", true);
                        if (equals) {
                            sharedPaint.setStrokeJoin(Paint.Join.MITER);
                        } else {
                            equals2 = StringsKt__StringsJVMKt.equals(lineJoin, "round", true);
                            if (equals2) {
                                sharedPaint.setStrokeJoin(Paint.Join.ROUND);
                            } else {
                                equals3 = StringsKt__StringsJVMKt.equals(lineJoin, "bevel", true);
                                if (equals3) {
                                    sharedPaint.setStrokeJoin(Paint.Join.BEVEL);
                                }
                            }
                        }
                    }
                    if (sVGAVideoShapeEntity.getStyles() != null) {
                        sharedPaint.setStrokeMiter(styles.getMiterLimit() * matrixScale);
                    }
                    SVGAVideoShapeEntity.Styles styles8 = sVGAVideoShapeEntity.getStyles();
                    if (styles8 != null && (lineDash = styles8.getLineDash()) != null && lineDash.length == 3 && (lineDash[0] > 0.0f || lineDash[1] > 0.0f)) {
                        float[] fArr = new float[2];
                        fArr[0] = (lineDash[0] >= 1.0f ? lineDash[0] : 1.0f) * matrixScale;
                        fArr[1] = (lineDash[1] >= 0.1f ? lineDash[1] : 0.1f) * matrixScale;
                        sharedPaint.setPathEffect(new DashPathEffect(fArr, lineDash[2] * matrixScale));
                    }
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.save();
                    }
                    SVGAPathEntity maskPath2 = sVGADrawerSprite.getFrameEntity().getMaskPath();
                    if (maskPath2 != null) {
                        Path sharedPath22 = this.sharedValues.sharedPath2();
                        maskPath2.buildPath(sharedPath22);
                        sharedPath22.transform(shareFrameMatrix);
                        canvas.clipPath(sharedPath22);
                    }
                    canvas.drawPath(sharedPath, sharedPaint);
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.restore();
                    }
                }
            }
        }
    }

    private final void drawSprite(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas, int i9) {
        drawImage(sVGADrawerSprite, canvas);
        drawShape(sVGADrawerSprite, canvas);
        drawDynamic(sVGADrawerSprite, canvas, i9);
    }

    private final void drawTextOnBitmap(Canvas canvas, Bitmap bitmap, SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Matrix matrix) {
        TextPaint textPaint;
        Bitmap bitmap2;
        Unit unit;
        Unit unit2;
        int i9;
        StaticLayout build;
        Unit unit3;
        if (this.dynamicItem.isTextDirty$com_opensource_svgaplayer()) {
            this.drawTextCache.clear();
            this.dynamicItem.setTextDirty$com_opensource_svgaplayer(false);
        }
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey == null) {
            return;
        }
        String str = this.dynamicItem.getDynamicText$com_opensource_svgaplayer().get(imageKey);
        if (str == null || (textPaint = getDynamicItem().getDynamicTextPaint$com_opensource_svgaplayer().get(imageKey)) == null) {
            bitmap2 = null;
        } else {
            bitmap2 = this.drawTextCache.get(imageKey);
            if (bitmap2 == null) {
                bitmap2 = null;
                unit = null;
            } else {
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Canvas canvas2 = new Canvas(bitmap2);
                textPaint.setAntiAlias(true);
                Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
                float f10 = 2;
                canvas2.drawText(str, rect.centerX(), (rect.centerY() - (fontMetrics.top / f10)) - (fontMetrics.bottom / f10), textPaint);
                HashMap<String, Bitmap> hashMap = this.drawTextCache;
                Objects.requireNonNull(bitmap2, "null cannot be cast to non-null type android.graphics.Bitmap");
                hashMap.put(imageKey, bitmap2);
            }
        }
        BoringLayout boringLayout = this.dynamicItem.getDynamicBoringLayoutText$com_opensource_svgaplayer().get(imageKey);
        if (boringLayout != null) {
            Bitmap bitmap3 = this.drawTextCache.get(imageKey);
            if (bitmap3 == null) {
                unit3 = null;
            } else {
                unit3 = Unit.INSTANCE;
                bitmap2 = bitmap3;
            }
            if (unit3 == null) {
                boringLayout.getPaint().setAntiAlias(true);
                Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas3 = new Canvas(createBitmap);
                canvas3.translate(0.0f, (bitmap.getHeight() - boringLayout.getHeight()) / 2);
                boringLayout.draw(canvas3);
                HashMap<String, Bitmap> hashMap2 = this.drawTextCache;
                Objects.requireNonNull(createBitmap, "null cannot be cast to non-null type android.graphics.Bitmap");
                hashMap2.put(imageKey, createBitmap);
                bitmap2 = createBitmap;
            }
        }
        StaticLayout staticLayout = this.dynamicItem.getDynamicStaticLayoutText$com_opensource_svgaplayer().get(imageKey);
        if (staticLayout != null) {
            Bitmap bitmap4 = this.drawTextCache.get(imageKey);
            if (bitmap4 == null) {
                unit2 = null;
            } else {
                bitmap2 = bitmap4;
                unit2 = Unit.INSTANCE;
            }
            if (unit2 == null) {
                staticLayout.getPaint().setAntiAlias(true);
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        Field declaredField = StaticLayout.class.getDeclaredField("mMaximumVisibleLineCount");
                        declaredField.setAccessible(true);
                        i9 = declaredField.getInt(staticLayout);
                    } catch (Exception unused) {
                        i9 = Integer.MAX_VALUE;
                    }
                    build = StaticLayout.Builder.obtain(staticLayout.getText(), 0, staticLayout.getText().length(), staticLayout.getPaint(), bitmap.getWidth()).setAlignment(staticLayout.getAlignment()).setMaxLines(i9).setEllipsize(TextUtils.TruncateAt.END).build();
                } else {
                    build = new StaticLayout(staticLayout.getText(), 0, staticLayout.getText().length(), staticLayout.getPaint(), bitmap.getWidth(), staticLayout.getAlignment(), staticLayout.getSpacingMultiplier(), staticLayout.getSpacingAdd(), false);
                }
                Bitmap createBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas4 = new Canvas(createBitmap2);
                canvas4.translate(0.0f, (bitmap.getHeight() - build.getHeight()) / 2);
                build.draw(canvas4);
                HashMap<String, Bitmap> hashMap3 = this.drawTextCache;
                Objects.requireNonNull(createBitmap2, "null cannot be cast to non-null type android.graphics.Bitmap");
                hashMap3.put(imageKey, createBitmap2);
                bitmap2 = createBitmap2;
            }
        }
        if (bitmap2 == null) {
            return;
        }
        Paint sharedPaint = this.sharedValues.sharedPaint();
        sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
        sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * 255));
        if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
            SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
            if (maskPath == null) {
                return;
            }
            canvas.save();
            canvas.concat(matrix);
            canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            sharedPaint.setShader(new BitmapShader(bitmap2, tileMode, tileMode));
            Path sharedPath = this.sharedValues.sharedPath();
            maskPath.buildPath(sharedPath);
            canvas.drawPath(sharedPath, sharedPaint);
            canvas.restore();
            return;
        }
        sharedPaint.setFilterBitmap(getVideoItem().getAntiAlias());
        canvas.drawBitmap(bitmap2, matrix, sharedPaint);
    }

    private final boolean isMatteBegin(int i9, List<SGVADrawer.SVGADrawerSprite> list) {
        Boolean bool;
        int i10;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite;
        boolean endsWith$default;
        if (this.beginIndexList == null) {
            int size = list.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i11 = 0; i11 < size; i11++) {
                boolArr[i11] = Boolean.FALSE;
            }
            for (Object obj : list) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                SGVADrawer.SVGADrawerSprite sVGADrawerSprite2 = (SGVADrawer.SVGADrawerSprite) obj;
                String imageKey = sVGADrawerSprite2.getImageKey();
                if (imageKey != null) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(imageKey, ".matte", false, 2, null);
                    i10 = endsWith$default ? i12 : 0;
                }
                String matteKey = sVGADrawerSprite2.getMatteKey();
                if (matteKey != null && matteKey.length() > 0 && (sVGADrawerSprite = list.get(i10 - 1)) != null) {
                    String matteKey2 = sVGADrawerSprite.getMatteKey();
                    if (matteKey2 == null || matteKey2.length() == 0) {
                        boolArr[i10] = Boolean.TRUE;
                    } else if (!Intrinsics.areEqual(sVGADrawerSprite.getMatteKey(), sVGADrawerSprite2.getMatteKey())) {
                        boolArr[i10] = Boolean.TRUE;
                    }
                }
            }
            this.beginIndexList = boolArr;
        }
        Boolean[] boolArr2 = this.beginIndexList;
        if (boolArr2 == null || (bool = boolArr2[i9]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final boolean isMatteEnd(int i9, List<SGVADrawer.SVGADrawerSprite> list) {
        Boolean bool;
        int i10;
        boolean endsWith$default;
        if (this.endIndexList == null) {
            int size = list.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i11 = 0; i11 < size; i11++) {
                boolArr[i11] = Boolean.FALSE;
            }
            for (Object obj : list) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                SGVADrawer.SVGADrawerSprite sVGADrawerSprite = (SGVADrawer.SVGADrawerSprite) obj;
                String imageKey = sVGADrawerSprite.getImageKey();
                if (imageKey != null) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(imageKey, ".matte", false, 2, null);
                    i10 = endsWith$default ? i12 : 0;
                }
                String matteKey = sVGADrawerSprite.getMatteKey();
                if (matteKey != null && matteKey.length() > 0) {
                    boolean z10 = true;
                    if (i10 == list.size() - 1) {
                        boolArr[i10] = Boolean.TRUE;
                    } else {
                        SGVADrawer.SVGADrawerSprite sVGADrawerSprite2 = list.get(i12);
                        if (sVGADrawerSprite2 != null) {
                            String matteKey2 = sVGADrawerSprite2.getMatteKey();
                            if (matteKey2 != null && matteKey2.length() != 0) {
                                z10 = false;
                            }
                            if (z10) {
                                boolArr[i10] = Boolean.TRUE;
                            } else if (!Intrinsics.areEqual(sVGADrawerSprite2.getMatteKey(), sVGADrawerSprite.getMatteKey())) {
                                boolArr[i10] = Boolean.TRUE;
                            }
                        }
                    }
                }
            }
            this.endIndexList = boolArr;
        }
        Boolean[] boolArr2 = this.endIndexList;
        if (boolArr2 == null || (bool = boolArr2[i9]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final float matrixScale(Matrix matrix) {
        matrix.getValues(this.matrixScaleTempValues);
        float[] fArr = this.matrixScaleTempValues;
        if (fArr[0] == 0.0f) {
            return 0.0f;
        }
        double d10 = fArr[0];
        double d11 = fArr[3];
        double d12 = fArr[1];
        double d13 = fArr[4];
        if (d10 * d13 == d11 * d12) {
            return 0.0f;
        }
        double sqrt = Math.sqrt((d10 * d10) + (d11 * d11));
        double d14 = d10 / sqrt;
        double d15 = d11 / sqrt;
        double d16 = (d14 * d12) + (d15 * d13);
        double d17 = d12 - (d14 * d16);
        double d18 = d13 - (d16 * d15);
        double sqrt2 = Math.sqrt((d17 * d17) + (d18 * d18));
        if (d14 * (d18 / sqrt2) < d15 * (d17 / sqrt2)) {
            sqrt = -sqrt;
        }
        return Math.abs(getScaleInfo().getRatioX() ? (float) sqrt : (float) sqrt2);
    }

    private final void playAudio(int i9) {
        SoundPool soundPool$com_opensource_svgaplayer;
        Integer soundID;
        for (SVGAAudioEntity sVGAAudioEntity : getVideoItem().getAudioList$com_opensource_svgaplayer()) {
            if (sVGAAudioEntity.getStartFrame() == i9 && (soundPool$com_opensource_svgaplayer = getVideoItem().getSoundPool$com_opensource_svgaplayer()) != null && (soundID = sVGAAudioEntity.getSoundID()) != null) {
                sVGAAudioEntity.setPlayID(Integer.valueOf(soundPool$com_opensource_svgaplayer.play(soundID.intValue(), 1.0f, 1.0f, 1, 0, 1.0f)));
            }
            if (sVGAAudioEntity.getEndFrame() <= i9) {
                Integer playID = sVGAAudioEntity.getPlayID();
                if (playID != null) {
                    int intValue = playID.intValue();
                    SoundPool soundPool$com_opensource_svgaplayer2 = getVideoItem().getSoundPool$com_opensource_svgaplayer();
                    if (soundPool$com_opensource_svgaplayer2 != null) {
                        soundPool$com_opensource_svgaplayer2.stop(intValue);
                    }
                }
                sVGAAudioEntity.setPlayID(null);
            }
        }
    }

    private final Matrix shareFrameMatrix(Matrix matrix) {
        Matrix sharedMatrix = this.sharedValues.sharedMatrix();
        sharedMatrix.postScale(getScaleInfo().getScaleFx(), getScaleInfo().getScaleFy());
        sharedMatrix.postTranslate(getScaleInfo().getTranFx(), getScaleInfo().getTranFy());
        sharedMatrix.preConcat(matrix);
        return sharedMatrix;
    }

    @Override // com.opensource.svgaplayer.drawer.SGVADrawer
    public void drawFrame(@NotNull Canvas canvas, int i9, @NotNull ImageView.ScaleType scaleType) {
        boolean endsWith$default;
        boolean z10;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite;
        int i10;
        int i11;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite2;
        boolean endsWith$default2;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        super.drawFrame(canvas, i9, scaleType);
        playAudio(i9);
        this.pathCache.onSizeChanged(canvas);
        List<SGVADrawer.SVGADrawerSprite> requestFrameSprites$com_opensource_svgaplayer = requestFrameSprites$com_opensource_svgaplayer(i9);
        if (requestFrameSprites$com_opensource_svgaplayer.size() <= 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object obj = null;
        this.beginIndexList = null;
        this.endIndexList = null;
        boolean z11 = false;
        String imageKey = requestFrameSprites$com_opensource_svgaplayer.get(0).getImageKey();
        int i12 = 2;
        if (imageKey == null) {
            z10 = false;
        } else {
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(imageKey, ".matte", false, 2, null);
            z10 = endsWith$default;
        }
        int i13 = -1;
        int i14 = 0;
        for (Object obj2 : requestFrameSprites$com_opensource_svgaplayer) {
            int i15 = i14 + 1;
            if (i14 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            SGVADrawer.SVGADrawerSprite sVGADrawerSprite3 = (SGVADrawer.SVGADrawerSprite) obj2;
            String imageKey2 = sVGADrawerSprite3.getImageKey();
            if (imageKey2 != null) {
                if (z10) {
                    endsWith$default2 = StringsKt__StringsJVMKt.endsWith$default(imageKey2, ".matte", z11, i12, obj);
                    if (endsWith$default2) {
                        linkedHashMap.put(imageKey2, sVGADrawerSprite3);
                    }
                } else {
                    drawSprite(sVGADrawerSprite3, canvas, i9);
                }
                i14 = i15;
                obj = null;
                z11 = false;
                i12 = 2;
            }
            if (isMatteBegin(i14, requestFrameSprites$com_opensource_svgaplayer)) {
                sVGADrawerSprite = sVGADrawerSprite3;
                i10 = i14;
                i11 = -1;
                i13 = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
            } else {
                sVGADrawerSprite = sVGADrawerSprite3;
                i10 = i14;
                i11 = -1;
            }
            drawSprite(sVGADrawerSprite, canvas, i9);
            if (isMatteEnd(i10, requestFrameSprites$com_opensource_svgaplayer) && (sVGADrawerSprite2 = (SGVADrawer.SVGADrawerSprite) linkedHashMap.get(sVGADrawerSprite.getMatteKey())) != null) {
                drawSprite(sVGADrawerSprite2, this.sharedValues.shareMatteCanvas(canvas.getWidth(), canvas.getHeight()), i9);
                canvas.drawBitmap(this.sharedValues.sharedMatteBitmap(), 0.0f, 0.0f, this.sharedValues.shareMattePaint());
                if (i13 != i11) {
                    canvas.restoreToCount(i13);
                } else {
                    canvas.restore();
                }
            }
            i14 = i15;
            obj = null;
            z11 = false;
            i12 = 2;
        }
        releaseFrameSprites$com_opensource_svgaplayer(requestFrameSprites$com_opensource_svgaplayer);
    }

    @NotNull
    public final SVGADynamicEntity getDynamicItem() {
        return this.dynamicItem;
    }

    public final void drawFrame(@NotNull Surface surface, int i9, @NotNull ImageView.ScaleType scaleType) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Canvas canvas = surface.lockCanvas(null);
        Intrinsics.checkNotNullExpressionValue(canvas, "canvas");
        drawFrame(canvas, i9, scaleType);
    }
}
