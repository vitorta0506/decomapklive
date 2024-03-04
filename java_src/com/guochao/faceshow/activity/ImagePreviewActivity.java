package com.guochao.faceshow.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.TCConstants;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public class ImagePreviewActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private Uri f24523a;

    /* renamed from: b  reason: collision with root package name */
    private CheckBox f24524b;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            Intent intent = new Intent();
            intent.putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, ImagePreviewActivity.this.f24523a);
            intent.putExtra("isOri", ImagePreviewActivity.this.f24524b != null && ImagePreviewActivity.this.f24524b.isChecked());
            ImagePreviewActivity.this.setResult(-1, intent);
            ImagePreviewActivity.this.finish();
        }
    }

    private String e0(long j10) {
        StringBuilder sb2 = new StringBuilder();
        if (j10 < 1024) {
            sb2.append(j10);
            sb2.append("B");
        } else if (j10 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            sb2.append(j10 / 1024);
            sb2.append("K");
        } else {
            sb2.append((j10 / 1024) / 1024);
            sb2.append("M");
        }
        return sb2.toString();
    }

    private void g0() {
        int height;
        int i9;
        int i10;
        if (this.f24523a == null) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeStream(getContentResolver().openInputStream(this.f24523a), null, options);
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        }
        int i11 = options.outWidth;
        if (i11 == 0 && options.outHeight == 0) {
            finish();
            return;
        }
        int i12 = options.outHeight;
        long j10 = (i11 * i12) / 3;
        if (i11 > i12) {
            i9 = getWindowManager().getDefaultDisplay().getWidth();
            height = (i9 * i12) / i11;
        } else {
            height = getWindowManager().getDefaultDisplay().getHeight();
            i9 = (i11 * height) / i12;
        }
        if (i12 > height || i11 > i9) {
            int i13 = i12 / 2;
            int i14 = i11 / 2;
            i10 = 1;
            while (i13 / i10 > height && i14 / i10 > i9) {
                i10 *= 2;
            }
        } else {
            i10 = 1;
        }
        CheckBox checkBox = this.f24524b;
        if (checkBox != null) {
            checkBox.setText(getString(R.string.chat_image_preview_ori) + "(" + e0(j10) + ")");
        }
        try {
            options.inSampleSize = i10;
            options.inJustDecodeBounds = false;
            Matrix matrix = new Matrix();
            matrix.postScale(i9 / (i11 / i10), height / (i12 / i10));
            Bitmap decodeStream = BitmapFactory.decodeStream(getContentResolver().openInputStream(this.f24523a), null, options);
            InputStream openInputStream = getContentResolver().openInputStream(this.f24523a);
            int attributeInt = new ExifInterface(openInputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                matrix.postRotate(180.0f);
            } else if (attributeInt == 6) {
                matrix.postRotate(90.0f);
            }
            ImageView imageView = (ImageView) findViewById(R.id.image);
            if (decodeStream != null) {
                imageView.setImageBitmap(Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true));
            }
            openInputStream.close();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_image_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24523a = (Uri) getIntent().getParcelableExtra(TCConstants.VIDEO_RECORD_VIDEPATH);
        this.f24524b = (CheckBox) findViewById(R.id.isOri);
        g0();
        setEndText(getString(R.string.send), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
    }
}
