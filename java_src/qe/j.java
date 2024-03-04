package qe;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import okio.BufferedSource;
/* loaded from: classes4.dex */
public final class j extends ResponseBody {

    /* renamed from: a  reason: collision with root package name */
    private final Headers f57281a;

    /* renamed from: b  reason: collision with root package name */
    private final BufferedSource f57282b;

    public j(Headers headers, BufferedSource bufferedSource) {
        this.f57281a = headers;
        this.f57282b = bufferedSource;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public long contentLength() {
        return i.c(this.f57281a);
    }

    @Override // com.squareup.okhttp.ResponseBody
    public MediaType contentType() {
        String str = this.f57281a.get("Content-Type");
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public BufferedSource source() {
        return this.f57282b;
    }
}
