package com.twitter.sdk.android.core.models;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes4.dex */
public class SafeMapAdapter implements TypeAdapterFactory {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes4.dex */
    class a<T> extends TypeAdapter<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TypeAdapter f35221a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TypeToken f35222b;

        a(TypeAdapter typeAdapter, TypeToken typeToken) {
            this.f35221a = typeAdapter;
            this.f35222b = typeToken;
        }

        @Override // com.google.gson.TypeAdapter
        public T read(JsonReader jsonReader) throws IOException {
            T t10 = (T) this.f35221a.read(jsonReader);
            if (Map.class.isAssignableFrom(this.f35222b.getRawType())) {
                if (t10 == null) {
                    return (T) Collections.EMPTY_MAP;
                }
                return (T) Collections.unmodifiableMap((Map) t10);
            }
            return t10;
        }

        @Override // com.google.gson.TypeAdapter
        public void write(JsonWriter jsonWriter, T t10) throws IOException {
            this.f35221a.write(jsonWriter, t10);
        }
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        return new a(gson.getDelegateAdapter(this, typeToken), typeToken);
    }
}
