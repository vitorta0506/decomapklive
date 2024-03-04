package com.guochao.pusher.beauty;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.library_xmagic.R$mipmap;
import com.guochao.library_xmagic.R$string;
import com.guochao.library_xmagic.XMagicHelper;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.base.ILivePusherKt;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.xmagic.XmagicApi;
import com.tencent.xmagic.XmagicConstant;
import com.tencent.xmagic.XmagicProperty;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import org.light.utils.FileUtils;
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 :2\u00020\u0001:\u0001:B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0010H\u0002J\b\u0010\u0017\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u0015H\u0016J\u000e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u001bH\u0016J`\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\b\u0010\u001f\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020#2\b\b\u0002\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u000fH\u0002J\u0006\u0010)\u001a\u00020\u0015J\u001e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020+J\b\u0010/\u001a\u00020\u0015H\u0016J\u0012\u00100\u001a\u00020\u00152\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u001a\u00103\u001a\u00020\u00152\b\u00104\u001a\u0004\u0018\u00010\u000f2\u0006\u00105\u001a\u00020#H\u0016J\u0012\u00106\u001a\u00020\u00152\b\u00107\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR \u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00100\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;", "context", "Landroid/app/Application;", "helper", "Lcom/guochao/library_xmagic/XMagicHelper;", "(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;)V", "lutList", "Ljava/util/ArrayList;", "Lcom/guochao/pusher/beauty/FilterItem;", "Lkotlin/collections/ArrayList;", "getLutList", "()Ljava/util/ArrayList;", "propertyMap", "Landroid/util/ArrayMap;", "", "Lcom/tencent/xmagic/XmagicProperty;", "Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;", "resourceSet", "Ljava/util/concurrent/CopyOnWriteArraySet;", "addToCache", "", "xmagicProperty", "checkHelper", "destroyOnGLThread", "destroyOnMainThread", "getBeautyItems", "", "Lcom/guochao/pusher/beauty/BeautyItem;", "getFilterItems", "getXProperty", "key", "category", "Lcom/tencent/xmagic/XmagicProperty$Category;", "minValue", "", "maxValue", "defaultValue", "nowValue", "id", "resPath", "glContextCreated", "process", "", "textureId", "width", "height", "reInit", "setFaceDetectListener", "faceDetectListener", "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;", "setFilter", "bitmapPath", "strength", "setMotionTmpl", TCConstants.VIDEO_RECORD_VIDEPATH, "update", "beautyItem", "Companion", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class XMagicBeautyManager implements ILivePusher.BeautyManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static XMagicBeautyManager instance;
    @NotNull
    private final Application context;
    @NotNull
    private final XMagicHelper helper;
    @NotNull
    private final ArrayList<FilterItem> lutList;
    @NotNull
    private final ArrayMap<String, XmagicProperty<XmagicProperty.XmagicPropertyValues>> propertyMap;
    @NotNull
    private final CopyOnWriteArraySet<XmagicProperty<?>> resourceSet;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;", "", "()V", "instance", "Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "getInstance", "context", "Landroid/content/Context;", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final XMagicBeautyManager getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (XMagicBeautyManager.instance == null) {
                Context applicationContext = context.getApplicationContext();
                Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
                XMagicBeautyManager.instance = new XMagicBeautyManager((Application) applicationContext, null, 2, null);
            }
            XMagicBeautyManager xMagicBeautyManager = XMagicBeautyManager.instance;
            Intrinsics.checkNotNull(xMagicBeautyManager);
            return xMagicBeautyManager;
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[XmagicProperty.Category.values().length];
            iArr[XmagicProperty.Category.LUT.ordinal()] = 1;
            iArr[XmagicProperty.Category.MOTION.ordinal()] = 2;
            iArr[XmagicProperty.Category.BEAUTY.ordinal()] = 3;
            iArr[XmagicProperty.Category.BODY_BEAUTY.ordinal()] = 4;
            iArr[XmagicProperty.Category.SEGMENTATION.ordinal()] = 5;
            iArr[XmagicProperty.Category.MAKEUP.ordinal()] = 6;
            iArr[XmagicProperty.Category.KV.ordinal()] = 7;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private XMagicBeautyManager(Application application, XMagicHelper xMagicHelper) {
        this.context = application;
        this.helper = xMagicHelper;
        this.propertyMap = new ArrayMap<>();
        this.resourceSet = new CopyOnWriteArraySet<>();
        this.lutList = new ArrayList<>();
    }

    private final void addToCache(XmagicProperty<?> xmagicProperty) {
        boolean z10;
        boolean z11;
        boolean z12;
        XmagicProperty.Category category = xmagicProperty.category;
        int i9 = category == null ? -1 : WhenMappings.$EnumSwitchMapping$0[category.ordinal()];
        Object obj = null;
        if (i9 == 1) {
            Iterator<T> it = this.resourceSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((XmagicProperty) next).category == XmagicProperty.Category.LUT) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    obj = next;
                    break;
                }
            }
            XmagicProperty xmagicProperty2 = (XmagicProperty) obj;
            if (xmagicProperty2 != null) {
                this.resourceSet.remove(xmagicProperty2);
            }
        } else if (i9 == 2) {
            Iterator<T> it2 = this.resourceSet.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                if (((XmagicProperty) next2).category == XmagicProperty.Category.MOTION) {
                    z11 = true;
                    continue;
                } else {
                    z11 = false;
                    continue;
                }
                if (z11) {
                    obj = next2;
                    break;
                }
            }
            XmagicProperty xmagicProperty3 = (XmagicProperty) obj;
            if (xmagicProperty3 != null) {
                this.resourceSet.remove(xmagicProperty3);
            }
        } else if (i9 == 3) {
            Iterator<T> it3 = this.resourceSet.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Object next3 = it3.next();
                XmagicProperty xmagicProperty4 = (XmagicProperty) next3;
                if (xmagicProperty4.category == XmagicProperty.Category.BEAUTY && Intrinsics.areEqual(xmagicProperty4.effKey, xmagicProperty.effKey)) {
                    z12 = true;
                    continue;
                } else {
                    z12 = false;
                    continue;
                }
                if (z12) {
                    obj = next3;
                    break;
                }
            }
            XmagicProperty xmagicProperty5 = (XmagicProperty) obj;
            if (xmagicProperty5 != null) {
                this.resourceSet.remove(xmagicProperty5);
            }
        }
        this.resourceSet.add(xmagicProperty);
    }

    private final void checkHelper() {
        if (this.helper.getMXmagicApi() == null) {
            this.helper.reInit();
            for (XmagicProperty<?> xmagicProperty : this.resourceSet) {
                this.helper.update(xmagicProperty);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final XMagicBeautyManager getInstance(@NotNull Context context) {
        return Companion.getInstance(context);
    }

    private final XmagicProperty<XmagicProperty.XmagicPropertyValues> getXProperty(String str, XmagicProperty.Category category, float f10, float f11, float f12, float f13, String str2, String str3) {
        XmagicProperty<XmagicProperty.XmagicPropertyValues> xmagicProperty = this.propertyMap.get(str);
        String str4 = WhenMappings.$EnumSwitchMapping$0[category.ordinal()] == 1 ? null : str;
        if (xmagicProperty == null) {
            xmagicProperty = new XmagicProperty<>(category, str2, str3, str4, (category == XmagicProperty.Category.LUT && str3 == null) ? null : new XmagicProperty.XmagicPropertyValues(f10, f11, f12, f10 / 100.0f, f11 / 100.0f));
            this.propertyMap.put(str, xmagicProperty);
        }
        XmagicProperty.XmagicPropertyValues xmagicPropertyValues = xmagicProperty.effValue;
        if (xmagicPropertyValues != null) {
            xmagicPropertyValues.setCurrentDisplayValue(f13);
        }
        return xmagicProperty;
    }

    static /* synthetic */ XmagicProperty getXProperty$default(XMagicBeautyManager xMagicBeautyManager, String str, XmagicProperty.Category category, float f10, float f11, float f12, float f13, String str2, String str3, int i9, Object obj) {
        return xMagicBeautyManager.getXProperty(str, (i9 & 2) != 0 ? XmagicProperty.Category.BEAUTY : category, (i9 & 4) != 0 ? 0.0f : f10, (i9 & 8) != 0 ? 100.0f : f11, (i9 & 16) != 0 ? 0.0f : f12, f13, (i9 & 64) != 0 ? null : str2, (i9 & 128) != 0 ? null : str3);
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void destroyOnGLThread() {
        this.helper.destroyOnGLThread();
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void destroyOnMainThread() {
        this.helper.pause();
        this.helper.destroy();
        this.resourceSet.clear();
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    @NotNull
    public List<BeautyItem> getBeautyItems() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BeautyItem(R$mipmap.beauty_whiten, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Whitening_my, "beauty.lutFoundationAlpha", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_eye_lighten, 0.0f, 0.0f, 30.0f, 0.0f, R$string.Eye_lighten_my, "beauty.eyeLighten", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_smooth, 0.0f, 0.0f, 10.0f, 0.0f, R$string.Beauty_my, "smooth.smooth", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_thin_face1, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Face1_my, "basicV7.natureFace", null, XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID, 150, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_ruddy, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Flush_my, XmagicConstant.BeautyConstant.BEAUTY_ROSY, null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_enlarge_eye, 0.0f, 0.0f, 30.0f, 0.0f, R$string.Big_Eyes_my, "basicV7.enlargeEye", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_thin_nose, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Nose_my, "basicV7.thinNose", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_tooth_beauty, 0.0f, 0.0f, 50.0f, 0.0f, R$string.Tooth_whiten_my, "beauty.toothWhiten", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_liti, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Liti_my, "beauty.faceFeatureSoftlight", "/images/beauty/liti_ziran.png", "beauty.softLight.softLightMask", 22, null));
        arrayList.add(new BeautyItem(R$mipmap.image_saturation, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Baohe_my, XmagicConstant.BeautyConstant.BEAUTY_SATURATION, null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_v_face, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Face2_my, "basicV7.vFace", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_lips, 0.0f, 0.0f, 30.0f, 0.0f, R$string.Lips_my, "beauty.faceFeatureLipsLut", "/images/beauty/lips_fuguhong.png", "beauty.lips.lipsMask", 22, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_nose_wing, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Nose_wing_my, "basicV7.noseWing", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.image_sharpen, 0.0f, 0.0f, 10.0f, 0.0f, R$string.clarity, "beauty.lutClearAlpha", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_remove_pounch, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Remove_my, "beauty.removeWrinkle", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_wrinkle_smooth, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Remove_law_my, "beauty.removeLawLine", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_remove_eye_pouch, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Remove_eye_my, "beauty.removeEyeBags", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_chin, -100.0f, 0.0f, -20.0f, 0.0f, R$string.Face3_my, "basicV7.chin", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_thin_cheek, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Quangu_my, "basicV7.cheekboneThin", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_redcheeks, 0.0f, 0.0f, 10.0f, 0.0f, R$string.Saihong_my, "beauty.faceFeatureRedCheek", "/images/beauty/saihong_jianyue.png", "beauty.makeupMultiply.multiplyMask", 22, null));
        arrayList.add(new BeautyItem(R$mipmap.image_contrast, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Contrast_my, "beauty.imageContrastAlpha", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_eye_distance, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Eye_distance_my, "basicV7.eyeDistance", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_eye_angle, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Eye_coner_my, "basicV7.eyeAngle", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_basic_face, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Face_shape_my, "liquefaction.basic3", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_narrow_face, 0.0f, 0.0f, 20.0f, 0.0f, R$string.Face_narrow_my, "basicV7.thinFace", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_forehead, -100.0f, 0.0f, 0.0f, 0.0f, R$string.ForeHead_my, "basicV7.forehead", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_short_face, 0.0f, 0.0f, 0.0f, 0.0f, R$string.Face4_my, "basicV7.shortFace", null, null, TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_nose_position, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Nose_position_my, "basicV7.noseHeight", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_mouth_size, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Mouse_shape_my, "basicV7.mouthSize", null, null, 404, null));
        arrayList.add(new BeautyItem(R$mipmap.beauty_mouth_height, -100.0f, 0.0f, 0.0f, 0.0f, R$string.Mouse_height_my, "basicV7.mouthHeight", null, null, 404, null));
        return arrayList;
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    @NotNull
    public List<FilterItem> getFilterItems() {
        if (!this.lutList.isEmpty()) {
            return this.lutList;
        }
        JSONObject jSONObject = new JSONObject(ILivePusherKt.LUT_JSON);
        String string = jSONObject.getString("baseUrl");
        JSONArray jSONArray = jSONObject.getJSONArray("list");
        int length = jSONArray.length();
        for (int i9 = 0; i9 < length; i9++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
            String name = jSONObject2.getString("name");
            String string2 = jSONObject2.getString("id");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(\"id\")");
            Intrinsics.checkNotNullExpressionValue(name, "name");
            this.lutList.add(new FilterItem(string2, name, string + "icon/" + name + FileUtils.PIC_POSTFIX_PNG, string + "lut/" + name + FileUtils.PIC_POSTFIX_PNG, (float) jSONObject2.getDouble("defaultValue"), 0.0f, 32, null));
        }
        return this.lutList;
    }

    @NotNull
    public final ArrayList<FilterItem> getLutList() {
        return this.lutList;
    }

    public final void glContextCreated() {
        this.helper.destroyOnGLThread();
        this.helper.reInit();
        for (XmagicProperty<?> xmagicProperty : this.resourceSet) {
            this.helper.update(xmagicProperty);
        }
    }

    public final int process(int i9, int i10, int i11) {
        checkHelper();
        return this.helper.process(i9, i10, i11);
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void reInit() {
        this.helper.reInit();
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void setFaceDetectListener(@Nullable final ILivePusher.FaceDetectListener faceDetectListener) {
        if (faceDetectListener == null) {
            this.helper.getFaceListener().setFaceListener(null);
        } else {
            this.helper.getFaceListener().setFaceListener(new XmagicApi.XmagicAIDataListener() { // from class: com.guochao.pusher.beauty.XMagicBeautyManager$setFaceDetectListener$1
                @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
                public void onBodyDataUpdated(@Nullable Object obj) {
                }

                @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
                public void onFaceDataUpdated(@Nullable Object obj) {
                    if (obj instanceof ArrayList) {
                        ILivePusher.FaceDetectListener.this.hasFace(((ArrayList) obj).size() >= 1);
                    }
                }

                @Override // com.tencent.xmagic.XmagicApi.XmagicAIDataListener
                public void onHandDataUpdated(@Nullable Object obj) {
                }
            });
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void setFilter(@Nullable String str, float f10) {
        checkHelper();
        if (TextUtils.isEmpty(str)) {
            XMagicHelper xMagicHelper = this.helper;
            XmagicProperty<?> xProperty$default = getXProperty$default(this, "lut_" + str, XmagicProperty.Category.LUT, 0.0f, 0.0f, 0.0f, f10, XmagicProperty.ID_NONE, null, 156, null);
            addToCache(xProperty$default);
            xMagicHelper.update(xProperty$default);
            return;
        }
        XMagicHelper xMagicHelper2 = this.helper;
        String name = new File(str).getName();
        XmagicProperty<?> xProperty$default2 = getXProperty$default(this, "lut_" + str, XmagicProperty.Category.LUT, 0.0f, 0.0f, 0.0f, f10, name, str, 28, null);
        addToCache(xProperty$default2);
        xMagicHelper2.update(xProperty$default2);
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void setMotionTmpl(@Nullable String str) {
        checkHelper();
        if (!(str == null || str.length() == 0)) {
            XMagicHelper xMagicHelper = this.helper;
            XmagicProperty<?> xmagicProperty = new XmagicProperty<>(XmagicProperty.Category.MOTION, new File(str).getName(), str, null, null);
            addToCache(xmagicProperty);
            xMagicHelper.update(xmagicProperty);
            return;
        }
        XMagicHelper xMagicHelper2 = this.helper;
        XmagicProperty.Category category = XmagicProperty.Category.MOTION;
        XmagicProperty<?> xmagicProperty2 = new XmagicProperty<>(category, XmagicProperty.ID_NONE, XMagicHelper.Companion.getSBaseDir() + "light_assets/template.json", null, null);
        addToCache(xmagicProperty2);
        xMagicHelper2.update(xmagicProperty2);
    }

    @Override // com.guochao.pusher.base.ILivePusher.BeautyManager
    public void update(@NotNull BeautyItem beautyItem) {
        Intrinsics.checkNotNullParameter(beautyItem, "beautyItem");
        checkHelper();
        XMagicHelper xMagicHelper = this.helper;
        XmagicProperty<?> xProperty$default = getXProperty$default(this, beautyItem.getEffectKey(), null, beautyItem.getMinValue(), beautyItem.getMaxValue(), beautyItem.getDefaultValue(), beautyItem.getCurrentValue(), beautyItem.getId$lib_pusher_and_player_release(), beautyItem.getEffectRes(), 2, null);
        addToCache(xProperty$default);
        xMagicHelper.update(xProperty$default);
    }

    /* synthetic */ XMagicBeautyManager(Application application, XMagicHelper xMagicHelper, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(application, (i9 & 2) != 0 ? new XMagicHelper(application) : xMagicHelper);
    }
}
