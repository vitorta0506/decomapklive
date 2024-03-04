package p5;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class c {
    public static ImmutableMap<String, List<String>> a(Map<String, List<String>> map, Map<String, List<String>> map2) {
        ImmutableMap.b builder = ImmutableMap.builder();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> list = map2.get(key);
            ImmutableList.b builder2 = ImmutableList.builder();
            builder2.h(entry.getValue());
            if (list != null) {
                builder2.h(list);
            }
            builder.h(key, builder2.j());
        }
        for (Map.Entry<String, List<String>> entry2 : map2.entrySet()) {
            String key2 = entry2.getKey();
            if (!map.containsKey(key2)) {
                builder.h(key2, ImmutableList.copyOf((Collection) entry2.getValue()));
            }
        }
        return builder.a();
    }
}
