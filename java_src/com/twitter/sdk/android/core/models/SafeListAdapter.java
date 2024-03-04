package com.twitter.sdk.android.core.models;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class SafeListAdapter implements TypeAdapterFactory {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes4.dex */
    class a<T> extends TypeAdapter<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TypeAdapter f35218a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TypeToken f35219b;

        a(TypeAdapter typeAdapter, TypeToken typeToken) {
            this.f35218a = typeAdapter;
            this.f35219b = typeToken;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            T t10 = (T) this.f35218a.read(jsonReader);
            if (List.class.isAssignableFrom(this.f35219b.getRawType())) {
                if (t10 == null) {
                    return (T) Collections.EMPTY_LIST;
                }
                return (T) Collections.unmodifiableList((List) t10);
            }
            return t10;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            this.f35218a.write(jsonWriter, t10);
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        return new a(gson.getDelegateAdapter(this, typeToken), typeToken);
    }
}
