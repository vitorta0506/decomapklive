package l7;

import com.google.gson.internal.C$Gson$Types;
import com.guochao.faceshow.aaspring.base.http.callback.b;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import n7.d;
/* loaded from: classes3.dex */
public abstract class a<T extends FaceCastBaseResponse<R>, R> {

    /* renamed from: a  reason: collision with root package name */
    b<R> f54221a;

    public a(b<R> bVar) {
        this.f54221a = bVar;
    }

    public Type a() {
        Type type;
        b<R> bVar = this.f54221a;
        if (bVar != null) {
            Type rawType = bVar.getRawType();
            if (!List.class.isAssignableFrom(d.d(rawType, 0)) && !Map.class.isAssignableFrom(d.d(rawType, 0))) {
                type = d.d(this.f54221a.getType(), 0);
            } else {
                type = this.f54221a.getType();
            }
        } else {
            type = null;
        }
        if (type == null) {
            type = Object.class;
        }
        Type b10 = d.b(getClass());
        if (b10 instanceof ParameterizedType) {
            b10 = ((ParameterizedType) b10).getRawType();
        }
        return C$Gson$Types.newParameterizedTypeWithOwner(null, b10, type);
    }
}
