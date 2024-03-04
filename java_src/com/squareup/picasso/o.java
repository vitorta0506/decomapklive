package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import androidx.webkit.ProxyConfig;
import com.squareup.picasso.Downloader;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.u;
import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class o extends u {

    /* renamed from: a  reason: collision with root package name */
    private final Downloader f29981a;

    /* renamed from: b  reason: collision with root package name */
    private final w f29982b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public o(Downloader downloader, w wVar) {
        this.f29981a = downloader;
        this.f29982b = wVar;
    }

    @Override // com.squareup.picasso.u
    public boolean c(s sVar) {
        String scheme = sVar.f29997d.getScheme();
        return "http".equals(scheme) || ProxyConfig.MATCH_HTTPS.equals(scheme);
    }

    @Override // com.squareup.picasso.u
    int e() {
        return 2;
    }

    @Override // com.squareup.picasso.u
    public u.a f(s sVar, int i9) throws IOException {
        Downloader.a a10 = this.f29981a.a(sVar.f29997d, sVar.f29996c);
        if (a10 == null) {
            return null;
        }
        Picasso.LoadedFrom loadedFrom = a10.f29852c ? Picasso.LoadedFrom.DISK : Picasso.LoadedFrom.NETWORK;
        Bitmap a11 = a10.a();
        if (a11 != null) {
            return new u.a(a11, loadedFrom);
        }
        InputStream c10 = a10.c();
        if (c10 == null) {
            return null;
        }
        if (loadedFrom == Picasso.LoadedFrom.DISK && a10.b() == 0) {
            c0.e(c10);
            throw new a("Received response with 0 content-length header.");
        }
        if (loadedFrom == Picasso.LoadedFrom.NETWORK && a10.b() > 0) {
            this.f29982b.f(a10.b());
        }
        return new u.a(c10, loadedFrom);
    }

    @Override // com.squareup.picasso.u
    boolean h(boolean z10, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.squareup.picasso.u
    boolean i() {
        return true;
    }
}
