package z1;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.datatransport.Priority;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<Priority> f60296a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<Priority, Integer> f60297b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f60297b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f60297b.put(Priority.VERY_LOW, 1);
        f60297b.put(Priority.HIGHEST, 2);
        for (Priority priority : f60297b.keySet()) {
            f60296a.append(f60297b.get(priority).intValue(), priority);
        }
    }

    public static int a(@NonNull Priority priority) {
        Integer num = f60297b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    @NonNull
    public static Priority b(int i9) {
        Priority priority = f60296a.get(i9);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i9);
    }
}
