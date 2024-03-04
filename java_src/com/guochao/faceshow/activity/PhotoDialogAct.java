package com.guochao.faceshow.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.UriUtils;
import com.guochao.faceshow.dialog.Photo_Dialog_Fragment;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import com.guochao.faceshow.utils.Photo_Take_Util;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class PhotoDialogAct extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    private Photo_Dialog_Fragment f24747a;

    /* renamed from: b  reason: collision with root package name */
    private String f24748b;

    /* renamed from: c  reason: collision with root package name */
    private String f24749c;

    private String b0() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    protected void d0(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e0() {
        if (this.f24747a == null) {
            Photo_Dialog_Fragment photo_Dialog_Fragment = new Photo_Dialog_Fragment();
            this.f24747a = photo_Dialog_Fragment;
            photo_Dialog_Fragment.setCameraPath(this.f24749c);
            this.f24747a.setUpdatePath(this.f24748b);
        }
        this.f24747a.show(getSupportFragmentManager(), "Photo_Dialog_Fragment");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1) {
            if (i9 == 51) {
                Photo_Take_Util.startPhotoZoom(this, this.f24749c, this.f24748b, PhotoCameraPermissionUtils.getmCameraUri(), this);
            } else if (i9 != 52) {
                if (i9 == 69) {
                    d0(UriUtils.uriToFile(this, com.yalantis.ucrop.a.b(intent)).getAbsolutePath());
                } else if (i9 != 121) {
                    return;
                }
                d0(this.f24748b);
            } else {
                Photo_Take_Util.startPhotoZoom(this, AAImageUtil.getImageAbsolutePath(this, intent.getData()), this.f24748b, intent.getData(), this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f24748b = FilePathProvider.getPhotoPath() + "coverImg" + b0() + FileUtils.PIC_POSTFIX_JPEG;
        this.f24749c = FilePathProvider.getPhotoPath() + "cover" + b0() + FileUtils.PIC_POSTFIX_JPEG;
    }
}
