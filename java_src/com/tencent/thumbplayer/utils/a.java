package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.os.Process;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
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
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, a> f34444a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private C0355a f34445b;

    /* renamed from: com.tencent.thumbplayer.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0355a {

        /* renamed from: a  reason: collision with root package name */
        protected File f34446a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicLong f34447b;

        /* renamed from: c  reason: collision with root package name */
        private final AtomicInteger f34448c;

        /* renamed from: d  reason: collision with root package name */
        private final long f34449d;

        /* renamed from: e  reason: collision with root package name */
        private final int f34450e;

        /* renamed from: f  reason: collision with root package name */
        private final Map<File, Long> f34451f;

        private C0355a(File file, long j10, int i9) {
            this.f34451f = Collections.synchronizedMap(new HashMap());
            this.f34446a = file;
            this.f34449d = j10;
            this.f34450e = i9;
            this.f34447b = new AtomicLong();
            this.f34448c = new AtomicInteger();
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File b10 = b(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            b10.setLastModified(valueOf.longValue());
            this.f34451f.put(b10, valueOf);
            return b10;
        }

        private void a() {
            o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.utils.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = C0355a.this.f34446a.listFiles();
                    if (listFiles != null) {
                        int i9 = 0;
                        int i10 = 0;
                        for (File file : listFiles) {
                            i9 = (int) (i9 + C0355a.this.b(file));
                            i10++;
                            C0355a.this.f34451f.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0355a.this.f34447b.set(i9);
                        C0355a.this.f34448c.set(i10);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(File file) {
            int i9 = this.f34448c.get();
            while (i9 + 1 > this.f34450e) {
                this.f34447b.addAndGet(-c());
                i9 = this.f34448c.addAndGet(-1);
            }
            this.f34448c.addAndGet(1);
            long b10 = b(file);
            long j10 = this.f34447b.get();
            while (j10 + b10 > this.f34449d) {
                j10 = this.f34447b.addAndGet(-c());
            }
            this.f34447b.addAndGet(b10);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.f34451f.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b(File file) {
            if (file == null) {
                return 0L;
            }
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            File file = this.f34446a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str.hashCode());
            return new File(file, sb2.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f34451f.clear();
            this.f34447b.set(0L);
            this.f34448c.set(0);
            File[] listFiles = this.f34446a.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }

        private long c() {
            File file;
            if (this.f34451f.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.f34451f.entrySet();
            synchronized (this.f34451f) {
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
            long b10 = b(file);
            if (file.delete()) {
                this.f34451f.remove(file);
            }
            return b10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            File a10 = a(str);
            long b10 = b(a10);
            if (a10.delete()) {
                this.f34448c.addAndGet(-1);
                this.f34447b.addAndGet(-b10);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {
        private static int a(byte[] bArr, char c10) {
            for (int i9 = 0; i9 < bArr.length; i9++) {
                if (bArr[i9] == c10) {
                    return i9;
                }
            }
            return -1;
        }

        private static String a(int i9) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(System.currentTimeMillis());
            String sb3 = sb2.toString();
            while (sb3.length() < 13) {
                sb3 = "0".concat(sb3);
            }
            return sb3 + "-" + i9 + ' ';
        }

        private static byte[] a(byte[] bArr, int i9, int i10) {
            int i11 = i10 - i9;
            if (i11 >= 0) {
                byte[] bArr2 = new byte[i11];
                System.arraycopy(bArr, i9, bArr2, 0, Math.min(bArr.length - i9, i11));
                return bArr2;
            }
            throw new IllegalArgumentException(i9 + " > " + i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] b(int i9, byte[] bArr) {
            byte[] bytes = a(i9).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean c(byte[] bArr) {
            String[] f10 = f(bArr);
            if (f10 != null && f10.length == 2) {
                String str = f10[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                try {
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(f10[1]).longValue() * 1000)) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] d(byte[] bArr) {
            return e(bArr) ? a(bArr, a(bArr, ' ') + 1, bArr.length) : bArr;
        }

        private static boolean e(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        private static String[] f(byte[] bArr) {
            if (e(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }
    }

    private a(File file, long j10, int i9) {
        if (file.exists() || file.mkdirs()) {
            this.f34445b = new C0355a(file, j10, i9);
        } else {
            this.f34445b = null;
        }
    }

    public static a a(Context context, String str) {
        return a(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    public static a a(File file, long j10, int i9) {
        a aVar;
        try {
            Map<String, a> map = f34444a;
            aVar = map.get(file.getAbsoluteFile() + b());
        } catch (Exception unused) {
            aVar = null;
        }
        if (aVar == null) {
            try {
                a aVar2 = new a(file, j10, i9);
                try {
                    Map<String, a> map2 = f34444a;
                    map2.put(file.getAbsolutePath() + b(), aVar2);
                } catch (Throwable unused2) {
                }
                return aVar2;
            } catch (Throwable unused3) {
                return aVar;
            }
        }
        return aVar;
    }

    private static String b() {
        return "_" + Process.myPid();
    }

    public void a() {
        C0355a c0355a = this.f34445b;
        if (c0355a == null) {
            return;
        }
        c0355a.b();
    }

    public void a(String str, Serializable serializable) {
        a(str, serializable, -1);
    }

    public void a(String str, Serializable serializable, int i9) {
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(serializable);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (i9 != -1) {
                        a(str, byteArray, i9);
                    } else {
                        a(str, byteArray);
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

    public void a(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        C0355a c0355a = this.f34445b;
        if (c0355a == null) {
            return;
        }
        File b10 = c0355a.b(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(b10);
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
                this.f34445b.a(b10);
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
                    this.f34445b.a(b10);
                }
            }
            this.f34445b.a(b10);
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
            this.f34445b.a(b10);
            throw th;
        }
        this.f34445b.a(b10);
    }

    public void a(String str, byte[] bArr, int i9) {
        a(str, b.b(i9, bArr));
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:44:0x0062 */
    public byte[] a(String str) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        C0355a c0355a = this.f34445b;
        RandomAccessFile randomAccessFile3 = null;
        try {
            if (c0355a == null) {
                return null;
            }
            try {
                File a10 = c0355a.a(str);
                if (a10.exists()) {
                    randomAccessFile2 = new RandomAccessFile(a10, "r");
                    try {
                        byte[] bArr = new byte[(int) randomAccessFile2.length()];
                        if (randomAccessFile2.read(bArr) <= 0) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                            return null;
                        } else if (b.c(bArr)) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            c(str);
                            return null;
                        } else {
                            byte[] d10 = b.d(bArr);
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                            return d10;
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public Object b(String str) {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? a10 = a(str);
        try {
            if (a10 == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(a10);
            } catch (Exception e10) {
                e = e10;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                byteArrayInputStream = null;
                th = th2;
                a10 = 0;
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
                a10 = 0;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e17) {
                        e17.printStackTrace();
                    }
                }
                if (a10 != 0) {
                    try {
                        a10.close();
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

    public boolean c(String str) {
        C0355a c0355a = this.f34445b;
        if (c0355a == null) {
            return false;
        }
        return c0355a.c(str);
    }
}
