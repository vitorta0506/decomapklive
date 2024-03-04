package com.tencent.bugly.proguard;

import java.io.Serializable;
/* loaded from: classes4.dex */
public abstract class k implements Serializable {
    public abstract void a(i iVar);

    public abstract void a(j jVar);

    public abstract void a(StringBuilder sb2, int i9);

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2, 0);
        return sb2.toString();
    }
}
