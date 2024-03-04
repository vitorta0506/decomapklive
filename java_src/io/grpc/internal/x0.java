package io.grpc.internal;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public final class x0 {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<String> f43112a = new ArrayList<>();

    public x0 a(Object obj) {
        this.f43112a.add(String.valueOf(obj));
        return this;
    }

    public x0 b(String str, Object obj) {
        ArrayList<String> arrayList = this.f43112a;
        arrayList.add(str + ContainerUtils.KEY_VALUE_DELIMITER + obj);
        return this;
    }

    public String toString() {
        return this.f43112a.toString();
    }
}
