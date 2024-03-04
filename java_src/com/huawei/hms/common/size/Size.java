package com.huawei.hms.common.size;

import androidx.webkit.ProxyConfig;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.common.internal.Objects;
/* loaded from: classes4.dex */
public class Size {
    private final int height;
    private final int width;

    public Size(int i9, int i10) {
        this.width = i9;
        this.height = i10;
    }

    public static Size parseSize(String str) {
        try {
            int indexOf = str.indexOf(x.f19108w);
            if (indexOf < 0) {
                indexOf = str.indexOf(ProxyConfig.MATCH_ALL_SCHEMES);
            }
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (Exception unused) {
            throw new IllegalArgumentException("Size parses failed");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            return this.width == size.width && this.height == size.height;
        }
        return false;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(getWidth()), Integer.valueOf(getHeight()));
    }

    public final String toString() {
        int i9 = this.width;
        int i10 = this.height;
        return "Width is " + i9 + " Height is " + i10;
    }
}
