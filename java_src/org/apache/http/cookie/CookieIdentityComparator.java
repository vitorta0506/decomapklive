package org.apache.http.cookie;

import java.io.Serializable;
import java.util.Comparator;
import org.light.utils.FileUtils;
import ri.a;
/* loaded from: classes7.dex */
public class CookieIdentityComparator implements Serializable, Comparator<a> {
    private static final long serialVersionUID = 4466565437490631532L;

    @Override // java.util.Comparator
    public int compare(a aVar, a aVar2) {
        int compareTo = aVar.getName().compareTo(aVar2.getName());
        if (compareTo == 0) {
            String domain = aVar.getDomain();
            String str = "";
            if (domain == null) {
                domain = "";
            } else if (domain.indexOf(46) == -1) {
                domain = domain + ".local";
            }
            String domain2 = aVar2.getDomain();
            if (domain2 != null) {
                if (domain2.indexOf(46) == -1) {
                    str = domain2 + ".local";
                } else {
                    str = domain2;
                }
            }
            compareTo = domain.compareToIgnoreCase(str);
        }
        if (compareTo == 0) {
            String path = aVar.getPath();
            String str2 = FileUtils.RES_PREFIX_STORAGE;
            if (path == null) {
                path = FileUtils.RES_PREFIX_STORAGE;
            }
            String path2 = aVar2.getPath();
            if (path2 != null) {
                str2 = path2;
            }
            return path.compareTo(str2);
        }
        return compareTo;
    }
}
