package com.huawei.hms.core.aidl;

import android.os.Bundle;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class a extends MessageCodec {
    @Override // com.huawei.hms.core.aidl.MessageCodec
    protected List<Object> readList(Type type, Bundle bundle) throws InstantiationException, IllegalAccessException {
        int i9 = bundle.getInt("_list_size_");
        ArrayList arrayList = new ArrayList(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            Object obj = bundle.get("_list_item_" + i10);
            if (!obj.getClass().isPrimitive() && !(obj instanceof String) && !(obj instanceof Serializable)) {
                if (obj instanceof Bundle) {
                    Bundle bundle2 = (Bundle) obj;
                    int i11 = bundle2.getInt("_val_type_", -1);
                    if (i11 == 1) {
                        throw new InstantiationException("Nested List can not be supported");
                    }
                    if (i11 == 0) {
                        arrayList.add(decode(bundle2, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
                    } else {
                        throw new InstantiationException("Unknown type can not be supported");
                    }
                } else {
                    continue;
                }
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // com.huawei.hms.core.aidl.MessageCodec
    protected void writeList(String str, List list, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt("_val_type_", 1);
        bundle2.putInt("_list_size_", list.size());
        for (int i9 = 0; i9 < list.size(); i9++) {
            writeValue("_list_item_" + i9, list.get(i9), bundle2);
        }
        bundle.putBundle(str, bundle2);
    }
}
