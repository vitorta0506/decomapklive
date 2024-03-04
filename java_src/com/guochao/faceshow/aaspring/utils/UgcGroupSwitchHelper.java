package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcGroundFragment;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/UgcGroupSwitchHelper;", "", "()V", "observeFeatures", "", "fragment", "Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UgcGroupSwitchHelper {
    @NotNull
    public static final UgcGroupSwitchHelper INSTANCE = new UgcGroupSwitchHelper();

    private UgcGroupSwitchHelper() {
    }

    public final void observeFeatures(@NotNull final UgcGroundFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        FeatureKt.requireFeaturesCombinedOnLifecycle(fragment, new String[]{Feature.APPOINT_SQUARE, Feature.PLANET_MATCH}, new Function1<List<? extends Feature>, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.UgcGroupSwitchHelper$observeFeatures$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Feature> list) {
                invoke2((List<Feature>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<Feature> requireFeaturesCombinedOnLifecycle) {
                Intrinsics.checkNotNullParameter(requireFeaturesCombinedOnLifecycle, "$this$requireFeaturesCombinedOnLifecycle");
                boolean z10 = false;
                boolean z11 = false;
                for (Feature feature : requireFeaturesCombinedOnLifecycle) {
                    if (Intrinsics.areEqual(Feature.APPOINT_SQUARE, feature.getFeatureName())) {
                        z10 = feature.isAvailable();
                    }
                    if (Intrinsics.areEqual(Feature.PLANET_MATCH, feature.getFeatureName())) {
                        z11 = feature.isAvailable();
                    }
                }
                UgcGroundFragment.this.k2(z10, z11);
            }
        });
    }
}
