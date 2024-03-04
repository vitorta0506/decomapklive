package com.tencent.thumbplayer.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import com.tencent.thumbplayer.a.b;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import java.io.FileDescriptor;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class c implements b.a, com.tencent.thumbplayer.adapter.a.a {

    /* renamed from: a  reason: collision with root package name */
    private Map<Integer, TPCaptureCallBack> f33470a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private String f33471b;

    /* renamed from: c  reason: collision with root package name */
    private FileDescriptor f33472c;

    /* renamed from: d  reason: collision with root package name */
    private AssetFileDescriptor f33473d;

    public c(AssetFileDescriptor assetFileDescriptor) {
        this.f33473d = assetFileDescriptor;
    }

    public c(FileDescriptor fileDescriptor) {
        this.f33472c = fileDescriptor;
    }

    public c(String str) {
        this.f33471b = str;
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a() {
        this.f33470a.clear();
    }

    @Override // com.tencent.thumbplayer.a.b.a
    public void a(int i9, int i10) {
        TPCaptureCallBack tPCaptureCallBack = this.f33470a.get(Integer.valueOf(i9));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoFailed(i10);
        }
    }

    @Override // com.tencent.thumbplayer.a.b.a
    public void a(int i9, long j10, int i10, int i11, Bitmap bitmap, long j11) {
        TPCaptureCallBack tPCaptureCallBack = this.f33470a.get(Integer.valueOf(i9));
        if (tPCaptureCallBack != null) {
            tPCaptureCallBack.onCaptureVideoSuccess(bitmap);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.a
    public void a(long j10, TPImageGeneratorParams tPImageGeneratorParams, TPCaptureCallBack tPCaptureCallBack) {
        b.d dVar = new b.d();
        dVar.f33464a = this.f33471b;
        dVar.f33465b = this.f33472c;
        dVar.f33466c = this.f33473d;
        dVar.f33467d = j10;
        dVar.f33468e = tPImageGeneratorParams.width;
        dVar.f33469f = tPImageGeneratorParams.height;
        this.f33470a.put(Integer.valueOf(b.a().a(dVar, this)), tPCaptureCallBack);
    }
}
