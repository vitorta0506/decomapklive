package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
/* loaded from: classes4.dex */
public class PhotoCameraPermissionUtils {
    public static final int PHOTO_MARK = 51;
    public static final int REQ_CAMERA = 5;
    public static final int REQ_READ_EXTERNAL_STORAGE = 101;
    public static final int SELECT_PHOTO = 52;
    public static Uri mCameraUri;
    private Activity mAct;
    public String mCameraPath;

    public PhotoCameraPermissionUtils(Activity activity) {
        this.mAct = activity;
    }

    private boolean afterM() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static void cameraMethod(Fragment fragment, int i9, String str) {
        try {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            Uri createImageUri = createImageUri(fragment.getContext());
            mCameraUri = createImageUri;
            if (createImageUri != null) {
                for (ResolveInfo resolveInfo : fragment.getActivity().getPackageManager().queryIntentActivities(intent, 65536)) {
                    fragment.getActivity().grantUriPermission(resolveInfo.activityInfo.packageName, createImageUri, 3);
                }
                intent.putExtra("output", createImageUri);
                intent.addFlags(3);
                intent.putExtra("android.intent.extra.videoQuality", 1);
                fragment.startActivityForResult(intent, i9);
            }
            LogUtils.i("photo::mCameraUri" + mCameraUri);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static Uri createImageUri(Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", System.currentTimeMillis() + "");
        if (Build.VERSION.SDK_INT >= 29) {
            contentValues.put("relative_path", "Pictures/preventpro");
        }
        contentValues.put("mime_type", "image/JPEG");
        return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    public static Uri getmCameraUri() {
        return mCameraUri;
    }

    public boolean checkCameraPer() {
        if (afterM()) {
            try {
                if (ContextCompat.checkSelfPermission(this.mAct, "android.permission.CAMERA") != 0) {
                    this.mAct.requestPermissions(new String[]{"android.permission.CAMERA"}, 5);
                    return false;
                }
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
        return true;
    }

    public boolean checkReadExtraPer() {
        if (afterM()) {
            try {
                if (ContextCompat.checkSelfPermission(this.mAct, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
                    this.mAct.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 101);
                    return false;
                }
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                return true;
            }
        }
        return true;
    }

    public void doNext(int i9, int[] iArr) {
        if (i9 == 5) {
            if (iArr[0] == 0) {
                cameraMethod(this.mAct, 51, this.mCameraPath);
            } else {
                ToastUtils.showToast(this.mAct, "获取拍照权限失败，请在手机中设置允许拍照");
            }
        } else if (i9 != 101) {
        } else {
            if (iArr[0] == 0) {
                selectPhoto();
            } else {
                ToastUtils.showToast(this.mAct, "获取读写权限失败，请在手机中设置允许读写");
            }
        }
    }

    public void selectPhoto() {
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image*/*");
        intent.setType("image/*");
        if (intent.resolveActivity(this.mAct.getPackageManager()) != null) {
            this.mAct.startActivityForResult(intent, 52);
        }
    }

    public static void cameraMethod(Activity activity, int i9, String str) {
        try {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            Uri createImageUri = createImageUri(activity);
            mCameraUri = createImageUri;
            if (createImageUri != null) {
                for (ResolveInfo resolveInfo : activity.getPackageManager().queryIntentActivities(intent, 65536)) {
                    activity.grantUriPermission(resolveInfo.activityInfo.packageName, createImageUri, 3);
                }
                intent.putExtra("output", createImageUri);
                intent.addFlags(3);
                intent.putExtra("android.intent.extra.videoQuality", 1);
                activity.startActivityForResult(intent, i9);
            }
            LogUtils.i("photo::mCameraUri" + mCameraUri);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
