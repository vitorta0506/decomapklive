package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.xiaomi.push.x2;
import com.xiaomi.push.y2;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes5.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static long f37327a;

    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        byte[] f37328a;

        /* renamed from: b  reason: collision with root package name */
        int f37329b;

        public a(byte[] bArr, int i9) {
            this.f37328a = bArr;
            this.f37329b = i9;
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public Bitmap f37330a;

        /* renamed from: b  reason: collision with root package name */
        public long f37331b;

        public b(Bitmap bitmap, long j10) {
            this.f37330a = bitmap;
            this.f37331b = j10;
        }
    }

    private static int a(Context context, InputStream inputStream) {
        int i9;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            tf.c.l("decode dimension failed for bitmap.");
            return 1;
        }
        int round = Math.round((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 48.0f);
        int i10 = options.outWidth;
        if (i10 <= round || (i9 = options.outHeight) <= round) {
            return 1;
        }
        return Math.min(i10 / round, i9 / round);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public static Bitmap b(Context context, String str) {
        InputStream inputStream;
        InputStream inputStream2;
        Uri parse = Uri.parse(str);
        ?? r02 = 0;
        r02 = 0;
        try {
            try {
                inputStream = context.getContentResolver().openInputStream(parse);
            } catch (Throwable th2) {
                th = th2;
                r02 = context;
            }
        } catch (IOException e10) {
            e = e10;
            inputStream2 = null;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
        try {
            int a10 = a(context, inputStream);
            inputStream2 = context.getContentResolver().openInputStream(parse);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = a10;
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2, null, options);
                y2.b(inputStream2);
                y2.b(inputStream);
                return decodeStream;
            } catch (IOException e11) {
                e = e11;
                tf.c.o(e);
                y2.b(inputStream2);
                y2.b(inputStream);
                return null;
            }
        } catch (IOException e12) {
            e = e12;
            inputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            y2.b(r02);
            y2.b(inputStream);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d5, code lost:
        if (r1 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d7, code lost:
        r1.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f4, code lost:
        if (r1 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f7, code lost:
        return null;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x00f9: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:56:0x00f9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.xiaomi.push.service.q.a c(java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.q.c(java.lang.String, boolean):com.xiaomi.push.service.q$a");
    }

    public static b d(Context context, String str, boolean z10) {
        a c10;
        ByteArrayInputStream byteArrayInputStream = null;
        b bVar = new b(null, 0L);
        Bitmap g10 = g(context, str);
        try {
            if (g10 != null) {
                bVar.f37330a = g10;
                return bVar;
            }
            try {
                c10 = c(str, z10);
            } catch (Exception e10) {
                e = e10;
            }
            if (c10 == null) {
                y2.b(null);
                return bVar;
            }
            bVar.f37331b = c10.f37329b;
            byte[] bArr = c10.f37328a;
            if (bArr != null) {
                if (z10) {
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                    try {
                        int a10 = a(context, byteArrayInputStream2);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inSampleSize = a10;
                        bVar.f37330a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        byteArrayInputStream = byteArrayInputStream2;
                    } catch (Exception e11) {
                        e = e11;
                        byteArrayInputStream = byteArrayInputStream2;
                        tf.c.o(e);
                        y2.b(byteArrayInputStream);
                        return bVar;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayInputStream = byteArrayInputStream2;
                        y2.b(byteArrayInputStream);
                        throw th;
                    }
                } else {
                    bVar.f37330a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                }
            }
            f(context, c10.f37328a, str);
            y2.b(byteArrayInputStream);
            return bVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void e(Context context) {
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (file.exists()) {
            if (f37327a == 0) {
                f37327a = x2.a(file);
            }
            if (f37327a > 15728640) {
                try {
                    File[] listFiles = file.listFiles();
                    for (int i9 = 0; i9 < listFiles.length; i9++) {
                        if (!listFiles[i9].isDirectory() && Math.abs(System.currentTimeMillis() - listFiles[i9].lastModified()) > 1209600) {
                            listFiles[i9].delete();
                        }
                    }
                } catch (Exception e10) {
                    tf.c.o(e10);
                }
                f37327a = 0L;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f(android.content.Context r5, byte[] r6, java.lang.String r7) {
        /*
            if (r6 != 0) goto L8
            java.lang.String r5 = "cannot save small icon cause bitmap is null"
            tf.c.l(r5)
            return
        L8:
            e(r5)
            java.io.File r0 = new java.io.File
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r2 = r5.getCacheDir()
            java.lang.String r2 = r2.getPath()
            r1.append(r2)
            java.lang.String r2 = java.io.File.separator
            r1.append(r2)
            java.lang.String r2 = "mipush_icon"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            boolean r1 = r0.exists()
            if (r1 != 0) goto L37
            r0.mkdirs()
        L37:
            java.io.File r1 = new java.io.File
            java.lang.String r7 = com.xiaomi.push.g.b(r7)
            r1.<init>(r0, r7)
            r7 = 0
            boolean r0 = r1.exists()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
            if (r0 != 0) goto L4a
            r1.createNewFile()     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
        L4a:
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L66 java.lang.Exception -> L69
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> La9
            r3.<init>(r0)     // Catch: java.lang.Exception -> L64 java.lang.Throwable -> La9
            r3.write(r6)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            r3.flush()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61
            com.xiaomi.push.y2.b(r3)
            goto L71
        L5e:
            r5 = move-exception
            r7 = r3
            goto Laa
        L61:
            r6 = move-exception
            r7 = r3
            goto L6b
        L64:
            r6 = move-exception
            goto L6b
        L66:
            r5 = move-exception
            r0 = r7
            goto Laa
        L69:
            r6 = move-exception
            r0 = r7
        L6b:
            tf.c.o(r6)     // Catch: java.lang.Throwable -> La9
            com.xiaomi.push.y2.b(r7)
        L71:
            com.xiaomi.push.y2.b(r0)
            long r6 = com.xiaomi.push.service.q.f37327a
            r3 = 0
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 != 0) goto La8
            java.io.File r6 = new java.io.File
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.io.File r5 = r5.getCacheDir()
            java.lang.String r5 = r5.getPath()
            r7.append(r5)
            java.lang.String r5 = java.io.File.separator
            r7.append(r5)
            r7.append(r2)
            java.lang.String r5 = r7.toString()
            r6.<init>(r5)
            long r5 = com.xiaomi.push.x2.a(r6)
            long r0 = r1.length()
            long r5 = r5 + r0
            com.xiaomi.push.service.q.f37327a = r5
        La8:
            return
        La9:
            r5 = move-exception
        Laa:
            com.xiaomi.push.y2.b(r7)
            com.xiaomi.push.y2.b(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.q.f(android.content.Context, byte[], java.lang.String):void");
    }

    private static Bitmap g(Context context, String str) {
        Throwable th2;
        FileInputStream fileInputStream;
        Bitmap bitmap;
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon", com.xiaomi.push.g.b(str));
        FileInputStream fileInputStream2 = null;
        Bitmap bitmap2 = null;
        fileInputStream2 = null;
        if (file.exists()) {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Exception e10) {
                    e = e10;
                    bitmap = null;
                }
            } catch (Throwable th3) {
                FileInputStream fileInputStream3 = fileInputStream2;
                th2 = th3;
                fileInputStream = fileInputStream3;
            }
            try {
                bitmap2 = BitmapFactory.decodeStream(fileInputStream);
                file.setLastModified(System.currentTimeMillis());
                y2.b(fileInputStream);
                return bitmap2;
            } catch (Exception e11) {
                e = e11;
                Bitmap bitmap3 = bitmap2;
                fileInputStream2 = fileInputStream;
                bitmap = bitmap3;
                tf.c.o(e);
                y2.b(fileInputStream2);
                return bitmap;
            } catch (Throwable th4) {
                th2 = th4;
                y2.b(fileInputStream);
                throw th2;
            }
        }
        return null;
    }
}
