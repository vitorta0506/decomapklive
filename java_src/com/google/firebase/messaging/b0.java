package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public class b0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f14037a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile Future<?> f14038b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private t4.g<Bitmap> f14039c;

    private b0(URL url) {
        this.f14037a = url;
    }

    private byte[] e() throws IOException {
        URLConnection openConnection = this.f14037a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                byte[] d10 = b.d(b.b(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    Log.v("FirebaseMessaging", "Downloaded " + d10.length + " bytes from " + this.f14037a);
                }
                if (d10.length <= 1048576) {
                    return d10;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    @Nullable
    public static b0 h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new b0(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(t4.h hVar) {
        try {
            hVar.c(c());
        } catch (Exception e10) {
            hVar.b(e10);
        }
    }

    public Bitmap c() throws IOException {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            Log.i("FirebaseMessaging", "Starting download of: " + this.f14037a);
        }
        byte[] e10 = e();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(e10, 0, e10.length);
        if (decodeByteArray != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Successfully downloaded image: " + this.f14037a);
            }
            return decodeByteArray;
        }
        throw new IOException("Failed to decode image: " + this.f14037a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14038b.cancel(true);
    }

    public t4.g<Bitmap> j() {
        return (t4.g) com.google.android.gms.common.internal.p.j(this.f14039c);
    }

    public void o(ExecutorService executorService) {
        final t4.h hVar = new t4.h();
        this.f14038b = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.a0
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.k(hVar);
            }
        });
        this.f14039c = hVar.a();
    }
}
