package com.guochao.faceshow.aaspring.beans;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LutUtils;
import io.reactivex.k;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import ma.c;
import org.light.utils.FileUtils;
import vh.o;
/* loaded from: classes3.dex */
public class MediaLocalData implements Parcelable {
    public static final int ADD_ALL = 106;
    public static final int ADD_IMAGE = 104;
    public static final int ADD_VIDEO = 105;
    public static final Parcelable.Creator<MediaLocalData> CREATOR = new Parcelable.Creator<MediaLocalData>() { // from class: com.guochao.faceshow.aaspring.beans.MediaLocalData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaLocalData createFromParcel(Parcel parcel) {
            return new MediaLocalData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaLocalData[] newArray(int i9) {
            return new MediaLocalData[i9];
        }
    };
    public static final int NORMAL_ALL = 103;
    public static final int NORMAL_IMAGE = 101;
    public static final int NORMAL_VIDEO = 102;
    private String fileSmallUrl;
    private String fileUrl;
    private int height;

    /* renamed from: id  reason: collision with root package name */
    private long f16313id;
    private transient boolean isLoading;
    private transient Uri mUri;
    @SelectHolderType
    private int mediaType;
    private String thumb;
    private int type;
    private String videoPath;
    private int width;

    /* loaded from: classes3.dex */
    public @interface SelectHolderType {
    }

    public MediaLocalData() {
        this.height = 100;
        this.width = 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean compressToFile(MediaLocalData mediaLocalData, String str, int i9, boolean z10) {
        Bitmap bitmap;
        boolean compress;
        if (mediaLocalData.getThumb().toLowerCase().endsWith(".gif")) {
            return justCopyFile(mediaLocalData, str);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BufferedOutputStream bufferedOutputStream = null;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                InputStream openInputStream = BaseApplication.getInstance().getContentResolver().openInputStream(mediaLocalData.getUri());
                BitmapFactory.decodeStream(openInputStream, null, options);
                c.a(openInputStream);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
            }
        } else {
            BitmapFactory.decodeFile(mediaLocalData.getThumb(), options);
        }
        options.inJustDecodeBounds = false;
        int i10 = options.outWidth / i9;
        if (i10 <= 1) {
            i10 = 1;
        }
        options.inSampleSize = i10;
        try {
            if (z10) {
                InputStream openInputStream2 = BaseApplication.getInstance().getContentResolver().openInputStream(mediaLocalData.getUri());
                Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream2, null, options);
                c.a(openInputStream2);
                bitmap = LutUtils.applyLutToBitmap(BaseApplication.getInstance(), decodeStream, 2);
            } else {
                InputStream openInputStream3 = BaseApplication.getInstance().getContentResolver().openInputStream(mediaLocalData.getUri());
                Bitmap decodeStream2 = BitmapFactory.decodeStream(openInputStream3, null, options);
                c.a(openInputStream3);
                bitmap = decodeStream2;
            }
            InputStream openInputStream4 = BaseApplication.getInstance().getContentResolver().openInputStream(mediaLocalData.getUri());
            int attributeInt = new ExifInterface(openInputStream4).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            Bitmap rotate = rotate(bitmap, attributeInt != 3 ? attributeInt != 6 ? attributeInt != 8 ? 0 : 270 : 90 : 180);
            try {
                File file = new File(str);
                file.deleteOnExit();
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    if (str.toLowerCase().endsWith(FileUtils.PIC_POSTFIX_PNG)) {
                        compress = rotate.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream2);
                    } else {
                        if (!str.toLowerCase().endsWith(FileUtils.PIC_POSTFIX_JPEG) && !str.toLowerCase().endsWith(".jpeg")) {
                            compress = false;
                        }
                        compress = rotate.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream2);
                    }
                    bufferedOutputStream2.close();
                    if (rotate != 0) {
                        setHeight(rotate.getHeight());
                        setWidth(rotate.getWidth());
                        setType(1);
                    }
                    try {
                        bufferedOutputStream2.close();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    if (rotate != 0) {
                        rotate.recycle();
                    }
                    openInputStream4.close();
                    return compress;
                } catch (Exception unused) {
                    bufferedOutputStream = bufferedOutputStream2;
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    if (rotate != null) {
                        rotate.recycle();
                    }
                    openInputStream4.close();
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedOutputStream = bufferedOutputStream2;
                    try {
                        bufferedOutputStream.close();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    if (rotate != null) {
                        rotate.recycle();
                    }
                    openInputStream4.close();
                    throw th;
                }
            } catch (Exception unused2) {
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e14) {
            e14.printStackTrace();
        }
    }

    @Nullable
    public static Uri getImageContentUri(Context context, File file) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        Cursor query = context.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=? ", new String[]{absolutePath}, null);
        if (query != null && query.moveToFirst()) {
            int i9 = query.getInt(query.getColumnIndex("_id"));
            Uri parse = Uri.parse("content://media/external/images/media");
            query.close();
            return Uri.withAppendedPath(parse, "" + i9);
        } else if (file.exists()) {
            ContentValues contentValues = new ContentValues();
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("relative_path", Environment.DIRECTORY_DCIM);
            } else {
                contentValues.put("_data", absolutePath);
            }
            return context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            return Uri.fromFile(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUgcPublishPath(MediaLocalData mediaLocalData) {
        File file;
        if (!new File(mediaLocalData.thumb).exists()) {
            return mediaLocalData.thumb;
        }
        String str = FilePathProvider.getPrivateRootPathV2() + "/ugc_files/image/to_publish/" + System.currentTimeMillis() + FileUtils.RES_PREFIX_STORAGE;
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return str + file.getName();
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0098 A[Catch: Exception -> 0x0094, TRY_LEAVE, TryCatch #6 {Exception -> 0x0094, blocks: (B:54:0x0090, B:58:0x0098), top: B:63:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean justCopyFile(com.guochao.faceshow.aaspring.beans.MediaLocalData r6, java.lang.String r7) {
        /*
            r5 = this;
            boolean r0 = com.guochao.faceshow.aaspring.utils.GifUtils.oldGifToNewGif(r6, r7)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            android.net.Uri r0 = r6.getUri()
            if (r0 == 0) goto L1d
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.net.Uri r6 = r6.mUri
            java.io.File r2 = new java.io.File
            r2.<init>(r7)
            com.guochao.faceshow.utils.FileUtil.copyUriToFile(r0, r6, r2)
            return r1
        L1d:
            java.io.File r0 = new java.io.File
            java.lang.String r6 = r6.thumb
            r0.<init>(r6)
            java.io.File r6 = new java.io.File
            r6.<init>(r7)
            boolean r7 = r0.exists()
            r2 = 0
            if (r7 == 0) goto La0
            boolean r7 = r0.isFile()
            if (r7 != 0) goto L38
            goto La0
        L38:
            r7 = 0
            r6.createNewFile()     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L76
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L76
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L76
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6f
            r0.<init>(r6, r1)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6f
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
        L4a:
            int r7 = r3.read(r6)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r4 = -1
            if (r7 == r4) goto L55
            r0.write(r6)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            goto L4a
        L55:
            r3.close()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r0.close()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L69
            r3.close()     // Catch: java.lang.Exception -> L62
            r0.close()     // Catch: java.lang.Exception -> L62
            goto L66
        L62:
            r6 = move-exception
            r6.printStackTrace()
        L66:
            return r1
        L67:
            r6 = move-exception
            goto L6d
        L69:
            r6 = move-exception
            goto L71
        L6b:
            r6 = move-exception
            r0 = r7
        L6d:
            r7 = r3
            goto L8e
        L6f:
            r6 = move-exception
            r0 = r7
        L71:
            r7 = r3
            goto L78
        L73:
            r6 = move-exception
            r0 = r7
            goto L8e
        L76:
            r6 = move-exception
            r0 = r7
        L78:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L8d
            if (r7 == 0) goto L83
            r7.close()     // Catch: java.lang.Exception -> L81
            goto L83
        L81:
            r6 = move-exception
            goto L89
        L83:
            if (r0 == 0) goto L8c
            r0.close()     // Catch: java.lang.Exception -> L81
            goto L8c
        L89:
            r6.printStackTrace()
        L8c:
            return r2
        L8d:
            r6 = move-exception
        L8e:
            if (r7 == 0) goto L96
            r7.close()     // Catch: java.lang.Exception -> L94
            goto L96
        L94:
            r7 = move-exception
            goto L9c
        L96:
            if (r0 == 0) goto L9f
            r0.close()     // Catch: java.lang.Exception -> L94
            goto L9f
        L9c:
            r7.printStackTrace()
        L9f:
            throw r6
        La0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.beans.MediaLocalData.justCopyFile(com.guochao.faceshow.aaspring.beans.MediaLocalData, java.lang.String):boolean");
    }

    private Bitmap rotate(Bitmap bitmap, int i9) {
        if (i9 != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate(i9);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            if (createBitmap != null) {
                setHeight(createBitmap.getHeight());
                setWidth(createBitmap.getWidth());
                setType(1);
            }
            bitmap.recycle();
            return createBitmap;
        }
        return bitmap;
    }

    public k<MediaLocalData> copy(MediaLocalData mediaLocalData, final boolean z10) {
        if (TextUtils.isEmpty(mediaLocalData.getThumb())) {
            return null;
        }
        return k.just(mediaLocalData).map(new o<MediaLocalData, MediaLocalData>() { // from class: com.guochao.faceshow.aaspring.beans.MediaLocalData.2
            @Override // vh.o
            public MediaLocalData apply(MediaLocalData mediaLocalData2) throws Exception {
                String ugcPublishPath = MediaLocalData.this.getUgcPublishPath(mediaLocalData2);
                if (MediaLocalData.this.compressToFile(mediaLocalData2, ugcPublishPath, 750, z10)) {
                    mediaLocalData2.setThumb(ugcPublishPath);
                    mediaLocalData2.setUri(MediaLocalData.getImageContentUri(BaseApplication.getInstance(), new File(ugcPublishPath)));
                }
                return mediaLocalData2;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Uri getDisplayThumbUri() {
        Uri uri = this.mUri;
        if (uri != null) {
            return uri;
        }
        if (this.thumb != null) {
            return getImageContentUri(BaseApplication.getInstance(), new File(this.thumb));
        }
        return null;
    }

    public String getFileSmallUrl() {
        return this.fileSmallUrl;
    }

    public String getFileUrl() {
        return this.fileUrl;
    }

    public int getHeight() {
        return this.height;
    }

    public long getId() {
        return this.f16313id;
    }

    public int getMediaType() {
        return this.mediaType;
    }

    public String getThumb() {
        return this.thumb;
    }

    public int getType() {
        return this.mediaType == 101 ? 1 : 0;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getVideoPath() {
        return this.videoPath;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    public void setFileSmallUrl(String str) {
        this.fileSmallUrl = str;
    }

    public void setFileUrl(String str) {
        this.fileUrl = str;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setId(long j10) {
        this.f16313id = j10;
    }

    public void setLoading(boolean z10) {
        this.isLoading = z10;
    }

    public void setMediaType(int i9) {
        this.mediaType = i9;
    }

    public void setThumb(String str) {
        this.thumb = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }

    public void setVideoPath(String str) {
        this.videoPath = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.f16313id);
        parcel.writeString(this.thumb);
        parcel.writeString(this.videoPath);
        parcel.writeInt(this.mediaType);
        parcel.writeString(this.fileUrl);
        parcel.writeInt(this.type);
        parcel.writeInt(this.height);
        parcel.writeInt(this.width);
        parcel.writeString(this.fileSmallUrl);
    }

    protected MediaLocalData(Parcel parcel) {
        this.height = 100;
        this.width = 100;
        this.f16313id = parcel.readLong();
        this.thumb = parcel.readString();
        this.videoPath = parcel.readString();
        this.mediaType = parcel.readInt();
        this.fileUrl = parcel.readString();
        this.type = parcel.readInt();
        this.height = parcel.readInt();
        this.width = parcel.readInt();
        this.fileSmallUrl = parcel.readString();
    }
}
