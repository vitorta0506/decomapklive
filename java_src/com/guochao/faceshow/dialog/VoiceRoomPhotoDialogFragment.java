package com.guochao.faceshow.dialog;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.base.http.callback.d;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.MediaLocalData;
import com.guochao.faceshow.aaspring.beans.UploadUgcImageResponse;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.utils.Photo_Take_Util;
import com.guochao.lib_service_center.liveroom.service.CoverImageDisplayer;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_LIVE_ROOM_SELECT_COVER)
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\"\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0014J\b\u0010\u0013\u001a\u00020\u0006H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/dialog/VoiceRoomPhotoDialogFragment;", "Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;", "()V", "displayer", "Lcom/guochao/lib_service_center/liveroom/service/CoverImageDisplayer;", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "onAttach", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "startCamera", "startPhotoActivity", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class VoiceRoomPhotoDialogFragment extends Photo_Dialog_Fragment {
    @Nullable
    private CoverImageDisplayer displayer;

    @Override // com.guochao.faceshow.dialog.Photo_Dialog_Fragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        this.tv_camera.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        Bundle extras;
        super.onActivityResult(i9, i10, intent);
        if (i9 == 51) {
            Photo_Take_Util.startPhotoZoom(getContext(), this.cameraPath, this.updatePath, PhotoCameraPermissionUtils.getmCameraUri(), requireActivity());
        } else if (i9 == 52) {
            if (intent != null) {
                Photo_Take_Util.startPhotoZoom(getContext(), AAImageUtil.getImageAbsolutePath(getContext(), intent.getData()), this.updatePath, intent.getData(), requireActivity());
            }
        } else if (i9 == 69) {
            if (intent == null) {
                return;
            }
            Uri b10 = com.yalantis.ucrop.a.b(intent);
            CoverImageDisplayer coverImageDisplayer = this.displayer;
            if (coverImageDisplayer != null) {
                File uriToFile = UriUtils.uriToFile(requireContext(), b10);
                coverImageDisplayer.notifyLocalImage(uriToFile != null ? uriToFile.getAbsolutePath() : null);
            }
            ba.a.p(requireContext(), b10, new d<String>() { // from class: com.guochao.faceshow.dialog.VoiceRoomPhotoDialogFragment$onActivityResult$1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NotNull g7.a<String> exp) {
                    CoverImageDisplayer coverImageDisplayer2;
                    Intrinsics.checkNotNullParameter(exp, "exp");
                    coverImageDisplayer2 = VoiceRoomPhotoDialogFragment.this.displayer;
                    if (coverImageDisplayer2 != null) {
                        coverImageDisplayer2.notifyNetworkImage("");
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.d
                public void onProgress(long j10, long j11, double d10) {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public /* bridge */ /* synthetic */ void onResponse(Object obj, FaceCastBaseResponse faceCastBaseResponse) {
                    onResponse((String) obj, (FaceCastBaseResponse<String>) faceCastBaseResponse);
                }

                public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                    CoverImageDisplayer coverImageDisplayer2;
                    Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                    String url = ((UploadUgcImageResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) UploadUgcImageResponse.class)).getResult().getUrl();
                    coverImageDisplayer2 = VoiceRoomPhotoDialogFragment.this.displayer;
                    if (coverImageDisplayer2 != null) {
                        coverImageDisplayer2.notifyNetworkImage(url);
                    }
                }
            });
            dismissAllowingStateLoss();
        } else if (i9 != 121) {
            if (i9 != 10023 || intent == null || (extras = intent.getExtras()) == null) {
                return;
            }
            Photo_Take_Util.startPhotoZoom(requireContext(), extras.getString(BaseConfig.INTENT_EXTRA_KEY_QR_SCAN), this.updatePath, (Uri) extras.getParcelable(ShareConstants.MEDIA_URI), this);
        } else {
            MediaLocalData mediaLocalData = new MediaLocalData();
            mediaLocalData.setThumb(this.updatePath);
            mediaLocalData.setUri(mediaLocalData.getDisplayThumbUri());
            CoverImageDisplayer coverImageDisplayer2 = this.displayer;
            if (coverImageDisplayer2 != null) {
                coverImageDisplayer2.notifyLocalImage(this.updatePath);
            }
            System.currentTimeMillis();
            if (mediaLocalData.copy(mediaLocalData, false) != null) {
                mediaLocalData.copy(mediaLocalData, false).subscribe(new SimpleObserver<MediaLocalData>() { // from class: com.guochao.faceshow.dialog.VoiceRoomPhotoDialogFragment$onActivityResult$2
                    @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                    public void onNext(@NotNull MediaLocalData o10) {
                        Intrinsics.checkNotNullParameter(o10, "o");
                        super.onNext((VoiceRoomPhotoDialogFragment$onActivityResult$2) o10);
                        String thumb = o10.getThumb();
                        final VoiceRoomPhotoDialogFragment voiceRoomPhotoDialogFragment = VoiceRoomPhotoDialogFragment.this;
                        ba.a.q(thumb, new d<String>() { // from class: com.guochao.faceshow.dialog.VoiceRoomPhotoDialogFragment$onActivityResult$2$onNext$1
                            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                            public void onFailure(@NotNull g7.a<String> exp) {
                                Intrinsics.checkNotNullParameter(exp, "exp");
                            }

                            @Override // com.guochao.faceshow.aaspring.base.http.callback.d
                            public void onProgress(long j10, long j11, double d10) {
                            }

                            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                            public /* bridge */ /* synthetic */ void onResponse(Object obj, FaceCastBaseResponse faceCastBaseResponse) {
                                onResponse((String) obj, (FaceCastBaseResponse<String>) faceCastBaseResponse);
                            }

                            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                                CoverImageDisplayer coverImageDisplayer3;
                                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                                String url = ((UploadUgcImageResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) UploadUgcImageResponse.class)).getResult().getUrl();
                                coverImageDisplayer3 = VoiceRoomPhotoDialogFragment.this.displayer;
                                if (coverImageDisplayer3 != null) {
                                    coverImageDisplayer3.notifyLocalImage(url);
                                }
                            }
                        });
                    }
                });
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.onAttach(activity);
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null || !(parentFragment instanceof CoverImageDisplayer)) {
            return;
        }
        this.displayer = (CoverImageDisplayer) parentFragment;
    }

    @Override // com.guochao.faceshow.dialog.Photo_Dialog_Fragment
    protected void startCamera() {
        PhotoCameraPermissionUtils.cameraMethod(this, 51, this.cameraPath);
    }

    @Override // com.guochao.faceshow.dialog.Photo_Dialog_Fragment
    protected void startPhotoActivity() {
        FragmentActivity requireActivity = requireActivity();
        Intent intent = new Intent(requireActivity, PhotoActivity.class);
        intent.putExtra("type", 1);
        intent.putExtra("isVip", this.isVip);
        intent.putExtra("nogif", this.mNoGif);
        if (intent.resolveActivity(requireActivity.getPackageManager()) != null) {
            startActivityForResult(intent, 10023);
        }
    }
}
