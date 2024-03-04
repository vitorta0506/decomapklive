package com.bumptech.glide.load.data;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes.dex */
public class h extends b<AssetFileDescriptor> {
    public h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<AssetFileDescriptor> a() {
        return AssetFileDescriptor.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.b
    /* renamed from: g */
    public void c(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.load.data.b
    /* renamed from: h */
    public AssetFileDescriptor f(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str);
    }
}
