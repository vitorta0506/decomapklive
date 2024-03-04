package ie;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.networking.FirebaseExtensionClient;
import java.io.IOException;
import java.util.LinkedHashMap;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final FirebaseExtensionClient f41052a;

    /* renamed from: b  reason: collision with root package name */
    private final Gson f41053b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class a implements Callback<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f41054a;

        a(b bVar) {
            this.f41054a = bVar;
        }

        @Override // retrofit2.Callback
        public final void onFailure(@NonNull Call<String> call, @NonNull Throwable th2) {
            this.f41054a.a(j.e(th2), 408, j.a(j.this, call, th2));
        }

        @Override // retrofit2.Callback
        public final void onResponse(@NonNull Call<String> call, @NonNull Response<String> response) {
            if (response.isSuccessful()) {
                this.f41054a.onSuccess(response.body());
            } else {
                this.f41054a.a(false, response.code(), j.this.c(call, response));
            }
        }
    }

    public j(FirebaseExtensionClient firebaseExtensionClient, Gson gson) {
        this.f41052a = firebaseExtensionClient;
        this.f41053b = gson;
    }

    static /* synthetic */ String a(j jVar, Call call, Throwable th2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("throws", String.format("%s when hitting %s", th2.getMessage(), call.request().url()));
        linkedHashMap.put("isNetworkError", Boolean.valueOf(th2 instanceof IOException));
        return jVar.f41053b.toJson(linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(Call<String> call, Response<String> response) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("throws", String.format("HTTP %s error when hitting %s", Integer.valueOf(response.code()), call.request().url()));
        linkedHashMap.put("isNetworkError", Boolean.FALSE);
        String message = response.message();
        if (message == null) {
            message = "";
        }
        linkedHashMap.put("responseMsg", message);
        String body = response.body();
        if (body == null) {
            body = "";
        }
        linkedHashMap.put("responseBody", body);
        ResponseBody errorBody = response.errorBody();
        if (errorBody != null) {
            try {
                linkedHashMap.put("errorBody", errorBody.string());
            } catch (IOException e10) {
                linkedHashMap.put("errorBody", e10.getMessage());
            }
        } else {
            linkedHashMap.put("errorBody", "");
        }
        return this.f41053b.toJson(linkedHashMap);
    }

    static /* synthetic */ boolean e(Throwable th2) {
        return th2 instanceof IOException;
    }

    public final void d(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull b<String> bVar) {
        this.f41052a.getCustomToken(new com.snapchat.kit.sdk.core.models.a(str, str2, str3)).enqueue(new a(bVar));
    }
}
