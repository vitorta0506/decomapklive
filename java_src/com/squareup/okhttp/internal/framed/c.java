package com.squareup.okhttp.internal.framed;

import okhttp3.internal.http2.Header;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final ByteString f29757d = ByteString.encodeUtf8(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: e  reason: collision with root package name */
    public static final ByteString f29758e = ByteString.encodeUtf8(Header.TARGET_METHOD_UTF8);

    /* renamed from: f  reason: collision with root package name */
    public static final ByteString f29759f = ByteString.encodeUtf8(Header.TARGET_PATH_UTF8);

    /* renamed from: g  reason: collision with root package name */
    public static final ByteString f29760g = ByteString.encodeUtf8(Header.TARGET_SCHEME_UTF8);

    /* renamed from: h  reason: collision with root package name */
    public static final ByteString f29761h = ByteString.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: i  reason: collision with root package name */
    public static final ByteString f29762i = ByteString.encodeUtf8(":host");

    /* renamed from: j  reason: collision with root package name */
    public static final ByteString f29763j = ByteString.encodeUtf8(":version");

    /* renamed from: a  reason: collision with root package name */
    public final ByteString f29764a;

    /* renamed from: b  reason: collision with root package name */
    public final ByteString f29765b;

    /* renamed from: c  reason: collision with root package name */
    final int f29766c;

    public c(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f29764a.equals(cVar.f29764a) && this.f29765b.equals(cVar.f29765b);
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.f29764a.hashCode()) * 31) + this.f29765b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f29764a.utf8(), this.f29765b.utf8());
    }

    public c(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public c(ByteString byteString, ByteString byteString2) {
        this.f29764a = byteString;
        this.f29765b = byteString2;
        this.f29766c = byteString.size() + 32 + byteString2.size();
    }
}
