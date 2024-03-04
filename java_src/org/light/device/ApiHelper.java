package org.light.device;

import android.os.Build;
import android.provider.MediaStore;
import android.view.View;
/* loaded from: classes7.dex */
public class ApiHelper {
    public static final boolean CAN_TAKE_VIDEO;
    public static final boolean HAS_ACTION_BAR;
    public static final boolean HAS_BITMAP_REGION_DECODER;
    public static final boolean HAS_CAMCORDERPROFILE_METHOD;
    public static final boolean HAS_CAMERAINFO;
    public static final boolean HAS_EDITOR_APPLY;
    public static final boolean HAS_EFFECTS_RECORDING = false;
    public static final boolean HAS_EFFECTS_RECORDING_CONTEXT_INPUT;
    public static final boolean HAS_FACE_DETECTION;
    public static final boolean HAS_FINE_RESOLUTION_QUALITY_LEVELS;
    public static final boolean HAS_GET_CAMERA_DISABLED;
    public static final boolean HAS_GET_SUPPORTED_VIDEO_SIZE;
    public static final boolean HAS_INTENT_EXTRA_LOCAL_ONLY;
    public static final boolean HAS_MEDIA_ACTION_SOUND;
    public static final boolean HAS_MEDIA_COLUMNS_RESOLUTION = true;
    public static final boolean HAS_MEDIA_PROVIDER_FILES_TABLE;
    public static final boolean HAS_MOTION_EVENT_TRANSFORM;
    public static final boolean HAS_MTP;
    public static final boolean HAS_MULTICORE_CHIPS;
    public static final boolean HAS_OLD_PANORAMA;
    public static final boolean HAS_OPTIONS_IN_MUTABLE;
    public static final boolean HAS_POST_ON_ANIMATION;
    public static final boolean HAS_RELEASE_SURFACE_TEXTURE;
    public static final boolean HAS_REMOTE_VIEWS_SERVICE;
    public static final boolean HAS_SD_CARD;
    public static final boolean HAS_SET_DEFALT_BUFFER_SIZE;
    public static final boolean HAS_SET_ICON_ATTRIBUTE;
    public static final boolean HAS_SET_SYSTEM_UI_VISIBILITY;
    public static boolean HAS_SURFACE_TEXTURE;
    public static final boolean HAS_SURFACE_TEXTURE_RECORDING;
    public static final boolean HAS_TIME_LAPSE_RECORDING;
    public static final boolean HAS_VIEW_PROPERTY_ANIMATOR;
    public static final boolean HAS_VIEW_TRANSFORM_PROPERTIES;
    public static final boolean HAS_ZOOM_WHEN_RECORDING;
    public static final boolean HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT = true;
    public static final boolean HAS_AUTO_FOCUS_MOVE_CALLBACK = true;
    public static final boolean HAS_CAMERA_FOCUS_AREA = true;
    public static final boolean HAS_CAMERA_METERING_AREA = true;
    public static final boolean HAS_CAMERA_HDR = true;
    public static final boolean HAS_CAMERA_HDR_PLUS = true;
    public static final boolean HAS_DISPLAY_LISTENER = true;
    public static final boolean CAN_START_PREVIEW_IN_JPEG_CALLBACK = true;
    public static final boolean USE_COOLPAD8013_PORTING = false;
    public static final boolean USE_888_PIXEL_FORMAT = true;
    public static final boolean ENABLE_PHOTO_EDITOR = true;
    public static final boolean HAS_HARDWARE_ACCELERATION = true;
    public static final boolean HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE = hasField(View.class, "SYSTEM_UI_FLAG_LAYOUT_STABLE");
    public static final boolean HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION = hasField(MediaStore.MediaColumns.class, "WIDTH");
    public static final boolean HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER = true;
    public static final boolean HAS_REUSING_BITMAP_IN_BITMAP_FACTORY = true;
    public static final boolean HAS_SET_BEAM_PUSH_URIS = true;

    /* loaded from: classes7.dex */
    public static class VERSION_CODES {
        public static final int BASE = 1;
        public static final int BASE_1_1 = 2;
        public static final int CUPCAKE = 3;
        public static final int DONUT = 4;
        public static final int ECLAIR = 5;
        public static final int ECLAIR_0_1 = 6;
        public static final int ECLAIR_MR1 = 7;
        public static final int FROYO = 8;
        public static final int GINGERBREAD = 9;
        public static final int GINGERBREAD_MR1 = 10;
        public static final int HONEYCOMB = 11;
        public static final int HONEYCOMB_MR1 = 12;
        public static final int HONEYCOMB_MR2 = 13;
        public static final int ICE_CREAM_SANDWICH = 14;
        public static final int ICE_CREAM_SANDWICH_MR1 = 15;
        public static final int JELLY_BEAN = 16;
        public static final int JELLY_BEAN_MR1 = 17;
        public static final int JELLY_BEAN_MR2 = 18;
        public static final int KITKAT = 19;
        public static final int KITKAT_WATCH = 20;
        public static final int LOLLIPOP = 21;
        public static final int LOLLIPOP_MR1 = 22;
        public static final int NOUGAT = 24;
        public static final int O = 26;
        public static final int O_MR1 = 27;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:1|(2:2|3)|(2:9|(11:11|12|13|14|15|16|(1:18)(1:25)|19|(1:21)|22|23))|29|12|13|14|15|16|(0)(0)|19|(0)|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r2 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    static {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.device.ApiHelper.<clinit>():void");
    }

    private static boolean hasField(Class<?> cls, String str) {
        try {
            cls.getDeclaredField(str);
            return true;
        } catch (NoSuchFieldException unused) {
            return false;
        }
    }

    public static boolean hasGingerbread() {
        return true;
    }

    public static boolean hasHoneycomb() {
        return true;
    }

    public static boolean hasHoneycombMR1() {
        return true;
    }

    public static boolean hasIceCreamSandwich() {
        return true;
    }

    public static boolean hasJellyBean() {
        return true;
    }

    public static boolean hasJellyBeanMR1() {
        return true;
    }

    public static boolean hasJellyBeanMR2() {
        return true;
    }

    public static boolean hasKitkat() {
        return true;
    }

    public static boolean hasLollipop() {
        return true;
    }

    public static boolean hasLollipopMR1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean hasMarshmallow() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private static boolean hasMethod(String str, String str2, Class<?>... clsArr) {
        try {
            Class.forName(str).getDeclaredMethod(str2, clsArr);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean hasNougat() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isAndroid_8_1() {
        return Build.VERSION.SDK_INT == 27;
    }

    public static boolean isExactlyKitkat() {
        return false;
    }

    private static boolean hasMethod(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            cls.getDeclaredMethod(str, clsArr);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }
}
