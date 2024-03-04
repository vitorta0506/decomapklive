package com.guochao.faceshow.guild.viewmodel;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.lifecycle.MutableLiveData;
import com.facebook.FacebookSdk;
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
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.guild.bean.UploadFileResultBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.TCConstants;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import f7.a;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u001eJ\u001e\u0010-\u001a\u00020*2\u0016\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001dj\b\u0012\u0004\u0012\u00020\u0017`\u001fJ\u000e\u0010/\u001a\u00020*2\u0006\u0010,\u001a\u00020\u001eJ~\u00100\u001a\u00020*2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u0002042\u0006\u00107\u001a\u0002042\u0006\u00108\u001a\u0002042\u0006\u00109\u001a\u0002042\f\u0010:\u001a\b\u0012\u0004\u0012\u0002040;2\b\u0010<\u001a\u0004\u0018\u0001042\u0006\u0010=\u001a\u00020\u00052\u0006\u0010>\u001a\u0002042\u0006\u0010?\u001a\u00020\u00052\u0006\u0010@\u001a\u0002042\u0006\u0010A\u001a\u00020BJ \u0010C\u001a\u00020D2\u0006\u0010,\u001a\u00020\u001e2\u0006\u0010E\u001a\u0002042\u0006\u0010F\u001a\u000204H\u0002J\u000e\u0010G\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010H\u001a\u00020\u0012J\u001a\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001dj\n\u0012\u0004\u0012\u00020\u0017\u0018\u0001`\u001fJ\u000e\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020*2\u0006\u0010K\u001a\u00020\u0005J!\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020D2\u0006\u0010Q\u001a\u00020\u0005H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010RJ)\u0010S\u001a\u0002042\u0006\u00101\u001a\u0002022\u0006\u0010T\u001a\u0002042\u0006\u0010F\u001a\u000204H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010UR\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0014\u0010\u000e\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR0\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0014\"\u0004\b!\u0010\"R0\u0010#\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00170\u001dj\b\u0012\u0004\u0012\u00020\u0017`\u001f0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0014\"\u0004\b%\u0010\"R0\u0010&\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0014\"\u0004\b(\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006V"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "COUNTRY", "", "getCOUNTRY", "()I", "LANGUAGE", "getLANGUAGE", "OTHER_VIDEO", "getOTHER_VIDEO", "PICTURE", "getPICTURE", "VIDEO_RECORD_SCREEN", "getVIDEO_RECORD_SCREEN", "applyResultLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "getApplyResultLiveData", "()Landroidx/lifecycle/MutableLiveData;", "commiting", "localImageOrVideoBean", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "getLocalImageOrVideoBean", "()Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "setLocalImageOrVideoBean", "(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V", "otherVideoUrlList", "Ljava/util/ArrayList;", "Landroid/net/Uri;", "Lkotlin/collections/ArrayList;", "getOtherVideoUrlList", "setOtherVideoUrlList", "(Landroidx/lifecycle/MutableLiveData;)V", "selectPictureList", "getSelectPictureList", "setSelectPictureList", "videoRecordScreenLiveData", "getVideoRecordScreenLiveData", "setVideoRecordScreenLiveData", "addAddPicButton", "", "addOtherVideo", ShareConstants.MEDIA_URI, "addPicture", "picList", "addVideoRecordScreenLive", "commit", "context", "Landroid/content/Context;", "email", "", "country_num", "phone", "whatsApp", "faceBook", FacebookSdk.INSTAGRAM, "langIdList", "", "guildId", "signType", "officeCode", "fansNum", "outSide", "monthFlow", "", "copyFileOrNot", "Ljava/io/File;", TCConstants.VIDEO_RECORD_VIDEPATH, "name", "isAddPicButton", "isPicListEmpty", "removeAddPicButton", "removeOtherVideo", "index", "removePicture", "removeVideoRecordScreenLive", "uploadVideoOrPicture", "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;", ShareInternalUtility.STAGING_PARAM, Contants.CURRENT_COUNTRY_FLAG, "(Ljava/io/File;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "videoProcess", "filePath", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyContractViewModel extends BaseViewModel<BaseModel> {
    private boolean commiting;
    @Nullable
    private LocalImageOrVideoBean localImageOrVideoBean;
    private final int VIDEO_RECORD_SCREEN = 1;
    private final int OTHER_VIDEO = 2;
    private final int PICTURE = 3;
    private final int LANGUAGE = 4;
    private final int COUNTRY = 5;
    @NotNull
    private MutableLiveData<ArrayList<Uri>> videoRecordScreenLiveData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ArrayList<Uri>> otherVideoUrlList = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<ArrayList<LocalImageOrVideoBean>> selectPictureList = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<Boolean> applyResultLiveData = new MutableLiveData<>();

    public ApplyContractViewModel() {
        this.selectPictureList.setValue(new ArrayList<>());
        this.otherVideoUrlList.setValue(new ArrayList<>());
        this.videoRecordScreenLiveData.setValue(new ArrayList<>());
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
    public final Object uploadVideoOrPicture(File file, int i9, Continuation<? super UploadFileResultBean> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        PostRequest postRequest = new PostRequest(a.f39640e0);
        if (i9 == 1) {
            postRequest.R("videoFile", file);
            postRequest.B("isCompress", 0);
        } else {
            postRequest.R("imgFile", file);
            postRequest.B("isCompress", 1);
        }
        postRequest.B("isPick", 0);
        postRequest.B(Contants.CURRENT_COUNTRY_FLAG, i9);
        postRequest.M(new c<UploadFileResultBean>() { // from class: com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel$uploadVideoOrPicture$2$1$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onError(@Nullable g7.a<?> aVar) {
                super.onError(aVar);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UploadFileResultBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                CancellableContinuation<UploadFileResultBean> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m1657constructorimpl(new UploadFileResultBean("", "", "")));
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

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onSuccess(@Nullable FaceCastBaseResponse<UploadFileResultBean> faceCastBaseResponse) {
                super.onSuccess((FaceCastBaseResponse) faceCastBaseResponse);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, com.tencent.ugc.TXVideoEditer] */
    public final Object videoProcess(Context context, String str, String str2, Continuation<? super String> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        final String str3 = FilePathProvider.getEditVideoClipDir(context) + IOUtils.DIR_SEPARATOR_UNIX + str2 + FileUtils.PIC_POSTFIX_MP4;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? tXVideoEditer = new TXVideoEditer(context);
        objectRef.element = tXVideoEditer;
        tXVideoEditer.setVideoPath(str);
        ((TXVideoEditer) objectRef.element).setVideoBitrate(1200);
        ((TXVideoEditer) objectRef.element).setVideoGenerateListener(new TXVideoEditer.TXVideoGenerateListener() { // from class: com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel$videoProcess$2$1
            @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
            public void onGenerateComplete(@Nullable TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
                LogUtils.d("ApplyContractViewModel", "onGenerateComplete");
                cancellableContinuationImpl.resume(str3, null);
                objectRef.element.release();
            }

            @Override // com.tencent.ugc.TXVideoEditer.TXVideoGenerateListener
            public void onGenerateProgress(float f10) {
                LogUtils.d("ApplyContractViewModel", String.valueOf(f10));
            }
        });
        ((TXVideoEditer) objectRef.element).generateVideo(3, str3);
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
        } else if (value.size() < 5) {
            contains = CollectionsKt___CollectionsKt.contains(value, this.localImageOrVideoBean);
            if (!contains) {
                value.add(new LocalImageOrVideoBean(1));
            }
        }
        mutableLiveData.setValue(value);
    }

    public final void addOtherVideo(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        MutableLiveData<ArrayList<Uri>> mutableLiveData = this.otherVideoUrlList;
        ArrayList<Uri> value = mutableLiveData.getValue();
        if (value != null) {
            value.add(uri);
        } else {
            value = null;
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

    public final void addVideoRecordScreenLive(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        MutableLiveData<ArrayList<Uri>> mutableLiveData = this.videoRecordScreenLiveData;
        ArrayList<Uri> value = mutableLiveData.getValue();
        if (value != null) {
            value.add(uri);
        } else {
            value = null;
        }
        mutableLiveData.setValue(value);
    }

    public final void commit(@NotNull Context context, @NotNull String email, @NotNull String country_num, @NotNull String phone, @NotNull String whatsApp, @NotNull String faceBook, @NotNull String instagram, @NotNull List<String> langIdList, @Nullable String str, int i9, @NotNull String officeCode, int i10, @NotNull String outSide, double d10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(country_num, "country_num");
        Intrinsics.checkNotNullParameter(phone, "phone");
        Intrinsics.checkNotNullParameter(whatsApp, "whatsApp");
        Intrinsics.checkNotNullParameter(faceBook, "faceBook");
        Intrinsics.checkNotNullParameter(instagram, "instagram");
        Intrinsics.checkNotNullParameter(langIdList, "langIdList");
        Intrinsics.checkNotNullParameter(officeCode, "officeCode");
        Intrinsics.checkNotNullParameter(outSide, "outSide");
        publishingLoadingState(new LoadingStateModel.StartLoadingModel(null, null, 3, null));
        this.commiting = true;
        launchMain(new ApplyContractViewModel$commit$1(this, email, country_num, phone, whatsApp, faceBook, instagram, i9, langIdList, officeCode, i10, outSide, d10, str, context, null));
    }

    @NotNull
    public final MutableLiveData<Boolean> getApplyResultLiveData() {
        return this.applyResultLiveData;
    }

    public final int getCOUNTRY() {
        return this.COUNTRY;
    }

    public final int getLANGUAGE() {
        return this.LANGUAGE;
    }

    @Nullable
    public final LocalImageOrVideoBean getLocalImageOrVideoBean() {
        return this.localImageOrVideoBean;
    }

    public final int getOTHER_VIDEO() {
        return this.OTHER_VIDEO;
    }

    @NotNull
    public final MutableLiveData<ArrayList<Uri>> getOtherVideoUrlList() {
        return this.otherVideoUrlList;
    }

    public final int getPICTURE() {
        return this.PICTURE;
    }

    @NotNull
    public final MutableLiveData<ArrayList<LocalImageOrVideoBean>> getSelectPictureList() {
        return this.selectPictureList;
    }

    public final int getVIDEO_RECORD_SCREEN() {
        return this.VIDEO_RECORD_SCREEN;
    }

    @NotNull
    public final MutableLiveData<ArrayList<Uri>> getVideoRecordScreenLiveData() {
        return this.videoRecordScreenLiveData;
    }

    public final boolean isAddPicButton(@NotNull LocalImageOrVideoBean localImageOrVideoBean) {
        Intrinsics.checkNotNullParameter(localImageOrVideoBean, "localImageOrVideoBean");
        return localImageOrVideoBean.getUri() == null;
    }

    public final boolean isPicListEmpty() {
        Object obj;
        boolean z10;
        ArrayList<LocalImageOrVideoBean> value = this.selectPictureList.getValue();
        if (value == null || value.isEmpty()) {
            return true;
        }
        if (value.size() == 1) {
            Iterator<T> it = value.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((LocalImageOrVideoBean) obj).getUri() == null) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    break;
                }
            }
            return obj != null;
        }
        return false;
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

    public final void removeOtherVideo(int i9) {
        MutableLiveData<ArrayList<Uri>> mutableLiveData = this.otherVideoUrlList;
        ArrayList<Uri> value = mutableLiveData.getValue();
        if (value != null) {
            value.remove(i9);
        } else {
            value = null;
        }
        mutableLiveData.setValue(value);
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

    public final void removeVideoRecordScreenLive(int i9) {
        MutableLiveData<ArrayList<Uri>> mutableLiveData = this.videoRecordScreenLiveData;
        ArrayList<Uri> value = mutableLiveData.getValue();
        if (value != null) {
            value.remove(i9);
        } else {
            value = null;
        }
        mutableLiveData.setValue(value);
    }

    public final void setLocalImageOrVideoBean(@Nullable LocalImageOrVideoBean localImageOrVideoBean) {
        this.localImageOrVideoBean = localImageOrVideoBean;
    }

    public final void setOtherVideoUrlList(@NotNull MutableLiveData<ArrayList<Uri>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.otherVideoUrlList = mutableLiveData;
    }

    public final void setSelectPictureList(@NotNull MutableLiveData<ArrayList<LocalImageOrVideoBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.selectPictureList = mutableLiveData;
    }

    public final void setVideoRecordScreenLiveData(@NotNull MutableLiveData<ArrayList<Uri>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.videoRecordScreenLiveData = mutableLiveData;
    }
}
