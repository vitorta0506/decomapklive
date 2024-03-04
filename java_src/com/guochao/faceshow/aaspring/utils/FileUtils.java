package com.guochao.faceshow.aaspring.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.FileUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class FileUtils {
    public static byte[] bitmapToBytes(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Boolean checkEmail(String str) {
        return Boolean.valueOf(str.matches(BaseConfig.EMAIL_MATCHES));
    }

    public static boolean deleteFile(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static SpannableString findSearch(int i9, String str, String str2) {
        SpannableString spannableString = new SpannableString(str);
        Matcher matcher = Pattern.compile(str2).matcher(spannableString);
        while (matcher.find()) {
            spannableString.setSpan(new ForegroundColorSpan(i9), matcher.start(), matcher.end(), 33);
        }
        return spannableString;
    }

    public static SpannableString findSearchNodiff(int i9, String str, String str2) {
        SpannableString spannableString = new SpannableString(str);
        Matcher matcher = Pattern.compile("(?i)" + str2).matcher(spannableString);
        while (matcher.find()) {
            spannableString.setSpan(new ForegroundColorSpan(i9), matcher.start(), matcher.end(), 33);
        }
        return spannableString;
    }

    public static boolean isNetworkConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isAvailable();
    }

    public static String saveFile(Context context, String str, Bitmap bitmap) {
        String path;
        FileOutputStream fileOutputStream;
        String str2 = "";
        byte[] bitmapToBytes = bitmapToBytes(bitmap);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                String str3 = Environment.getExternalStorageDirectory() + "/gChao/" + new SimpleDateFormat("yyyyMMddHHmmss", Locale.CHINA).format(new Date()) + org.light.utils.FileUtils.RES_PREFIX_STORAGE;
                File file = new File(str3);
                if (!file.exists()) {
                    file.mkdirs();
                }
                path = new File(str3, str + "").getPath();
                fileOutputStream = new FileOutputStream(new File(str3, str + ""));
            } catch (IOException unused) {
            }
            try {
                fileOutputStream.write(bitmapToBytes);
                fileOutputStream.close();
                str2 = path;
            } catch (Exception unused2) {
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th3) {
            th = th3;
        }
        return str2;
    }

    public static boolean saveImageFileToGallery(String str, @Nullable String str2) {
        if (Build.VERSION.SDK_INT >= 29) {
            File file = new File(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", file.getName());
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            contentValues.put("mime_type", options.outMimeType);
            contentValues.put("relative_path", "DCIM/Camera");
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentResolver contentResolver = BaseApplication.getInstance().getContentResolver();
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert != null) {
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(contentResolver.openOutputStream(insert));
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
        } else {
            FileUtil.copyFile(str, str2);
            FileUtil.scanCameraFile(BaseApplication.getInstance(), str2);
        }
        return true;
    }

    public static int saveImageToGallery(Context context, Bitmap bitmap, String str) {
        FileOutputStream fileOutputStream;
        if (Build.VERSION.SDK_INT >= 29) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", System.currentTimeMillis() + org.light.utils.FileUtils.PIC_POSTFIX_PNG);
            contentValues.put("mime_type", "image/png");
            contentValues.put("relative_path", "DCIM/Camera");
            Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            ContentResolver contentResolver = BaseApplication.getInstance().getContentResolver();
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert != null) {
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(contentResolver.openOutputStream(insert));
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return -1;
                }
            }
            return 2;
        }
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        File file = new File(absolutePath, str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String format = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date(System.currentTimeMillis()));
        File file2 = new File(absolutePath, format + org.light.utils.FileUtils.PIC_POSTFIX_JPEG);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file2);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e11) {
                e = e11;
            } catch (IOException e12) {
                e = e12;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("_data", file2.getAbsolutePath());
            contentValues2.put("mime_type", "image/jpeg");
            context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues2);
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file2));
            context.sendBroadcast(intent);
            try {
                fileOutputStream.close();
            } catch (IOException e14) {
                e14.printStackTrace();
            }
            return 2;
        } catch (FileNotFoundException e15) {
            e = e15;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            return -1;
        } catch (IOException e16) {
            e = e16;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            return -1;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e17) {
                    e17.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static boolean saveVideoToGallery(String str, @Nullable String str2) {
        if (Build.VERSION.SDK_INT >= 29) {
            File file = new File(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", file.getName());
            contentValues.put("mime_type", "video/mp4");
            contentValues.put("relative_path", "DCIM/Camera");
            Uri uri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            ContentResolver contentResolver = BaseApplication.getInstance().getContentResolver();
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert == null) {
                return true;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(contentResolver.openOutputStream(insert));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read > 0) {
                            bufferedOutputStream.write(bArr, 0, read);
                        } else {
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            return true;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        bufferedOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                e10.printStackTrace();
                return false;
            }
        } else {
            FileUtil.copyFile(str, str2);
            FileUtil.scanCameraFile(BaseApplication.getInstance(), str2);
            return true;
        }
    }

    public static void writeToFile(String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static SpannableString findSearch(int i9, String str, String... strArr) {
        SpannableString spannableString = new SpannableString(str);
        for (String str2 : strArr) {
            Matcher matcher = Pattern.compile(str2).matcher(spannableString);
            while (matcher.find()) {
                spannableString.setSpan(new ForegroundColorSpan(i9), matcher.start(), matcher.end(), 33);
            }
        }
        return spannableString;
    }
}
