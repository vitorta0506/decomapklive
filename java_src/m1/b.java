package m1;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes.dex */
public abstract class b {
    static b a(long j10) {
        return new a(j10);
    }

    @NonNull
    public static b b(@NonNull Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        return a(Long.parseLong(jsonReader.nextString()));
                    }
                    return a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public abstract long c();
}
