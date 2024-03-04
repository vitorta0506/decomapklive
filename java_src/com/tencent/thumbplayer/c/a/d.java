package com.tencent.thumbplayer.c.a;

import android.os.Looper;
import com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest;
import com.tencent.thumbplayer.api.resourceloader.TPAssetResourceLoadingContentInformationRequest;
/* loaded from: classes4.dex */
public class d implements ITPAssetResourceLoadingRequest {

    /* renamed from: a  reason: collision with root package name */
    private int f33808a;

    /* renamed from: b  reason: collision with root package name */
    private c f33809b;

    /* renamed from: c  reason: collision with root package name */
    private TPAssetResourceLoadingContentInformationRequest f33810c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33811d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f33812e = false;

    public d(long j10, long j11, int i9, boolean z10) {
        this.f33808a = i9;
        c cVar = new c(j10, j11, z10);
        this.f33809b = cVar;
        cVar.a(i9);
    }

    public int a(long j10) {
        return this.f33809b.a(j10);
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    /* renamed from: a */
    public c getLoadingDataRequest() {
        return this.f33809b;
    }

    public void a(Looper looper) {
        this.f33809b.a(looper);
    }

    public void a(TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest) {
        this.f33810c = tPAssetResourceLoadingContentInformationRequest;
    }

    public void a(String str) {
        this.f33809b.a(str);
    }

    public synchronized void b() {
        this.f33811d = true;
        this.f33809b.b();
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized void finishLoading() {
        this.f33812e = true;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public TPAssetResourceLoadingContentInformationRequest getContentInformation() {
        return this.f33810c;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized boolean isCancelled() {
        return this.f33811d;
    }

    @Override // com.tencent.thumbplayer.api.resourceloader.ITPAssetResourceLoadingRequest
    public synchronized boolean isFinished() {
        return this.f33812e;
    }
}
