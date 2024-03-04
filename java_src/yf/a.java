package yf;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import wf.b;
/* loaded from: classes5.dex */
public class a extends AsyncTask<Void, Void, C0699a> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f60197a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f60198b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f60199c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60200d;

    /* renamed from: e  reason: collision with root package name */
    private final int f60201e;

    /* renamed from: f  reason: collision with root package name */
    private final b f60202f;

    public a(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i9, int i10, b bVar) {
        this.f60197a = context;
        this.f60198b = uri;
        this.f60199c = uri2;
        this.f60200d = i9;
        this.f60201e = i10;
        this.f60202f = bVar;
    }

    private boolean a(Bitmap bitmap, BitmapFactory.Options options) {
        if ((bitmap != null ? bitmap.getByteCount() : 0) > 104857600) {
            options.inSampleSize *= 2;
            return true;
        }
        return false;
    }

    private void b(@NonNull Uri uri, @Nullable Uri uri2) throws NullPointerException, IOException {
        InputStream inputStream;
        Log.d("BitmapWorkerTask", "copyFile");
        Objects.requireNonNull(uri2, "Output Uri is null - cannot copy image");
        FileOutputStream fileOutputStream = null;
        try {
            inputStream = this.f60197a.getContentResolver().openInputStream(uri);
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(uri2.getPath()));
                try {
                    if (inputStream == null) {
                        throw new NullPointerException("InputStream for given input Uri is null");
                    }
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read > 0) {
                            fileOutputStream2.write(bArr, 0, read);
                        } else {
                            zf.a.c(fileOutputStream2);
                            zf.a.c(inputStream);
                            this.f60198b = this.f60199c;
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    zf.a.c(fileOutputStream);
                    zf.a.c(inputStream);
                    this.f60198b = this.f60199c;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
        }
    }

    private void d(@NonNull Uri uri, @Nullable Uri uri2) throws NullPointerException, IOException {
        Closeable closeable;
        Response response;
        Log.d("BitmapWorkerTask", "downloadFile");
        Objects.requireNonNull(uri2, "Output Uri is null - cannot download image");
        OkHttpClient a10 = vf.a.f59144b.a();
        BufferedSource bufferedSource = null;
        try {
            Response execute = a10.newCall(new Request.Builder().url(uri.toString()).build()).execute();
            try {
                BufferedSource source = execute.body().source();
                try {
                    OutputStream openOutputStream = this.f60197a.getContentResolver().openOutputStream(uri2);
                    if (openOutputStream != null) {
                        Sink sink = Okio.sink(openOutputStream);
                        source.readAll(sink);
                        zf.a.c(source);
                        zf.a.c(sink);
                        zf.a.c(execute.body());
                        a10.dispatcher().cancelAll();
                        this.f60198b = this.f60199c;
                        return;
                    }
                    throw new NullPointerException("OutputStream for given output Uri is null");
                } catch (Throwable th2) {
                    th = th2;
                    response = execute;
                    closeable = null;
                    bufferedSource = source;
                    zf.a.c(bufferedSource);
                    zf.a.c(closeable);
                    if (response != null) {
                        zf.a.c(response.body());
                    }
                    a10.dispatcher().cancelAll();
                    this.f60198b = this.f60199c;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                response = execute;
                closeable = null;
            }
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            response = null;
        }
    }

    private void f() throws NullPointerException, IOException {
        String scheme = this.f60198b.getScheme();
        Log.d("BitmapWorkerTask", "Uri scheme: " + scheme);
        if (!"http".equals(scheme) && !ProxyConfig.MATCH_HTTPS.equals(scheme)) {
            if ("content".equals(scheme)) {
                try {
                    b(this.f60198b, this.f60199c);
                    return;
                } catch (IOException | NullPointerException e10) {
                    Log.e("BitmapWorkerTask", "Copying failed", e10);
                    throw e10;
                }
            } else if (ShareInternalUtility.STAGING_PARAM.equals(scheme)) {
                return;
            } else {
                Log.e("BitmapWorkerTask", "Invalid Uri scheme " + scheme);
                throw new IllegalArgumentException("Invalid Uri scheme" + scheme);
            }
        }
        try {
            d(this.f60198b, this.f60199c);
        } catch (IOException | NullPointerException e11) {
            Log.e("BitmapWorkerTask", "Downloading failed", e11);
            throw e11;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @NonNull
    /* renamed from: c */
    public C0699a doInBackground(Void... voidArr) {
        InputStream openInputStream;
        if (this.f60198b == null) {
            return new C0699a(new NullPointerException("Input Uri cannot be null"));
        }
        try {
            f();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = zf.a.a(options, this.f60200d, this.f60201e);
            boolean z10 = false;
            options.inJustDecodeBounds = false;
            Bitmap bitmap = null;
            while (!z10) {
                try {
                    openInputStream = this.f60197a.getContentResolver().openInputStream(this.f60198b);
                    try {
                        bitmap = BitmapFactory.decodeStream(openInputStream, null, options);
                    } finally {
                        zf.a.c(openInputStream);
                    }
                } catch (IOException e10) {
                    Log.e("BitmapWorkerTask", "doInBackground: ImageDecoder.createSource: ", e10);
                    return new C0699a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f60198b + "]", e10));
                } catch (OutOfMemoryError e11) {
                    Log.e("BitmapWorkerTask", "doInBackground: BitmapFactory.decodeFileDescriptor: ", e11);
                    options.inSampleSize *= 2;
                }
                if (options.outWidth != -1 && options.outHeight != -1) {
                    zf.a.c(openInputStream);
                    if (!a(bitmap, options)) {
                        z10 = true;
                    }
                } else {
                    return new C0699a(new IllegalArgumentException("Bounds for bitmap could not be retrieved from the Uri: [" + this.f60198b + "]"));
                }
            }
            if (bitmap == null) {
                return new C0699a(new IllegalArgumentException("Bitmap could not be decoded from the Uri: [" + this.f60198b + "]"));
            }
            int g10 = zf.a.g(this.f60197a, this.f60198b);
            int e12 = zf.a.e(g10);
            int f10 = zf.a.f(g10);
            xf.b bVar = new xf.b(g10, e12, f10);
            Matrix matrix = new Matrix();
            if (e12 != 0) {
                matrix.preRotate(e12);
            }
            if (f10 != 1) {
                matrix.postScale(f10, 1.0f);
            }
            if (!matrix.isIdentity()) {
                return new C0699a(zf.a.h(bitmap, matrix), bVar);
            }
            return new C0699a(bitmap, bVar);
        } catch (IOException | NullPointerException e13) {
            return new C0699a(e13);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: e */
    public void onPostExecute(@NonNull C0699a c0699a) {
        Exception exc = c0699a.f60205c;
        if (exc == null) {
            b bVar = this.f60202f;
            Bitmap bitmap = c0699a.f60203a;
            xf.b bVar2 = c0699a.f60204b;
            String path = this.f60198b.getPath();
            Uri uri = this.f60199c;
            bVar.b(bitmap, bVar2, path, uri == null ? null : uri.getPath());
            return;
        }
        this.f60202f.a(exc);
    }

    /* renamed from: yf.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0699a {

        /* renamed from: a  reason: collision with root package name */
        Bitmap f60203a;

        /* renamed from: b  reason: collision with root package name */
        xf.b f60204b;

        /* renamed from: c  reason: collision with root package name */
        Exception f60205c;

        public C0699a(@NonNull Bitmap bitmap, @NonNull xf.b bVar) {
            this.f60203a = bitmap;
            this.f60204b = bVar;
        }

        public C0699a(@NonNull Exception exc) {
            this.f60205c = exc;
        }
    }
}
