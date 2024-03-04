package xc;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b implements c<JSONObject> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final d f59683a = new d();

    @Override // xc.c
    @NonNull
    /* renamed from: b */
    public JSONObject a(@NonNull InputStream inputStream) throws IOException {
        try {
            return new JSONObject(this.f59683a.a(inputStream));
        } catch (JSONException e10) {
            throw new IOException(e10);
        }
    }
}
