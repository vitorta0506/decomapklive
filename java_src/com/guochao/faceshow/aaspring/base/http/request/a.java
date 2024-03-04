package com.guochao.faceshow.aaspring.base.http.request;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
/* loaded from: classes3.dex */
public class a extends RequestBody {

    /* renamed from: a  reason: collision with root package name */
    MediaType f16276a;

    /* renamed from: b  reason: collision with root package name */
    String f16277b;

    /* renamed from: c  reason: collision with root package name */
    RequestBody f16278c;

    public a(MediaType mediaType, String str) {
        this.f16276a = mediaType;
        this.f16277b = str;
        this.f16278c = RequestBody.create(mediaType, str);
    }

    public String a() {
        return this.f16277b;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f16278c.contentLength();
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.f16278c.contentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        this.f16278c.writeTo(bufferedSink);
    }
}
