package vf;

import androidx.annotation.NonNull;
import okhttp3.OkHttpClient;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f59144b = new a();

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f59145a;

    private a() {
    }

    @NonNull
    public OkHttpClient a() {
        if (this.f59145a == null) {
            this.f59145a = new OkHttpClient();
        }
        return this.f59145a;
    }
}
