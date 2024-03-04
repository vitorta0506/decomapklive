package com.opensource.svgaplayer.entities;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.opendevice.c;
import com.opensource.svgaplayer.BuildConfig;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0002-.B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\"\u001a\u00020#J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u0002\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010)\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010*\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010+\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010,\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R:\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b2\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0007\u001a\u0004\u0018\u00010\u0016@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0007\u001a\u0004\u0018\u00010\u001a@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\u001e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!¨\u0006/"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/ShapeEntity;", "(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V", "<set-?>", "", "", "args", "getArgs", "()Ljava/util/Map;", "isKeep", "", "()Z", "shapePath", "Landroid/graphics/Path;", "getShapePath", "()Landroid/graphics/Path;", "setShapePath", "(Landroid/graphics/Path;)V", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "styles", "getStyles", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "Landroid/graphics/Matrix;", "transform", "getTransform", "()Landroid/graphics/Matrix;", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "type", "getType", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "buildPath", "", "checkValueRange", "", "color", "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;", "Lorg/json/JSONArray;", "parseArgs", "parseStyles", "parseTransform", "parseType", "Styles", "Type", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAVideoShapeEntity {
    @Nullable
    private Map<String, ? extends Object> args;
    @Nullable
    private Path shapePath;
    @Nullable
    private Styles styles;
    @Nullable
    private Matrix transform;
    @NotNull
    private Type type;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR$\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR$\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u001f@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "", "()V", "<set-?>", "", "fill", "getFill", "()I", "setFill$com_opensource_svgaplayer", "(I)V", "", "lineCap", "getLineCap", "()Ljava/lang/String;", "setLineCap$com_opensource_svgaplayer", "(Ljava/lang/String;)V", "", "lineDash", "getLineDash", "()[F", "setLineDash$com_opensource_svgaplayer", "([F)V", "lineJoin", "getLineJoin", "setLineJoin$com_opensource_svgaplayer", "miterLimit", "getMiterLimit", "setMiterLimit$com_opensource_svgaplayer", "stroke", "getStroke", "setStroke$com_opensource_svgaplayer", "", "strokeWidth", "getStrokeWidth", "()F", "setStrokeWidth$com_opensource_svgaplayer", "(F)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Styles {
        private int fill;
        private int miterLimit;
        private int stroke;
        private float strokeWidth;
        @NotNull
        private String lineCap = "butt";
        @NotNull
        private String lineJoin = "miter";
        @NotNull
        private float[] lineDash = new float[0];

        public final int getFill() {
            return this.fill;
        }

        @NotNull
        public final String getLineCap() {
            return this.lineCap;
        }

        @NotNull
        public final float[] getLineDash() {
            return this.lineDash;
        }

        @NotNull
        public final String getLineJoin() {
            return this.lineJoin;
        }

        public final int getMiterLimit() {
            return this.miterLimit;
        }

        public final int getStroke() {
            return this.stroke;
        }

        public final float getStrokeWidth() {
            return this.strokeWidth;
        }

        public final void setFill$com_opensource_svgaplayer(int i9) {
            this.fill = i9;
        }

        public final void setLineCap$com_opensource_svgaplayer(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.lineCap = str;
        }

        public final void setLineDash$com_opensource_svgaplayer(@NotNull float[] fArr) {
            Intrinsics.checkNotNullParameter(fArr, "<set-?>");
            this.lineDash = fArr;
        }

        public final void setLineJoin$com_opensource_svgaplayer(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.lineJoin = str;
        }

        public final void setMiterLimit$com_opensource_svgaplayer(int i9) {
            this.miterLimit = i9;
        }

        public final void setStroke$com_opensource_svgaplayer(int i9) {
            this.stroke = i9;
        }

        public final void setStrokeWidth$com_opensource_svgaplayer(float f10) {
            this.strokeWidth = f10;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "", "(Ljava/lang/String;I)V", "shape", "rect", "ellipse", "keep", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Type {
        shape,
        rect,
        ellipse,
        keep;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            return (Type[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ShapeEntity.ShapeType.values().length];
            iArr[ShapeEntity.ShapeType.SHAPE.ordinal()] = 1;
            iArr[ShapeEntity.ShapeType.RECT.ordinal()] = 2;
            iArr[ShapeEntity.ShapeType.ELLIPSE.ordinal()] = 3;
            iArr[ShapeEntity.ShapeType.KEEP.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ShapeEntity.ShapeStyle.LineCap.values().length];
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_BUTT.ordinal()] = 1;
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_ROUND.ordinal()] = 2;
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_SQUARE.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[ShapeEntity.ShapeStyle.LineJoin.values().length];
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_BEVEL.ordinal()] = 1;
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_MITER.ordinal()] = 2;
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_ROUND.ordinal()] = 3;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public SVGAVideoShapeEntity(@NotNull JSONObject obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.type = Type.shape;
        parseType(obj);
        parseArgs(obj);
        parseStyles(obj);
        parseTransform(obj);
    }

    private final float checkValueRange(JSONArray jSONArray) {
        return (jSONArray.optDouble(3) > 1.0d || jSONArray.optDouble(0) > 1.0d || jSONArray.optDouble(1) > 1.0d || jSONArray.optDouble(2) > 1.0d) ? 1.0f : 255.0f;
    }

    private final void parseArgs(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        JSONObject optJSONObject = jSONObject.optJSONObject("args");
        if (optJSONObject == null) {
            return;
        }
        Iterator<String> keys = optJSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "values.keys()");
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = optJSONObject.get(next);
            if (obj != null) {
                hashMap.put(next, obj);
            }
        }
        this.args = hashMap;
    }

    private final void parseStyles(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("styles");
        if (optJSONObject == null) {
            return;
        }
        Styles styles = new Styles();
        JSONArray optJSONArray = optJSONObject.optJSONArray("fill");
        int i9 = 0;
        if (optJSONArray != null && optJSONArray.length() == 4) {
            double checkValueRange = checkValueRange(optJSONArray);
            styles.setFill$com_opensource_svgaplayer(Color.argb((int) (optJSONArray.optDouble(3) * checkValueRange), (int) (optJSONArray.optDouble(0) * checkValueRange), (int) (optJSONArray.optDouble(1) * checkValueRange), (int) (optJSONArray.optDouble(2) * checkValueRange)));
        }
        JSONArray optJSONArray2 = optJSONObject.optJSONArray("stroke");
        if (optJSONArray2 != null && optJSONArray2.length() == 4) {
            double checkValueRange2 = checkValueRange(optJSONArray2);
            styles.setStroke$com_opensource_svgaplayer(Color.argb((int) (optJSONArray2.optDouble(3) * checkValueRange2), (int) (optJSONArray2.optDouble(0) * checkValueRange2), (int) (optJSONArray2.optDouble(1) * checkValueRange2), (int) (optJSONArray2.optDouble(2) * checkValueRange2)));
        }
        styles.setStrokeWidth$com_opensource_svgaplayer((float) optJSONObject.optDouble("strokeWidth", 0.0d));
        String optString = optJSONObject.optString("lineCap", "butt");
        Intrinsics.checkNotNullExpressionValue(optString, "it.optString(\"lineCap\", \"butt\")");
        styles.setLineCap$com_opensource_svgaplayer(optString);
        String optString2 = optJSONObject.optString("lineJoin", "miter");
        Intrinsics.checkNotNullExpressionValue(optString2, "it.optString(\"lineJoin\", \"miter\")");
        styles.setLineJoin$com_opensource_svgaplayer(optString2);
        styles.setMiterLimit$com_opensource_svgaplayer(optJSONObject.optInt("miterLimit", 0));
        JSONArray optJSONArray3 = optJSONObject.optJSONArray("lineDash");
        if (optJSONArray3 != null) {
            styles.setLineDash$com_opensource_svgaplayer(new float[optJSONArray3.length()]);
            int length = optJSONArray3.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    styles.getLineDash()[i9] = (float) optJSONArray3.optDouble(i9, 0.0d);
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        this.styles = styles;
    }

    private final void parseTransform(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("transform");
        if (optJSONObject == null) {
            return;
        }
        Matrix matrix = new Matrix();
        double optDouble = optJSONObject.optDouble("a", 1.0d);
        double optDouble2 = optJSONObject.optDouble("b", 0.0d);
        matrix.setValues(new float[]{(float) optDouble, (float) optJSONObject.optDouble(c.f27627a, 0.0d), (float) optJSONObject.optDouble("tx", 0.0d), (float) optDouble2, (float) optJSONObject.optDouble("d", 1.0d), (float) optJSONObject.optDouble("ty", 0.0d), 0.0f, 0.0f, 1.0f});
        this.transform = matrix;
    }

    private final void parseType(JSONObject jSONObject) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        String optString = jSONObject.optString("type");
        if (optString == null) {
            return;
        }
        equals = StringsKt__StringsJVMKt.equals(optString, "shape", true);
        if (equals) {
            this.type = Type.shape;
            return;
        }
        equals2 = StringsKt__StringsJVMKt.equals(optString, "rect", true);
        if (equals2) {
            this.type = Type.rect;
            return;
        }
        equals3 = StringsKt__StringsJVMKt.equals(optString, "ellipse", true);
        if (equals3) {
            this.type = Type.ellipse;
            return;
        }
        equals4 = StringsKt__StringsJVMKt.equals(optString, "keep", true);
        if (equals4) {
            this.type = Type.keep;
        }
    }

    public final void buildPath() {
        if (this.shapePath != null) {
            return;
        }
        SVGAVideoShapeEntityKt.getSharedPath().reset();
        Type type = this.type;
        if (type == Type.shape) {
            Map<String, ? extends Object> map = this.args;
            Object obj = map == null ? null : map.get("d");
            String str = obj instanceof String ? (String) obj : null;
            if (str != null) {
                new SVGAPathEntity(str).buildPath(SVGAVideoShapeEntityKt.getSharedPath());
            }
        } else if (type == Type.ellipse) {
            Map<String, ? extends Object> map2 = this.args;
            Object obj2 = map2 == null ? null : map2.get(x.f19108w);
            Number number = obj2 instanceof Number ? (Number) obj2 : null;
            if (number == null) {
                return;
            }
            Map<String, ? extends Object> map3 = this.args;
            Object obj3 = map3 == null ? null : map3.get("y");
            Number number2 = obj3 instanceof Number ? (Number) obj3 : null;
            if (number2 == null) {
                return;
            }
            Map<String, ? extends Object> map4 = this.args;
            Object obj4 = map4 == null ? null : map4.get("radiusX");
            Number number3 = obj4 instanceof Number ? (Number) obj4 : null;
            if (number3 == null) {
                return;
            }
            Map<String, ? extends Object> map5 = this.args;
            Object obj5 = map5 == null ? null : map5.get("radiusY");
            Number number4 = obj5 instanceof Number ? (Number) obj5 : null;
            if (number4 == null) {
                return;
            }
            float floatValue = number.floatValue();
            float floatValue2 = number2.floatValue();
            float floatValue3 = number3.floatValue();
            float floatValue4 = number4.floatValue();
            SVGAVideoShapeEntityKt.getSharedPath().addOval(new RectF(floatValue - floatValue3, floatValue2 - floatValue4, floatValue + floatValue3, floatValue2 + floatValue4), Path.Direction.CW);
        } else if (type == Type.rect) {
            Map<String, ? extends Object> map6 = this.args;
            Object obj6 = map6 == null ? null : map6.get(x.f19108w);
            Number number5 = obj6 instanceof Number ? (Number) obj6 : null;
            if (number5 == null) {
                return;
            }
            Map<String, ? extends Object> map7 = this.args;
            Object obj7 = map7 == null ? null : map7.get("y");
            Number number6 = obj7 instanceof Number ? (Number) obj7 : null;
            if (number6 == null) {
                return;
            }
            Map<String, ? extends Object> map8 = this.args;
            Object obj8 = map8 == null ? null : map8.get("width");
            Number number7 = obj8 instanceof Number ? (Number) obj8 : null;
            if (number7 == null) {
                return;
            }
            Map<String, ? extends Object> map9 = this.args;
            Object obj9 = map9 == null ? null : map9.get("height");
            Number number8 = obj9 instanceof Number ? (Number) obj9 : null;
            if (number8 == null) {
                return;
            }
            Map<String, ? extends Object> map10 = this.args;
            Object obj10 = map10 == null ? null : map10.get("cornerRadius");
            Number number9 = obj10 instanceof Number ? (Number) obj10 : null;
            if (number9 == null) {
                return;
            }
            float floatValue5 = number5.floatValue();
            float floatValue6 = number6.floatValue();
            float floatValue7 = number7.floatValue();
            float floatValue8 = number8.floatValue();
            float floatValue9 = number9.floatValue();
            SVGAVideoShapeEntityKt.getSharedPath().addRoundRect(new RectF(floatValue5, floatValue6, floatValue7 + floatValue5, floatValue8 + floatValue6), floatValue9, floatValue9, Path.Direction.CW);
        }
        Path path = new Path();
        this.shapePath = path;
        path.set(SVGAVideoShapeEntityKt.getSharedPath());
    }

    @Nullable
    public final Map<String, Object> getArgs() {
        return this.args;
    }

    @Nullable
    public final Path getShapePath() {
        return this.shapePath;
    }

    @Nullable
    public final Styles getStyles() {
        return this.styles;
    }

    @Nullable
    public final Matrix getTransform() {
        return this.transform;
    }

    @NotNull
    public final Type getType() {
        return this.type;
    }

    public final boolean isKeep() {
        return this.type == Type.keep;
    }

    public final void setShapePath(@Nullable Path path) {
        this.shapePath = path;
    }

    private final float checkValueRange(ShapeEntity.ShapeStyle.RGBAColor rGBAColor) {
        Float f10 = rGBAColor.f28871a;
        if ((f10 == null ? 0.0f : f10.floatValue()) <= 1.0f) {
            Float f11 = rGBAColor.f28874r;
            if ((f11 == null ? 0.0f : f11.floatValue()) <= 1.0f) {
                Float f12 = rGBAColor.f28873g;
                if ((f12 == null ? 0.0f : f12.floatValue()) <= 1.0f) {
                    Float f13 = rGBAColor.f28872b;
                    return (f13 != null ? f13.floatValue() : 0.0f) <= 1.0f ? 255.0f : 1.0f;
                }
                return 1.0f;
            }
            return 1.0f;
        }
        return 1.0f;
    }

    private final void parseType(ShapeEntity shapeEntity) {
        Type type;
        ShapeEntity.ShapeType shapeType = shapeEntity.type;
        if (shapeType == null) {
            return;
        }
        int i9 = WhenMappings.$EnumSwitchMapping$0[shapeType.ordinal()];
        if (i9 == 1) {
            type = Type.shape;
        } else if (i9 == 2) {
            type = Type.rect;
        } else if (i9 == 3) {
            type = Type.ellipse;
        } else if (i9 != 4) {
            throw new NoWhenBranchMatchedException();
        } else {
            type = Type.keep;
        }
        this.type = type;
    }

    public SVGAVideoShapeEntity(@NotNull ShapeEntity obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.type = Type.shape;
        parseType(obj);
        parseArgs(obj);
        parseStyles(obj);
        parseTransform(obj);
    }

    private final void parseArgs(ShapeEntity shapeEntity) {
        String str;
        HashMap hashMap = new HashMap();
        ShapeEntity.ShapeArgs shapeArgs = shapeEntity.shape;
        if (shapeArgs != null && (str = shapeArgs.f28869d) != null) {
            hashMap.put("d", str);
        }
        ShapeEntity.EllipseArgs ellipseArgs = shapeEntity.ellipse;
        if (ellipseArgs != null) {
            Float f10 = ellipseArgs.f28861x;
            hashMap.put(x.f19108w, Float.valueOf(f10 == null ? 0.0f : f10.floatValue()));
            Float f11 = ellipseArgs.f28862y;
            hashMap.put("y", Float.valueOf(f11 == null ? 0.0f : f11.floatValue()));
            Float f12 = ellipseArgs.radiusX;
            hashMap.put("radiusX", Float.valueOf(f12 == null ? 0.0f : f12.floatValue()));
            Float f13 = ellipseArgs.radiusY;
            hashMap.put("radiusY", Float.valueOf(f13 == null ? 0.0f : f13.floatValue()));
        }
        ShapeEntity.RectArgs rectArgs = shapeEntity.rect;
        if (rectArgs != null) {
            Float f14 = rectArgs.f28865x;
            hashMap.put(x.f19108w, Float.valueOf(f14 == null ? 0.0f : f14.floatValue()));
            Float f15 = rectArgs.f28866y;
            hashMap.put("y", Float.valueOf(f15 == null ? 0.0f : f15.floatValue()));
            Float f16 = rectArgs.width;
            hashMap.put("width", Float.valueOf(f16 == null ? 0.0f : f16.floatValue()));
            Float f17 = rectArgs.height;
            hashMap.put("height", Float.valueOf(f17 == null ? 0.0f : f17.floatValue()));
            Float f18 = rectArgs.cornerRadius;
            hashMap.put("cornerRadius", Float.valueOf(f18 != null ? f18.floatValue() : 0.0f));
        }
        this.args = hashMap;
    }

    private final void parseTransform(ShapeEntity shapeEntity) {
        Transform transform = shapeEntity.transform;
        if (transform == null) {
            return;
        }
        Matrix matrix = new Matrix();
        float[] fArr = new float[9];
        Float f10 = transform.f28879a;
        float floatValue = f10 == null ? 1.0f : f10.floatValue();
        Float f11 = transform.f28880b;
        float floatValue2 = f11 == null ? 0.0f : f11.floatValue();
        Float f12 = transform.f28881c;
        float floatValue3 = f12 == null ? 0.0f : f12.floatValue();
        Float f13 = transform.f28882d;
        float floatValue4 = f13 == null ? 1.0f : f13.floatValue();
        Float f14 = transform.tx;
        float floatValue5 = f14 == null ? 0.0f : f14.floatValue();
        Float f15 = transform.ty;
        float floatValue6 = f15 == null ? 0.0f : f15.floatValue();
        fArr[0] = floatValue;
        fArr[1] = floatValue3;
        fArr[2] = floatValue5;
        fArr[3] = floatValue2;
        fArr[4] = floatValue4;
        fArr[5] = floatValue6;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
        matrix.setValues(fArr);
        this.transform = matrix;
    }

    private final void parseStyles(ShapeEntity shapeEntity) {
        ShapeEntity.ShapeStyle shapeStyle = shapeEntity.styles;
        if (shapeStyle == null) {
            return;
        }
        Styles styles = new Styles();
        ShapeEntity.ShapeStyle.RGBAColor rGBAColor = shapeStyle.fill;
        if (rGBAColor != null) {
            float checkValueRange = checkValueRange(rGBAColor);
            Float f10 = rGBAColor.f28871a;
            int floatValue = (int) ((f10 == null ? 0.0f : f10.floatValue()) * checkValueRange);
            Float f11 = rGBAColor.f28874r;
            int floatValue2 = (int) ((f11 == null ? 0.0f : f11.floatValue()) * checkValueRange);
            Float f12 = rGBAColor.f28873g;
            int floatValue3 = (int) ((f12 == null ? 0.0f : f12.floatValue()) * checkValueRange);
            Float f13 = rGBAColor.f28872b;
            styles.setFill$com_opensource_svgaplayer(Color.argb(floatValue, floatValue2, floatValue3, (int) ((f13 == null ? 0.0f : f13.floatValue()) * checkValueRange)));
        }
        ShapeEntity.ShapeStyle.RGBAColor rGBAColor2 = shapeStyle.stroke;
        if (rGBAColor2 != null) {
            float checkValueRange2 = checkValueRange(rGBAColor2);
            Float f14 = rGBAColor2.f28871a;
            int floatValue4 = (int) ((f14 == null ? 0.0f : f14.floatValue()) * checkValueRange2);
            Float f15 = rGBAColor2.f28874r;
            int floatValue5 = (int) ((f15 == null ? 0.0f : f15.floatValue()) * checkValueRange2);
            Float f16 = rGBAColor2.f28873g;
            int floatValue6 = (int) ((f16 == null ? 0.0f : f16.floatValue()) * checkValueRange2);
            Float f17 = rGBAColor2.f28872b;
            styles.setStroke$com_opensource_svgaplayer(Color.argb(floatValue4, floatValue5, floatValue6, (int) ((f17 == null ? 0.0f : f17.floatValue()) * checkValueRange2)));
        }
        Float f18 = shapeStyle.strokeWidth;
        styles.setStrokeWidth$com_opensource_svgaplayer(f18 == null ? 0.0f : f18.floatValue());
        ShapeEntity.ShapeStyle.LineCap lineCap = shapeStyle.lineCap;
        if (lineCap != null) {
            int i9 = WhenMappings.$EnumSwitchMapping$1[lineCap.ordinal()];
            if (i9 == 1) {
                styles.setLineCap$com_opensource_svgaplayer("butt");
            } else if (i9 == 2) {
                styles.setLineCap$com_opensource_svgaplayer("round");
            } else if (i9 == 3) {
                styles.setLineCap$com_opensource_svgaplayer("square");
            }
        }
        ShapeEntity.ShapeStyle.LineJoin lineJoin = shapeStyle.lineJoin;
        if (lineJoin != null) {
            int i10 = WhenMappings.$EnumSwitchMapping$2[lineJoin.ordinal()];
            if (i10 == 1) {
                styles.setLineJoin$com_opensource_svgaplayer("bevel");
            } else if (i10 == 2) {
                styles.setLineJoin$com_opensource_svgaplayer("miter");
            } else if (i10 == 3) {
                styles.setLineJoin$com_opensource_svgaplayer("round");
            }
        }
        Float f19 = shapeStyle.miterLimit;
        styles.setMiterLimit$com_opensource_svgaplayer((int) (f19 != null ? f19.floatValue() : 0.0f));
        styles.setLineDash$com_opensource_svgaplayer(new float[3]);
        Float f20 = shapeStyle.lineDashI;
        if (f20 != null) {
            styles.getLineDash()[0] = f20.floatValue();
        }
        Float f21 = shapeStyle.lineDashII;
        if (f21 != null) {
            styles.getLineDash()[1] = f21.floatValue();
        }
        Float f22 = shapeStyle.lineDashIII;
        if (f22 != null) {
            styles.getLineDash()[2] = f22.floatValue();
        }
        this.styles = styles;
    }
}
