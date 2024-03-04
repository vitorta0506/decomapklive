package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MicroPhoneLevelData;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/MicroPhoneLevelHelper;", "", "()V", "checkMicroPhoneLevel", "", "multiLiveRoom", "getMicroPhoneLevelMultiData", "Lcom/guochao/faceshow/aaspring/beans/MicroPhoneLevelData;", "getMicroPhoneLevelMultiSwitch", "", "getMicroPhoneLevelSingleData", "getMicroPhoneLevelSingleSwitch", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MicroPhoneLevelHelper {
    @NotNull
    public static final MicroPhoneLevelHelper INSTANCE = new MicroPhoneLevelHelper();

    private MicroPhoneLevelHelper() {
    }

    private final MicroPhoneLevelData getMicroPhoneLevelMultiData() {
        String paramJson = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_MULTI, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelMultiData$paramJson$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).getParamJson();
        if (paramJson == null || paramJson.length() == 0) {
            return new MicroPhoneLevelData(0, false);
        }
        try {
            Object fromJson = GsonGetter.getGson().fromJson(paramJson, (Class<Object>) MicroPhoneLevelData.class);
            Intrinsics.checkNotNullExpressionValue(fromJson, "getGson().fromJson(param…oneLevelData::class.java)");
            return (MicroPhoneLevelData) fromJson;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return new MicroPhoneLevelData(0, false);
        }
    }

    private final int getMicroPhoneLevelMultiSwitch() {
        boolean isAvailable = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_MULTI, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$available$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).isAvailable();
        String paramJson = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_MULTI, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelMultiSwitch$paramJson$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).getParamJson();
        if (paramJson == null || paramJson.length() == 0) {
            return 1;
        }
        return isAvailable ? 1 : 0;
    }

    private final MicroPhoneLevelData getMicroPhoneLevelSingleData() {
        String paramJson = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_SINGLE, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelSingleData$paramJson$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).getParamJson();
        if (paramJson == null || paramJson.length() == 0) {
            return new MicroPhoneLevelData(0, false);
        }
        try {
            Object fromJson = GsonGetter.getGson().fromJson(paramJson, (Class<Object>) MicroPhoneLevelData.class);
            Intrinsics.checkNotNullExpressionValue(fromJson, "getGson().fromJson(param…oneLevelData::class.java)");
            return (MicroPhoneLevelData) fromJson;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return new MicroPhoneLevelData(0, false);
        }
    }

    private final int getMicroPhoneLevelSingleSwitch() {
        boolean isAvailable = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_SINGLE, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$available$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).isAvailable();
        String paramJson = FeatureKt.requireFeature(Feature.LIVE_MICROPHONE_SINGLE, new Function1<Feature, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper$getMicroPhoneLevelSingleSwitch$paramJson$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
            }
        }).getParamJson();
        if (paramJson == null || paramJson.length() == 0) {
            return 1;
        }
        return isAvailable ? 1 : 0;
    }

    public final boolean checkMicroPhoneLevel(boolean z10) {
        if (z10) {
            if (getMicroPhoneLevelMultiSwitch() == 0) {
                GCApplication app = GCApplication.app();
                String string = GCApplication.app().getString(R.string.microphone_level_tip, new Object[]{Integer.valueOf(getMicroPhoneLevelMultiData().getMinLevel())});
                Intrinsics.checkNotNullExpressionValue(string, "app().getString(\n       …vel\n                    )");
                ToastUtils.showToast$default(app, string, 0, 0, 12, null);
                return true;
            }
        } else if (getMicroPhoneLevelSingleSwitch() == 0) {
            GCApplication app2 = GCApplication.app();
            String string2 = GCApplication.app().getString(R.string.microphone_level_tip, new Object[]{Integer.valueOf(getMicroPhoneLevelSingleData().getMinLevel())});
            Intrinsics.checkNotNullExpressionValue(string2, "app().getString(\n       …vel\n                    )");
            ToastUtils.showToast$default(app2, string2, 0, 0, 12, null);
            return true;
        }
        return false;
    }
}
