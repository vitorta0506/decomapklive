package com.meizu.cloud.pushsdk.d.b;

import com.meizu.cloud.pushsdk.c.c.i;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f28571a;

    /* renamed from: b  reason: collision with root package name */
    private final i f28572b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedList<Long> f28573c;

    public e(boolean z10, i iVar, LinkedList<Long> linkedList) {
        this.f28571a = z10;
        this.f28572b = iVar;
        this.f28573c = linkedList;
    }

    public i a() {
        return this.f28572b;
    }

    public LinkedList<Long> b() {
        return this.f28573c;
    }

    public boolean c() {
        return this.f28571a;
    }
}
