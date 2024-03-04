package com.guochao.lib_core.feature;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u001b\b\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0002\b\bH\u0007\u001a8\u0010\t\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\f\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b¢\u0006\u0002\u0010\r\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a#\u0010\u0011\u001a\u00020\u0007*\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b\u001a/\u0010\u0012\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\f2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\f\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b\u001a#\u0010\u0013\u001a\u00020\u0007*\u00020\u00032\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b\u001a+\u0010\u0014\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b\u001a<\u0010\u0015\u001a\u00020\u0007*\u00020\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b2\u001d\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\f\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\b\b¢\u0006\u0002\u0010\u0016\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"API", "", "requireFeature", "Lcom/guochao/lib_core/feature/Feature;", "featureName", "block", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "requireFeaturesCombined", "featureNames", "", "", "([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "testCode", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "onAvailable", "onResult", "onUnAvailable", "requireFeatureOnLifecycle", "requireFeaturesCombinedOnLifecycle", "(Landroidx/lifecycle/LifecycleOwner;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "lib_core_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FeatureKt {
    @NotNull
    private static final String API = "api/token/foundation/model/getModelConfigByKeys";

    public static final void onAvailable(@NotNull Feature feature, @NotNull Function1<? super Feature, Unit> block) {
        Intrinsics.checkNotNullParameter(feature, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (feature.isAvailable()) {
            block.invoke(feature);
        }
    }

    public static final void onResult(@NotNull List<Feature> list, @NotNull Function1<? super List<Feature>, Unit> block) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(list);
    }

    public static final void onUnAvailable(@NotNull Feature feature, @NotNull Function1<? super Feature, Unit> block) {
        Intrinsics.checkNotNullParameter(feature, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (feature.isAvailable()) {
            return;
        }
        block.invoke(feature);
    }

    @JvmOverloads
    @NotNull
    public static final Feature requireFeature(@NotNull String featureName) {
        Intrinsics.checkNotNullParameter(featureName, "featureName");
        return requireFeature$default(featureName, null, 2, null);
    }

    @JvmOverloads
    @NotNull
    public static final Feature requireFeature(@NotNull String featureName, @Nullable Function1<? super Feature, Unit> function1) {
        Intrinsics.checkNotNullParameter(featureName, "featureName");
        Feature findFeature$lib_core_release = Feature.Companion.findFeature$lib_core_release(featureName);
        if (function1 != null) {
            function1.invoke(findFeature$lib_core_release);
        }
        return findFeature$lib_core_release;
    }

    public static /* synthetic */ Feature requireFeature$default(String str, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            function1 = null;
        }
        return requireFeature(str, function1);
    }

    public static final void requireFeatureOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull final String featureName, @NotNull final Function1<? super Feature, Unit> block) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(featureName, "featureName");
        Intrinsics.checkNotNullParameter(block, "block");
        Feature.Companion.getViewModel$lib_core_release().bind(lifecycleOwner, new Observer() { // from class: com.guochao.lib_core.feature.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FeatureKt.m804requireFeatureOnLifecycle$lambda1(Function1.this, featureName, (FeatureResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: requireFeatureOnLifecycle$lambda-1  reason: not valid java name */
    public static final void m804requireFeatureOnLifecycle$lambda1(Function1 block, String featureName, FeatureResult featureResult) {
        Intrinsics.checkNotNullParameter(block, "$block");
        Intrinsics.checkNotNullParameter(featureName, "$featureName");
        block.invoke(Feature.Companion.findFeature$lib_core_release(featureName));
    }

    public static final void requireFeaturesCombined(@NotNull String[] featureNames, @NotNull Function1<? super List<Feature>, Unit> block) {
        Intrinsics.checkNotNullParameter(featureNames, "featureNames");
        Intrinsics.checkNotNullParameter(block, "block");
        ArrayList arrayList = new ArrayList();
        for (String str : featureNames) {
            arrayList.add(Feature.Companion.findFeature$lib_core_release(str));
        }
        block.invoke(arrayList);
    }

    public static final void requireFeaturesCombinedOnLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull final String[] featureNames, @NotNull final Function1<? super List<Feature>, Unit> block) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<this>");
        Intrinsics.checkNotNullParameter(featureNames, "featureNames");
        Intrinsics.checkNotNullParameter(block, "block");
        Feature.Companion.getViewModel$lib_core_release().bind(lifecycleOwner, new Observer() { // from class: com.guochao.lib_core.feature.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FeatureKt.m805requireFeaturesCombinedOnLifecycle$lambda3(featureNames, block, (FeatureResult) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: requireFeaturesCombinedOnLifecycle$lambda-3  reason: not valid java name */
    public static final void m805requireFeaturesCombinedOnLifecycle$lambda3(String[] featureNames, Function1 block, FeatureResult featureResult) {
        Intrinsics.checkNotNullParameter(featureNames, "$featureNames");
        Intrinsics.checkNotNullParameter(block, "$block");
        ArrayList arrayList = new ArrayList();
        for (String str : featureNames) {
            arrayList.add(Feature.Companion.findFeature$lib_core_release(str));
        }
        block.invoke(arrayList);
    }

    private static final void testCode(LifecycleOwner lifecycleOwner) {
        requireFeature(Feature.EARN_MONEY, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeature) {
                Intrinsics.checkNotNullParameter(requireFeature, "$this$requireFeature");
                FeatureKt.onAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$1.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onAvailable) {
                        Intrinsics.checkNotNullParameter(onAvailable, "$this$onAvailable");
                    }
                });
                FeatureKt.onUnAvailable(requireFeature, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$1.2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onUnAvailable) {
                        Intrinsics.checkNotNullParameter(onUnAvailable, "$this$onUnAvailable");
                    }
                });
            }
        });
        requireFeatureOnLifecycle(lifecycleOwner, Feature.LIVE_IM_MSG, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                invoke2(feature);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Feature requireFeatureOnLifecycle) {
                Intrinsics.checkNotNullParameter(requireFeatureOnLifecycle, "$this$requireFeatureOnLifecycle");
                FeatureKt.onAvailable(requireFeatureOnLifecycle, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$2.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onAvailable) {
                        Intrinsics.checkNotNullParameter(onAvailable, "$this$onAvailable");
                    }
                });
                FeatureKt.onUnAvailable(requireFeatureOnLifecycle, new Function1<Feature, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$2.2
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Feature feature) {
                        invoke2(feature);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Feature onUnAvailable) {
                        Intrinsics.checkNotNullParameter(onUnAvailable, "$this$onUnAvailable");
                    }
                });
            }
        });
        requireFeaturesCombined(new String[]{Feature.EARN_DIAMOND, Feature.APPOINT_SQUARE}, new Function1<List<? extends Feature>, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Feature> list) {
                invoke2((List<Feature>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<Feature> requireFeaturesCombined) {
                Intrinsics.checkNotNullParameter(requireFeaturesCombined, "$this$requireFeaturesCombined");
                FeatureKt.onResult(requireFeaturesCombined, new Function1<List<? extends Feature>, Unit>() { // from class: com.guochao.lib_core.feature.FeatureKt$testCode$3.1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(List<? extends Feature> list) {
                        invoke2((List<Feature>) list);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull List<Feature> onResult) {
                        Intrinsics.checkNotNullParameter(onResult, "$this$onResult");
                    }
                });
            }
        });
    }
}
