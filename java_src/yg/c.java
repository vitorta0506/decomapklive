package yg;

import okhttp3.internal.http2.Header;
import okio.ByteString;
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    public static final ByteString f60206d = ByteString.encodeUtf8(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: e  reason: collision with root package name */
    public static final ByteString f60207e = ByteString.encodeUtf8(Header.TARGET_METHOD_UTF8);

    /* renamed from: f  reason: collision with root package name */
    public static final ByteString f60208f = ByteString.encodeUtf8(Header.TARGET_PATH_UTF8);

    /* renamed from: g  reason: collision with root package name */
    public static final ByteString f60209g = ByteString.encodeUtf8(Header.TARGET_SCHEME_UTF8);

    /* renamed from: h  reason: collision with root package name */
    public static final ByteString f60210h = ByteString.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: i  reason: collision with root package name */
    public static final ByteString f60211i = ByteString.encodeUtf8(":host");

    /* renamed from: j  reason: collision with root package name */
    public static final ByteString f60212j = ByteString.encodeUtf8(":version");

    /* renamed from: a  reason: collision with root package name */
    public final ByteString f60213a;

    /* renamed from: b  reason: collision with root package name */
    public final ByteString f60214b;

    /* renamed from: c  reason: collision with root package name */
    final int f60215c;

    public c(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return this.f60213a.equals(cVar.f60213a) && this.f60214b.equals(cVar.f60214b);
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.f60213a.hashCode()) * 31) + this.f60214b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f60213a.utf8(), this.f60214b.utf8());
    }

    public c(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public c(ByteString byteString, ByteString byteString2) {
        this.f60213a = byteString;
        this.f60214b = byteString2;
        this.f60215c = byteString.size() + 32 + byteString2.size();
    }
}
