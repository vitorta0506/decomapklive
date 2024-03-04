package com.guochao.faceshow.guild.viewmodel;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.lifecycle.MutableLiveData;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.model.LoadingStateModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.guild.bean.UploadFileResultBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.TCConstants;
import f7.a;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u001b2\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0015j\b\u0012\u0004\u0012\u00020\u000f`\u0016J/\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u00052\b\u0010$\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010%J \u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\"H\u0002J\u000e\u0010,\u001a\u00020-2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010.\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0015j\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u0016J\u000e\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0005J\u001b\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020'H\u0082@ø\u0001\u0000¢\u0006\u0002\u00104R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R0\u0010\u0014\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000f0\u0015j\b\u0012\u0004\u0012\u00020\u000f`\u00160\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "MAX_PICATURE", "", "getMAX_PICATURE", "()I", "PICTURE", "getPICTURE", "applyResultLiveData", "Landroidx/lifecycle/MutableLiveData;", "getApplyResultLiveData", "()Landroidx/lifecycle/MutableLiveData;", "localImageOrVideoBean", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "getLocalImageOrVideoBean", "()Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "setLocalImageOrVideoBean", "(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V", "selectPictureList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getSelectPictureList", "setSelectPictureList", "(Landroidx/lifecycle/MutableLiveData;)V", "addAddPicButton", "", "addPicture", "picList", "commit", "context", "Landroid/content/Context;", "reason", "", "signId", "recordId", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V", "copyFileOrNot", "Ljava/io/File;", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", TCConstants.VIDEO_RECORD_VIDEPATH, "name", "isAddPicButton", "", "removeAddPicButton", "removePicture", "index", "uploadPicture", "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;", ShareInternalUtility.STAGING_PARAM, "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyTerminationViewModel extends BaseViewModel<BaseModel> {
    @Nullable
    private LocalImageOrVideoBean localImageOrVideoBean;
    private final int PICTURE = 1;
    private final int MAX_PICATURE = 4;
    @NotNull
    private MutableLiveData<ArrayList<LocalImageOrVideoBean>> selectPictureList = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<Integer> applyResultLiveData = new MutableLiveData<>();

    public ApplyTerminationViewModel() {
        this.selectPictureList.setValue(new ArrayList<>());
        this.localImageOrVideoBean = new LocalImageOrVideoBean(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File copyFileOrNot(Uri uri, String str, String str2) {
        if (Build.VERSION.SDK_INT >= 29) {
            File file = new File(FilePathProvider.getNXShowPath("guild") + IOUtils.DIR_SEPARATOR_UNIX + str2);
            if (file.exists()) {
                file.delete();
            }
            FileUtil.copyUriToFile(GCApplication.app(), uri, file);
            return file;
        }
        return new File(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object uploadPicture(File file, Continuation<? super UploadFileResultBean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        PostRequest postRequest = new PostRequest(a.f39640e0);
        postRequest.R("imgFile", file);
        postRequest.B("isCompress", 1);
        postRequest.B("isPick", 0);
        postRequest.B(Contants.CURRENT_COUNTRY_FLAG, 2);
        postRequest.M(new c<UploadFileResultBean>() { // from class: com.guochao.faceshow.guild.viewmodel.ApplyTerminationViewModel$uploadPicture$2$1$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UploadFileResultBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                CancellableContinuation<UploadFileResultBean> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(null));
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable UploadFileResultBean uploadFileResultBean, @NotNull FaceCastBaseResponse<UploadFileResultBean> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (uploadFileResultBean != null) {
                    CancellableContinuation<UploadFileResultBean> cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.Companion;
                    cancellableContinuation.resumeWith(Result.m1657constructorimpl(uploadFileResultBean));
                    return;
                }
                CancellableContinuation<UploadFileResultBean> cancellableContinuation2 = cancellableContinuationImpl;
                Result.Companion companion2 = Result.Companion;
                cancellableContinuation2.resumeWith(Result.m1657constructorimpl(new UploadFileResultBean("", "", "")));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public final void addAddPicButton() {
        boolean contains;
        MutableLiveData<ArrayList<LocalImageOrVideoBean>> mutableLiveData = this.selectPictureList;
        ArrayList<LocalImageOrVideoBean> value = mutableLiveData.getValue();
        if (value == null) {
            value = null;
        } else if (value.size() < this.MAX_PICATURE) {
            contains = CollectionsKt___CollectionsKt.contains(value, this.localImageOrVideoBean);
            if (!contains) {
                value.add(new LocalImageOrVideoBean(1));
            }
        }
        mutableLiveData.setValue(value);
    }

    public final void addPicture(@NotNull ArrayList<LocalImageOrVideoBean> picList) {
        Intrinsics.checkNotNullParameter(picList, "picList");
        this.selectPictureList.setValue(removeAddPicButton());
        ArrayList<LocalImageOrVideoBean> value = this.selectPictureList.getValue();
        if (value != null) {
            value.addAll(picList);
        }
        addAddPicButton();
    }

    public final void commit(@NotNull Context context, @NotNull String reason, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(reason, "reason");
        publishingLoadingState(new LoadingStateModel.StartLoadingModel(null, null, 3, null));
        ArrayList<LocalImageOrVideoBean> value = this.selectPictureList.getValue();
        if (value == null) {
            value = new ArrayList<>();
        }
        ArrayList<LocalImageOrVideoBean> arrayList = value;
        TypeIntrinsics.asMutableCollection(arrayList).remove(this.localImageOrVideoBean);
        launchIO(new ApplyTerminationViewModel$commit$1(arrayList, reason, num, num2, this, null));
    }

    @NotNull
    public final MutableLiveData<Integer> getApplyResultLiveData() {
        return this.applyResultLiveData;
    }

    @Nullable
    public final LocalImageOrVideoBean getLocalImageOrVideoBean() {
        return this.localImageOrVideoBean;
    }

    public final int getMAX_PICATURE() {
        return this.MAX_PICATURE;
    }

    public final int getPICTURE() {
        return this.PICTURE;
    }

    @NotNull
    public final MutableLiveData<ArrayList<LocalImageOrVideoBean>> getSelectPictureList() {
        return this.selectPictureList;
    }

    public final boolean isAddPicButton(@NotNull LocalImageOrVideoBean localImageOrVideoBean) {
        Intrinsics.checkNotNullParameter(localImageOrVideoBean, "localImageOrVideoBean");
        return localImageOrVideoBean.getUri() == null;
    }

    @Nullable
    public final ArrayList<LocalImageOrVideoBean> removeAddPicButton() {
        boolean contains;
        ArrayList<LocalImageOrVideoBean> value = this.selectPictureList.getValue();
        if (value != null) {
            contains = CollectionsKt___CollectionsKt.contains(value, this.localImageOrVideoBean);
            if (contains) {
                TypeIntrinsics.asMutableCollection(value).remove(this.localImageOrVideoBean);
                return value;
            }
            return value;
        }
        return null;
    }

    public final void removePicture(int i9) {
        MutableLiveData<ArrayList<LocalImageOrVideoBean>> mutableLiveData = this.selectPictureList;
        ArrayList<LocalImageOrVideoBean> value = mutableLiveData.getValue();
        if (value != null) {
            value.remove(i9);
        } else {
            value = null;
        }
        mutableLiveData.setValue(value);
        addAddPicButton();
    }

    public final void setLocalImageOrVideoBean(@Nullable LocalImageOrVideoBean localImageOrVideoBean) {
        this.localImageOrVideoBean = localImageOrVideoBean;
    }

    public final void setSelectPictureList(@NotNull MutableLiveData<ArrayList<LocalImageOrVideoBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.selectPictureList = mutableLiveData;
    }
}
