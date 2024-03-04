package com.guochao.faceshow.activitycenter.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.activitycenter.repository.ActivityCenterRepository;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u000fR\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/activitycenter/viewmodel/ActivityListViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "_visitorList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "repository", "Lcom/guochao/faceshow/activitycenter/repository/ActivityCenterRepository;", "visitorList", "Landroidx/lifecycle/LiveData;", "getVisitorList", "()Landroidx/lifecycle/LiveData;", "visitorPage", "", "loadVisitorList", "", "refresh", "", "size", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ActivityListViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<List<BannerBeanData>> _visitorList;
    @NotNull
    private final ActivityCenterRepository repository = new ActivityCenterRepository();
    @NotNull
    private final LiveData<List<BannerBeanData>> visitorList;
    private int visitorPage;

    public ActivityListViewModel() {
        MutableLiveData<List<BannerBeanData>> mutableLiveData = new MutableLiveData<>();
        this._visitorList = mutableLiveData;
        this.visitorPage = 1;
        this.visitorList = mutableLiveData;
    }

    public static /* synthetic */ void loadVisitorList$default(ActivityListViewModel activityListViewModel, boolean z10, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            i9 = 40;
        }
        activityListViewModel.loadVisitorList(z10, i9);
    }

    @NotNull
    public final LiveData<List<BannerBeanData>> getVisitorList() {
        return this.visitorList;
    }

    public final void loadVisitorList(boolean z10, int i9) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ActivityListViewModel$loadVisitorList$1(z10, this, i9, null), 2, null);
    }
}
