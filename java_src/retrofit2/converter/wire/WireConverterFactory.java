package retrofit2.converter.wire;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* loaded from: classes7.dex */
public final class WireConverterFactory extends Converter.Factory {
    private WireConverterFactory() {
    }

    public static WireConverterFactory create() {
        return new WireConverterFactory();
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (Message.class.isAssignableFrom(cls)) {
                return new WireRequestBodyConverter(ProtoAdapter.get(cls));
            }
            return null;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (Message.class.isAssignableFrom(cls)) {
                return new WireResponseBodyConverter(ProtoAdapter.get(cls));
            }
            return null;
        }
        return null;
    }
}
