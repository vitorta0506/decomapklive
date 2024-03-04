package com.tencent.xmagic;

import android.text.TextUtils;
import com.tencent.xmagic.XmagicConstant;
import com.tencent.xmagic.XmagicProperty;
import org.light.utils.LightLogUtil;
/* loaded from: classes4.dex */
public class XmagicPropertyChecker {
    private static String TAG = "XmagicPropertyChecker";

    private static boolean checkBeauty(XmagicProperty<?> xmagicProperty) {
        if (TextUtils.isEmpty(xmagicProperty.effKey)) {
            LightLogUtil.e(TAG, "checkBeauty,xmagicProperty.effKey is invalid");
            return false;
        } else if (xmagicProperty.effValue == 0) {
            LightLogUtil.e(TAG, "checkBeauty.xmagicProperty.effValue is invalid");
            return false;
        } else if ((xmagicProperty.effKey.equals("basicV7.natureFace") || xmagicProperty.effKey.equals("basicV7.godnessFace") || xmagicProperty.effKey.equals("basicV7.maleGodFace")) && TextUtils.isEmpty(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkBeauty,xmagicProperty.id  is invalid");
            return false;
        } else if (xmagicProperty.effKey.equals("beauty.faceFeatureLipsLut")) {
            return checkBeautyItem(xmagicProperty, "beauty.lips.lipsMask");
        } else {
            if (xmagicProperty.effKey.equals("beauty.faceFeatureRedCheek")) {
                return checkBeautyItem(xmagicProperty, "beauty.makeupMultiply.multiplyMask");
            }
            if (xmagicProperty.effKey.equals("beauty.faceFeatureSoftlight")) {
                return checkBeautyItem(xmagicProperty, "beauty.softLight.softLightMask");
            }
            return true;
        }
    }

    private static boolean checkBeautyItem(XmagicProperty<?> xmagicProperty, String str) {
        if (!str.equals(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkBeautyItem,xmagicProperty.id is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.resPath)) {
            LightLogUtil.e(TAG, "checkBeautyItem,xmagicProperty.resPath is invalid ");
            return false;
        } else {
            return true;
        }
    }

    private static boolean checkBodyBeauty(XmagicProperty<?> xmagicProperty) {
        if (!TextUtils.isEmpty(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkBodyBeauty，xmagicProperty.id is invalid ");
            return false;
        } else if (!TextUtils.isEmpty(xmagicProperty.resPath)) {
            LightLogUtil.e(TAG, "checkBodyBeauty，xmagicProperty.resPath is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.effKey)) {
            LightLogUtil.e(TAG, "checkBodyBeauty，xmagicProperty.effKey is invalid ");
            return false;
        } else if (xmagicProperty.effValue == 0) {
            LightLogUtil.e(TAG, "checkBodyBeauty，xmagicProperty.effValue is invalid ");
            return false;
        } else {
            return true;
        }
    }

    private static boolean checkLut(XmagicProperty<?> xmagicProperty) {
        if (TextUtils.isEmpty(xmagicProperty.f35092id)) {
            return false;
        }
        boolean equals = XmagicProperty.ID_NONE.equals(xmagicProperty.f35092id);
        boolean isEmpty = TextUtils.isEmpty(xmagicProperty.resPath);
        if (!equals) {
            isEmpty = !isEmpty;
        }
        if (!isEmpty) {
            LightLogUtil.e(TAG, "checkLut,xmagicProperty.resPath is invalid ");
            return false;
        }
        if (!(!equals ? xmagicProperty.effValue == 0 : xmagicProperty.effValue != 0)) {
            LightLogUtil.e(TAG, "checkLut,xmagicProperty.effValue is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.effKey)) {
            return true;
        } else {
            LightLogUtil.e(TAG, "checkLut,xmagicProperty.effKey is invalid ");
            return false;
        }
    }

    private static boolean checkMakeUp(XmagicProperty<?> xmagicProperty) {
        if (TextUtils.isEmpty(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkMakeUp,xmagicProperty.id is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.resPath)) {
            LightLogUtil.e(TAG, "checkMakeUp,xmagicProperty.resPath is invalid ");
            return false;
        } else {
            boolean equals = XmagicProperty.ID_NONE.equals(xmagicProperty.f35092id);
            boolean isEmpty = TextUtils.isEmpty(xmagicProperty.effKey);
            if (!equals) {
                isEmpty = !isEmpty;
            }
            if (!isEmpty) {
                LightLogUtil.e(TAG, "checkMakeUp,xmagicProperty.effKey is invalid ");
                return false;
            }
            V v10 = xmagicProperty.effValue;
            if (!equals ? v10 == 0 : v10 != 0) {
                return true;
            }
            LightLogUtil.e(TAG, "checkMakeUp,xmagicProperty.effValue is invalid ");
            return false;
        }
    }

    private static boolean checkMotion(XmagicProperty<?> xmagicProperty) {
        if (TextUtils.isEmpty(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkMotion,xmagicProperty.id is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.resPath)) {
            LightLogUtil.e(TAG, "checkMotion,xmagicProperty.resPath is invalid ");
            return false;
        } else if (!TextUtils.isEmpty(xmagicProperty.effKey)) {
            LightLogUtil.e(TAG, "checkMotion,xmagicProperty.effKey is invalid ");
            return false;
        } else if (xmagicProperty.effValue != 0) {
            LightLogUtil.e(TAG, "checkMotion,xmagicProperty.effValue is invalid ");
            return false;
        } else {
            return true;
        }
    }

    public static boolean checkProperty(XmagicProperty<?> xmagicProperty) {
        if (xmagicProperty == null) {
            LightLogUtil.e(TAG, "checkProperty,xmagicProperty is invalid");
            return false;
        }
        XmagicProperty.Category category = xmagicProperty.category;
        if (category == null) {
            LightLogUtil.e(TAG, "checkProperty,xmagicProperty.category is invalid");
            return false;
        } else if (XmagicProperty.Category.BEAUTY == category) {
            return checkBeauty(xmagicProperty);
        } else {
            if (XmagicProperty.Category.BODY_BEAUTY == category) {
                return checkBodyBeauty(xmagicProperty);
            }
            if (XmagicProperty.Category.LUT == category) {
                return checkLut(xmagicProperty);
            }
            if (XmagicProperty.Category.MOTION == category) {
                return checkMotion(xmagicProperty);
            }
            if (XmagicProperty.Category.MAKEUP == category) {
                return checkMakeUp(xmagicProperty);
            }
            if (XmagicProperty.Category.SEGMENTATION == category) {
                return checkSeg(xmagicProperty);
            }
            XmagicProperty.Category category2 = XmagicProperty.Category.KV;
            return true;
        }
    }

    private static boolean checkSeg(XmagicProperty<?> xmagicProperty) {
        boolean isEmpty;
        if (TextUtils.isEmpty(xmagicProperty.f35092id)) {
            LightLogUtil.e(TAG, "checkSeg,xmagicProperty.id is invalid ");
            return false;
        } else if (TextUtils.isEmpty(xmagicProperty.resPath)) {
            LightLogUtil.e(TAG, "checkSeg,xmagicProperty.resPath is invalid ");
            return false;
        } else {
            if (XmagicConstant.SegmentationId.CUSTOM_SEG_ID.equals(xmagicProperty.f35092id)) {
                isEmpty = !TextUtils.isEmpty(xmagicProperty.effKey);
            } else {
                isEmpty = TextUtils.isEmpty(xmagicProperty.effKey);
            }
            if (!isEmpty) {
                LightLogUtil.e(TAG, "checkSeg,xmagicProperty.effKey is invalid ");
                return false;
            } else if (xmagicProperty.effValue != 0) {
                LightLogUtil.e(TAG, "checkSeg,xmagicProperty.effValue is invalid ");
                return false;
            } else {
                return true;
            }
        }
    }
}
