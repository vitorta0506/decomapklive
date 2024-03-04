package com.tencent.thumbplayer.core.thirdparties;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Process;
import com.tencent.thumbplayer.core.utils.TPThreadPool;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class LocalCache {
    private static final int MAX_COUNT = Integer.MAX_VALUE;
    private static final int MAX_SIZE = 50000000;
    public static final int TIME_DAY = 86400;
    public static final int TIME_HOUR = 3600;
    private static Map<String, LocalCache> mInstanceMap = new HashMap();
    private ACacheManager mCache;

    /* loaded from: classes4.dex */
    public class ACacheManager {
        private final AtomicInteger cacheCount;
        protected File cacheDir;
        private final AtomicLong cacheSize;
        private final int countLimit;
        private final Map<File, Long> lastUsageDates;
        private final long sizeLimit;

        private ACacheManager(File file, long j10, int i9) {
            this.lastUsageDates = Collections.synchronizedMap(new HashMap());
            this.cacheDir = file;
            this.sizeLimit = j10;
            this.countLimit = i9;
            this.cacheSize = new AtomicLong();
            this.cacheCount = new AtomicInteger();
            calculateCacheSizeAndCacheCount();
        }

        private void calculateCacheSizeAndCacheCount() {
            TPThreadPool.getInstance().obtainThreadExecutor().execute(new Runnable() { // from class: com.tencent.thumbplayer.core.thirdparties.LocalCache.ACacheManager.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = ACacheManager.this.cacheDir.listFiles();
                    if (listFiles != null) {
                        int i9 = 0;
                        int i10 = 0;
                        for (File file : listFiles) {
                            i9 = (int) (i9 + ACacheManager.this.calculateSize(file));
                            i10++;
                            ACacheManager.this.lastUsageDates.put(file, Long.valueOf(file.lastModified()));
                        }
                        ACacheManager.this.cacheSize.set(i9);
                        ACacheManager.this.cacheCount.set(i10);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long calculateSize(File file) {
            if (file == null) {
                return 0L;
            }
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clear() {
            this.lastUsageDates.clear();
            this.cacheSize.set(0L);
            File[] listFiles = this.cacheDir.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File get(String str) {
            File newFile = newFile(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            newFile.setLastModified(valueOf.longValue());
            this.lastUsageDates.put(newFile, valueOf);
            return newFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File newFile(String str) {
            File file = this.cacheDir;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.hashCode());
            return new File(file, sb2.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void put(File file) {
            int i9 = this.cacheCount.get();
            while (i9 + 1 > this.countLimit) {
                this.cacheSize.addAndGet(-removeNext());
                i9 = this.cacheCount.addAndGet(-1);
            }
            this.cacheCount.addAndGet(1);
            long calculateSize = calculateSize(file);
            long j10 = this.cacheSize.get();
            while (j10 + calculateSize > this.sizeLimit) {
                j10 = this.cacheSize.addAndGet(-removeNext());
            }
            this.cacheSize.addAndGet(calculateSize);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.lastUsageDates.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean remove(String str) {
            return get(str).delete();
        }

        private long removeNext() {
            File file;
            if (this.lastUsageDates.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.lastUsageDates.entrySet();
            synchronized (this.lastUsageDates) {
                file = null;
                Long l10 = null;
                for (Map.Entry<File, Long> entry : entrySet) {
                    if (file == null) {
                        file = entry.getKey();
                        l10 = entry.getValue();
                    } else {
                        Long value = entry.getValue();
                        if (value.longValue() < l10.longValue()) {
                            file = entry.getKey();
                            l10 = value;
                        }
                    }
                }
            }
            if (file == null) {
                return 0L;
            }
            long calculateSize = calculateSize(file);
            if (file.delete()) {
                this.lastUsageDates.remove(file);
            }
            return calculateSize;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class Utils {
        private static final char mSeparator = ' ';

        private Utils() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] Bitmap2Bytes(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap Bytes2Bimap(byte[] bArr) {
            int length = bArr.length;
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Drawable bitmap2Drawable(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String clearDateInfo(String str) {
            return (str == null || !hasDateInfo(str.getBytes())) ? str : str.substring(str.indexOf(32) + 1, str.length());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] clearDateInfo(byte[] bArr) {
            return hasDateInfo(bArr) ? copyOfRange(bArr, indexOf(bArr, mSeparator) + 1, bArr.length) : bArr;
        }

        private static byte[] copyOfRange(byte[] bArr, int i9, int i10) {
            int i11 = i10 - i9;
            if (i11 >= 0) {
                byte[] bArr2 = new byte[i11];
                System.arraycopy(bArr, i9, bArr2, 0, Math.min(bArr.length - i9, i11));
                return bArr2;
            }
            throw new IllegalArgumentException(i9 + " > " + i10);
        }

        private static String createDateInfo(int i9) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(System.currentTimeMillis());
            String sb3 = sb2.toString();
            while (sb3.length() < 13) {
                sb3 = "0".concat(sb3);
            }
            return sb3 + "-" + i9 + mSeparator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Bitmap drawable2Bitmap(Drawable drawable) {
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
            return createBitmap;
        }

        private static String[] getDateInfoFromDate(byte[] bArr) {
            if (hasDateInfo(bArr)) {
                return new String[]{new String(copyOfRange(bArr, 0, 13)), new String(copyOfRange(bArr, 14, indexOf(bArr, mSeparator)))};
            }
            return null;
        }

        private static boolean hasDateInfo(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && indexOf(bArr, mSeparator) > 14;
        }

        private static int indexOf(byte[] bArr, char c10) {
            for (int i9 = 0; i9 < bArr.length; i9++) {
                if (bArr[i9] == c10) {
                    return i9;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(String str) {
            return isDue(str.getBytes());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isDue(byte[] bArr) {
            String[] dateInfoFromDate = getDateInfoFromDate(bArr);
            if (dateInfoFromDate != null && dateInfoFromDate.length == 2) {
                String str = dateInfoFromDate[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                try {
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(dateInfoFromDate[1]).longValue() * 1000)) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] newByteArrayWithDateInfo(int i9, byte[] bArr) {
            byte[] bytes = createDateInfo(i9).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String newStringWithDateInfo(int i9, String str) {
            return createDateInfo(i9) + str;
        }
    }

    private LocalCache(File file, long j10, int i9) {
        if (file.exists() || file.mkdirs()) {
            this.mCache = new ACacheManager(file, j10, i9);
        } else {
            this.mCache = null;
        }
    }

    public static LocalCache get(Context context) {
        return get(context, "LocalCache");
    }

    public static LocalCache get(Context context, long j10, int i9) {
        return get(new File(context.getCacheDir(), "LocalCache"), j10, i9);
    }

    public static LocalCache get(Context context, String str) {
        return get(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    public static LocalCache get(File file) {
        return get(file, 50000000L, Integer.MAX_VALUE);
    }

    public static LocalCache get(File file, long j10, int i9) {
        LocalCache localCache;
        try {
            Map<String, LocalCache> map = mInstanceMap;
            localCache = map.get(file.getAbsoluteFile() + myPid());
        } catch (Exception unused) {
            localCache = null;
        }
        if (localCache == null) {
            try {
                LocalCache localCache2 = new LocalCache(file, j10, i9);
                try {
                    Map<String, LocalCache> map2 = mInstanceMap;
                    map2.put(file.getAbsolutePath() + myPid(), localCache2);
                } catch (Throwable unused2) {
                }
                return localCache2;
            } catch (Throwable unused3) {
                return localCache;
            }
        }
        return localCache;
    }

    private static String myPid() {
        return "_" + Process.myPid();
    }

    public void clear() {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return;
        }
        aCacheManager.clear();
    }

    public File file(String str) {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return null;
        }
        File newFile = aCacheManager.newFile(str);
        if (newFile.exists()) {
            return newFile;
        }
        return null;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:44:0x0062 */
    public byte[] getAsBinary(String str) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        ACacheManager aCacheManager = this.mCache;
        RandomAccessFile randomAccessFile3 = null;
        try {
            if (aCacheManager == null) {
                return null;
            }
            try {
                File file = aCacheManager.get(str);
                if (file.exists()) {
                    randomAccessFile2 = new RandomAccessFile(file, "r");
                    try {
                        byte[] bArr = new byte[(int) randomAccessFile2.length()];
                        if (randomAccessFile2.read(bArr) <= 0) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                            return null;
                        } else if (Utils.isDue(bArr)) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            remove(str);
                            return null;
                        } else {
                            byte[] clearDateInfo = Utils.clearDateInfo(bArr);
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                            return clearDateInfo;
                        }
                    } catch (Exception e13) {
                        e = e13;
                        e.printStackTrace();
                        if (randomAccessFile2 != null) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e14) {
                                e14.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
                return null;
            } catch (Exception e15) {
                e = e15;
                randomAccessFile2 = null;
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile3 != null) {
                    try {
                        randomAccessFile3.close();
                    } catch (IOException e16) {
                        e16.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile3 = randomAccessFile;
        }
    }

    public Bitmap getAsBitmap(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.Bytes2Bimap(getAsBinary(str));
    }

    public Drawable getAsDrawable(String str) {
        if (getAsBinary(str) == null) {
            return null;
        }
        return Utils.bitmap2Drawable(Utils.Bytes2Bimap(getAsBinary(str)));
    }

    public JSONArray getAsJSONArray(String str) {
        try {
            return new JSONArray(getAsString(str));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public JSONObject getAsJSONObject(String str) {
        try {
            return new JSONObject(getAsString(str));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public Object getAsObject(String str) {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? asBinary = getAsBinary(str);
        try {
            if (asBinary == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(asBinary);
            } catch (Exception e10) {
                e = e10;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                byteArrayInputStream = null;
                th = th2;
                asBinary = 0;
            }
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object readObject = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    return readObject;
                } catch (Exception e13) {
                    e = e13;
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Exception e16) {
                e = e16;
                objectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                asBinary = 0;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e17) {
                        e17.printStackTrace();
                    }
                }
                if (asBinary != 0) {
                    try {
                        asBinary.close();
                    } catch (IOException e18) {
                        e18.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public String getAsString(String str) {
        BufferedReader bufferedReader;
        ACacheManager aCacheManager = this.mCache;
        BufferedReader bufferedReader2 = null;
        if (aCacheManager == null) {
            return null;
        }
        File file = aCacheManager.get(str);
        ?? exists = file.exists();
        try {
            if (exists == 0) {
                return null;
            }
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                String str2 = "";
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        str2 = str2 + readLine;
                    } catch (IOException e10) {
                        e = e10;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
                if (Utils.isDue(str2)) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    remove(str);
                    return null;
                }
                String clearDateInfo = Utils.clearDateInfo(str2);
                try {
                    bufferedReader.close();
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                return clearDateInfo;
            } catch (IOException e14) {
                e = e14;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e15) {
                        e15.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = exists;
        }
    }

    public void put(String str, Bitmap bitmap) {
        put(str, Utils.Bitmap2Bytes(bitmap));
    }

    public void put(String str, Bitmap bitmap, int i9) {
        put(str, Utils.Bitmap2Bytes(bitmap), i9);
    }

    public void put(String str, Drawable drawable) {
        put(str, Utils.drawable2Bitmap(drawable));
    }

    public void put(String str, Drawable drawable, int i9) {
        put(str, Utils.drawable2Bitmap(drawable), i9);
    }

    public void put(String str, Serializable serializable) {
        put(str, serializable, -1);
    }

    public void put(String str, Serializable serializable, int i9) {
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(serializable);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (i9 != -1) {
                        put(str, byteArray, i9);
                    } else {
                        put(str, byteArray);
                    }
                    try {
                        objectOutputStream2.close();
                    } catch (Throwable unused) {
                    }
                } catch (Exception e10) {
                    e = e10;
                    objectOutputStream = objectOutputStream2;
                    e.printStackTrace();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    objectOutputStream = objectOutputStream2;
                    th.printStackTrace();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                }
            } catch (Throwable th3) {
                if (0 != 0) {
                    try {
                        objectOutputStream.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th3;
            }
        } catch (Exception e11) {
            e = e11;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public void put(String str, String str2) {
        BufferedWriter bufferedWriter;
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return;
        }
        File newFile = aCacheManager.newFile(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(newFile), 1024);
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedWriter.write(str2);
            try {
                bufferedWriter.flush();
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            try {
                bufferedWriter.close();
            } catch (IOException e12) {
                e = e12;
                e.printStackTrace();
                this.mCache.put(newFile);
            }
        } catch (IOException e13) {
            e = e13;
            bufferedWriter2 = bufferedWriter;
            e.printStackTrace();
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.flush();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
                try {
                    bufferedWriter2.close();
                } catch (IOException e15) {
                    e = e15;
                    e.printStackTrace();
                    this.mCache.put(newFile);
                }
            }
            this.mCache.put(newFile);
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.flush();
                } catch (IOException e16) {
                    e16.printStackTrace();
                }
                try {
                    bufferedWriter2.close();
                } catch (IOException e17) {
                    e17.printStackTrace();
                }
            }
            this.mCache.put(newFile);
            throw th;
        }
        this.mCache.put(newFile);
    }

    public void put(String str, String str2, int i9) {
        put(str, Utils.newStringWithDateInfo(i9, str2));
    }

    public void put(String str, JSONArray jSONArray) {
        put(str, jSONArray.toString());
    }

    public void put(String str, JSONArray jSONArray, int i9) {
        put(str, jSONArray.toString(), i9);
    }

    public void put(String str, JSONObject jSONObject) {
        put(str, jSONObject.toString());
    }

    public void put(String str, JSONObject jSONObject, int i9) {
        put(str, jSONObject.toString(), i9);
    }

    public void put(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return;
        }
        File newFile = aCacheManager.newFile(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(newFile);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e11) {
                e = e11;
                e.printStackTrace();
                this.mCache.put(newFile);
            }
        } catch (Exception e12) {
            e = e12;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e13) {
                    e = e13;
                    e.printStackTrace();
                    this.mCache.put(newFile);
                }
            }
            this.mCache.put(newFile);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
            this.mCache.put(newFile);
            throw th;
        }
        this.mCache.put(newFile);
    }

    public void put(String str, byte[] bArr, int i9) {
        put(str, Utils.newByteArrayWithDateInfo(i9, bArr));
    }

    public boolean remove(String str) {
        ACacheManager aCacheManager = this.mCache;
        if (aCacheManager == null) {
            return false;
        }
        return aCacheManager.remove(str);
    }
}
