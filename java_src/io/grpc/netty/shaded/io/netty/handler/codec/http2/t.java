package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import androidx.webkit.ProxyConfig;
import com.meizu.cloud.pushsdk.platform.message.BasicPushStatus;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.http2.Header;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
final class t {

    /* renamed from: a  reason: collision with root package name */
    private static final List<q> f44439a;

    /* renamed from: b  reason: collision with root package name */
    private static final a<Integer> f44440b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f44441c;

    /* renamed from: d  reason: collision with root package name */
    static final int f44442d;

    static {
        List<q> asList = Arrays.asList(f(Header.TARGET_AUTHORITY_UTF8), g(Header.TARGET_METHOD_UTF8, "GET"), g(Header.TARGET_METHOD_UTF8, "POST"), g(Header.TARGET_PATH_UTF8, FileUtils.RES_PREFIX_STORAGE), g(Header.TARGET_PATH_UTF8, "/index.html"), g(Header.TARGET_SCHEME_UTF8, "http"), g(Header.TARGET_SCHEME_UTF8, ProxyConfig.MATCH_HTTPS), g(Header.RESPONSE_STATUS_UTF8, BasicPushStatus.SUCCESS_CODE), g(Header.RESPONSE_STATUS_UTF8, "204"), g(Header.RESPONSE_STATUS_UTF8, "206"), g(Header.RESPONSE_STATUS_UTF8, "304"), g(Header.RESPONSE_STATUS_UTF8, "400"), g(Header.RESPONSE_STATUS_UTF8, "404"), g(Header.RESPONSE_STATUS_UTF8, "500"), f("accept-charset"), g("accept-encoding", "gzip, deflate"), f("accept-language"), f("accept-ranges"), f("accept"), f("access-control-allow-origin"), f("age"), f("allow"), f("authorization"), f("cache-control"), f("content-disposition"), f("content-encoding"), f("content-language"), f("content-length"), f("content-location"), f("content-range"), f("content-type"), f("cookie"), f("date"), f("etag"), f("expect"), f("expires"), f("from"), f("host"), f("if-match"), f("if-modified-since"), f("if-none-match"), f("if-range"), f("if-unmodified-since"), f("last-modified"), f("link"), f("location"), f("max-forwards"), f("proxy-authenticate"), f("proxy-authorization"), f("range"), f("referer"), f("refresh"), f("retry-after"), f("server"), f("set-cookie"), f("strict-transport-security"), f("transfer-encoding"), f("user-agent"), f("vary"), f("via"), f("www-authenticate"));
        f44439a = asList;
        f44440b = a();
        f44441c = e();
        f44442d = asList.size();
    }

    private static a<Integer> a() {
        int size = f44439a.size();
        a<Integer> aVar = new a<>(true, pg.n.b(), size);
        while (size > 0) {
            aVar.M(b(size).f44422a, Integer.valueOf(size));
            size--;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q b(int i9) {
        return f44439a.get(i9 - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(CharSequence charSequence) {
        Integer num = f44440b.get(charSequence);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(CharSequence charSequence, CharSequence charSequence2) {
        q b10;
        int c10 = c(charSequence);
        if (c10 == -1) {
            return -1;
        }
        if (u.b(charSequence2, b(c10).f44423b)) {
            return c10;
        }
        do {
            c10++;
            if (c10 > f44441c) {
                return -1;
            }
            b10 = b(c10);
            if (!u.b(charSequence, b10.f44422a)) {
                return -1;
            }
        } while (!u.b(charSequence2, b10.f44423b));
        return c10;
    }

    private static int e() {
        int size = f44439a.size();
        q b10 = b(size);
        int i9 = size - 1;
        while (i9 > 0) {
            q b11 = b(i9);
            if (u.b(b11.f44422a, b10.f44422a)) {
                return i9 + 1;
            }
            i9--;
            b10 = b11;
        }
        return size;
    }

    private static q f(String str) {
        return new q(io.grpc.netty.shaded.io.netty.util.c.g(str), io.grpc.netty.shaded.io.netty.util.c.f45004f);
    }

    private static q g(String str, String str2) {
        return new q(io.grpc.netty.shaded.io.netty.util.c.g(str), io.grpc.netty.shaded.io.netty.util.c.g(str2));
    }
}
