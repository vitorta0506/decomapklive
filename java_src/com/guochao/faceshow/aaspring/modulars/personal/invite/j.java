package com.guochao.faceshow.aaspring.modulars.personal.invite;

import com.guochao.faceshow.aaspring.beans.InviteWebBean;
/* loaded from: classes3.dex */
public class j {

    /* renamed from: b  reason: collision with root package name */
    private static j f21568b;

    /* renamed from: a  reason: collision with root package name */
    private InviteWebBean f21569a;

    public static j a() {
        j jVar;
        synchronized (j.class) {
            if (f21568b == null) {
                f21568b = new j();
            }
            jVar = f21568b;
        }
        return jVar;
    }

    public InviteWebBean b() {
        return this.f21569a;
    }
}
