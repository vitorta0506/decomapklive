package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class ViewModel {
    @Nullable
    private final Map<String, Object> mBagOfTags;
    private volatile boolean mCleared;
    @Nullable
    private final Set<Closeable> mCloseables;

    public ViewModel() {
        this.mBagOfTags = new HashMap();
        this.mCloseables = new LinkedHashSet();
        this.mCleared = false;
    }

    private static void closeWithRuntimeException(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public void addCloseable(@NonNull Closeable closeable) {
        Set<Closeable> set = this.mCloseables;
        if (set != null) {
            synchronized (set) {
                this.mCloseables.add(closeable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public final void clear() {
        this.mCleared = true;
        Map<String, Object> map = this.mBagOfTags;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.mBagOfTags.values()) {
                    closeWithRuntimeException(obj);
                }
            }
        }
        Set<Closeable> set = this.mCloseables;
        if (set != null) {
            synchronized (set) {
                for (Closeable closeable : this.mCloseables) {
                    closeWithRuntimeException(closeable);
                }
            }
        }
        onCleared();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T getTag(String str) {
        T t10;
        Map<String, Object> map = this.mBagOfTags;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t10 = (T) this.mBagOfTags.get(str);
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCleared() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T setTagIfAbsent(String str, T t10) {
        Object obj;
        synchronized (this.mBagOfTags) {
            obj = this.mBagOfTags.get(str);
            if (obj == null) {
                this.mBagOfTags.put(str, t10);
            }
        }
        if (obj != null) {
            t10 = obj;
        }
        if (this.mCleared) {
            closeWithRuntimeException(t10);
        }
        return t10;
    }

    public ViewModel(@NonNull Closeable... closeableArr) {
        this.mBagOfTags = new HashMap();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.mCloseables = linkedHashSet;
        this.mCleared = false;
        linkedHashSet.addAll(Arrays.asList(closeableArr));
    }
}
