package yc;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
public final class b {
    public static List<String> a(@NonNull JSONArray jSONArray) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            arrayList.add(jSONArray.getString(i9));
        }
        return arrayList;
    }
}
