package com.google.api.gax.rpc;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class FixedHeaderProvider implements p, Serializable {
    private static final long serialVersionUID = -4881534091594970538L;

    private static void checkKeys(Collection<String> collection) {
        HashSet hashSet = new HashSet();
        for (String str : collection) {
            if (!hashSet.add(str.toLowerCase())) {
                throw new IllegalArgumentException("The header key '" + str + "' is not case insensitively unique");
            }
        }
    }

    public static FixedHeaderProvider create(Map<String, String> map) {
        checkKeys(map.keySet());
        return new g(ImmutableMap.copyOf((Map) map));
    }

    @Override // com.google.api.gax.rpc.p
    public abstract Map<String, String> getHeaders();

    public static FixedHeaderProvider create(String... strArr) {
        if (strArr.length % 2 == 0) {
            ImmutableMap.b builder = ImmutableMap.builder();
            for (int i9 = 0; i9 < strArr.length; i9 += 2) {
                builder.h(strArr[i9], strArr[i9 + 1]);
            }
            ImmutableMap a10 = builder.a();
            checkKeys(a10.keySet());
            return new g(a10);
        }
        throw new IllegalArgumentException("The keyValuePairs var-arg parameter must contain an even number of elements");
    }
}
