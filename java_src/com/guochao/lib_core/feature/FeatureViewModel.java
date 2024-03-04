package com.guochao.lib_core.feature;

import android.text.TextUtils;
import androidx.lifecycle.ViewModelKt;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/guochao/lib_core/feature/FeatureViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/lib_core/feature/FeatureResult;", "()V", "loading", "", "loadCache", "", Contants.USER_ID, "", "loadData", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FeatureViewModel extends BaseViewModel<FeatureResult> {
    private boolean loading;

    public final void loadCache(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        String string = MMKVUtils.getString("feature_" + userId, "features", "");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        try {
            getModelLiveData().setValue(new Gson().fromJson(string, (Class<Object>) FeatureResult.class));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void loadData() {
        if (this.loading) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new FeatureViewModel$loadData$1(this, null), 2, null);
    }
}
