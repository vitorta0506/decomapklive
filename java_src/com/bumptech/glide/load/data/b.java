package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f4219a;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f4220b;

    /* renamed from: c  reason: collision with root package name */
    private T f4221c;

    public b(AssetManager assetManager, String str) {
        this.f4220b = assetManager;
        this.f4219a = str;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t10 = this.f4221c;
        if (t10 == null) {
            return;
        }
        try {
            c(t10);
        } catch (IOException unused) {
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
    public void e(@NonNull Priority priority, @NonNull d.a<? super T> aVar) {
        try {
            T f10 = f(this.f4220b, this.f4219a);
            this.f4221c = f10;
            aVar.f(f10);
        } catch (IOException e10) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e10);
            }
            aVar.c(e10);
        }
    }

    protected abstract T f(AssetManager assetManager, String str) throws IOException;
}
