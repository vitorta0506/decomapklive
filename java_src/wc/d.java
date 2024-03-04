package wc;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public abstract class d<T> implements xc.c<T> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final xc.b f59440a;

    public d() {
        this(new xc.b());
    }

    @Override // xc.c
    @NonNull
    public T a(@NonNull InputStream inputStream) throws IOException {
        try {
            return b(this.f59440a.a(inputStream));
        } catch (JSONException e10) {
            throw new IOException(e10);
        }
    }

    @NonNull
    protected abstract T b(@NonNull JSONObject jSONObject) throws JSONException;

    @VisibleForTesting
    d(@NonNull xc.b bVar) {
        this.f59440a = bVar;
    }
}
