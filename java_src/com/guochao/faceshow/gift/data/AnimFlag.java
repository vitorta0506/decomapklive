package com.guochao.faceshow.gift.data;

import android.view.animation.Animation;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import p7.a;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class AnimFlag implements h {
    public GiftLiveMessage A;

    /* renamed from: a  reason: collision with root package name */
    public transient Animation f25291a;

    /* renamed from: b  reason: collision with root package name */
    public transient Animation f25292b;

    /* renamed from: c  reason: collision with root package name */
    public int f25293c;

    /* renamed from: d  reason: collision with root package name */
    public String f25294d;

    /* renamed from: e  reason: collision with root package name */
    public String f25295e;

    /* renamed from: f  reason: collision with root package name */
    public String f25296f;

    /* renamed from: g  reason: collision with root package name */
    public String f25297g;

    /* renamed from: h  reason: collision with root package name */
    public int f25298h;

    /* renamed from: i  reason: collision with root package name */
    public String f25299i;

    /* renamed from: j  reason: collision with root package name */
    public long f25300j;

    /* renamed from: k  reason: collision with root package name */
    public transient Runnable f25301k;

    /* renamed from: n  reason: collision with root package name */
    public String f25304n;

    /* renamed from: o  reason: collision with root package name */
    public int f25305o;

    /* renamed from: p  reason: collision with root package name */
    public long f25306p;

    /* renamed from: q  reason: collision with root package name */
    public UserVipData f25307q;

    /* renamed from: r  reason: collision with root package name */
    public int f25308r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f25309s;

    /* renamed from: t  reason: collision with root package name */
    public int f25310t;

    /* renamed from: u  reason: collision with root package name */
    public String f25311u;

    /* renamed from: v  reason: collision with root package name */
    public String f25312v;

    /* renamed from: w  reason: collision with root package name */
    public int f25313w;

    /* renamed from: l  reason: collision with root package name */
    public int f25302l = 1;

    /* renamed from: m  reason: collision with root package name */
    public int f25303m = 1;

    /* renamed from: x  reason: collision with root package name */
    public int f25314x = 0;

    /* renamed from: y  reason: collision with root package name */
    public int f25315y = 0;

    /* renamed from: z  reason: collision with root package name */
    public boolean f25316z = false;

    public boolean a() {
        return this.f25314x > 0;
    }

    @Override // p7.b
    public /* synthetic */ int getAge() {
        return a.a(this);
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.f25299i;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return null;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return null;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    @Override // p7.e
    public /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // p7.h
    public /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public /* synthetic */ String getUserName() {
        return g.b(this);
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }
}
