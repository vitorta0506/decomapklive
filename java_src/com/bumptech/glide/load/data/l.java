package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f4243a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f4244b;

    /* renamed from: c  reason: collision with root package name */
    private T f4245c;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f4244b = contentResolver;
        this.f4243a = uri;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t10 = this.f4245c;
        if (t10 != null) {
            try {
                c(t10);
            } catch (IOException unused) {
            }
        }
    }

    protected abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource d() {
        return DataSource.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(@NonNull Priority priority, @NonNull d.a<? super T> aVar) {
        try {
            T f10 = f(this.f4243a, this.f4244b);
            this.f4245c = f10;
            aVar.f(f10);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e10);
            }
            aVar.c(e10);
        }
    }

    protected abstract T f(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;
}
