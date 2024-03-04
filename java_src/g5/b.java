package g5;

import com.google.api.client.util.GenericData;
import com.google.api.client.util.f0;
import java.io.IOException;
/* loaded from: classes2.dex */
public class b extends GenericData {

    /* renamed from: c  reason: collision with root package name */
    private c f39956c;

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    /* renamed from: f */
    public b clone() {
        return (b) super.clone();
    }

    @Override // com.google.api.client.util.GenericData
    /* renamed from: g */
    public b e(String str, Object obj) {
        return (b) super.e(str, obj);
    }

    public final void h(c cVar) {
        this.f39956c = cVar;
    }

    public String i() throws IOException {
        c cVar = this.f39956c;
        if (cVar != null) {
            return cVar.i(this);
        }
        return super.toString();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public String toString() {
        c cVar = this.f39956c;
        if (cVar != null) {
            try {
                return cVar.j(this);
            } catch (IOException e10) {
                throw f0.a(e10);
            }
        }
        return super.toString();
    }
}
