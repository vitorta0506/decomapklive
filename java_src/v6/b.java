package v6;

import com.google.common.base.CaseFormat;
import com.google.common.base.i;
import com.google.protobuf.FieldMask;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public final class b {
    public static String a(FieldMask fieldMask) {
        ArrayList arrayList = new ArrayList(fieldMask.getPathsCount());
        for (String str : fieldMask.m218getPathsList()) {
            if (!str.isEmpty()) {
                arrayList.add(CaseFormat.LOWER_UNDERSCORE.to(CaseFormat.LOWER_CAMEL, str));
            }
        }
        return i.h(",").d(arrayList);
    }
}
