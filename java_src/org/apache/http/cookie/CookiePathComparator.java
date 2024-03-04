package org.apache.http.cookie;

import java.io.Serializable;
import java.util.Comparator;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
import ri.a;
/* loaded from: classes7.dex */
public class CookiePathComparator implements Serializable, Comparator<a> {
    public static final CookiePathComparator INSTANCE = new CookiePathComparator();
    private static final long serialVersionUID = 7523645369616405818L;

    private String normalizePath(a aVar) {
        String path = aVar.getPath();
        if (path == null) {
            path = FileUtils.RES_PREFIX_STORAGE;
        }
        if (path.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
            return path;
        }
        return path + IOUtils.DIR_SEPARATOR_UNIX;
    }

    @Override // java.util.Comparator
    public int compare(a aVar, a aVar2) {
        String normalizePath = normalizePath(aVar);
        String normalizePath2 = normalizePath(aVar2);
        if (normalizePath.equals(normalizePath2)) {
            return 0;
        }
        if (normalizePath.startsWith(normalizePath2)) {
            return -1;
        }
        return normalizePath2.startsWith(normalizePath) ? 1 : 0;
    }
}
