package fe;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import de.f;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Type f39692b = new C0423a().getType();

    /* renamed from: a  reason: collision with root package name */
    private final Gson f39693a;

    /* renamed from: fe.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0423a extends TypeToken<List<f<String>>> {
        C0423a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Gson gson) {
        this.f39693a = gson;
    }

    @NonNull
    private static <T extends Message> List<f<T>> c(@NonNull ProtoAdapter<T> protoAdapter, @NonNull List<f<String>> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (f<String> fVar : list) {
            String c10 = fVar.c();
            if (c10 != null) {
                try {
                    arrayList.add(new f(protoAdapter.decode(Base64.decode(c10, 0)), fVar.b()));
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    @NonNull
    private static <T extends Message> List<f<String>> d(@NonNull List<f<T>> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (f<T> fVar : list) {
            try {
                arrayList.add(new f(Base64.encodeToString(fVar.c().encode(), 0), fVar.b()));
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    @Nullable
    @WorkerThread
    public final <T extends Message> String a(List<f<T>> list) {
        try {
            return this.f39693a.toJson(d(list), f39692b);
        } catch (JsonParseException unused) {
            return null;
        }
    }

    @Nullable
    @WorkerThread
    public final <T extends Message> List<f<T>> b(@NonNull ProtoAdapter<T> protoAdapter, String str) {
        try {
            List list = (List) this.f39693a.fromJson(str, f39692b);
            if (list == null) {
                return null;
            }
            return c(protoAdapter, list);
        } catch (JsonParseException unused) {
            return null;
        }
    }
}
