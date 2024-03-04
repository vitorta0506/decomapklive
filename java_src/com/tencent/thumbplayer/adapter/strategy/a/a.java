package com.tencent.thumbplayer.adapter.strategy.a;

import com.tencent.thumbplayer.adapter.c;
import com.tencent.thumbplayer.adapter.strategy.utils.TPStrategyUtils;
import com.tencent.thumbplayer.api.TPOptionalParam;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    int f33728a;

    /* renamed from: b  reason: collision with root package name */
    int f33729b;

    /* renamed from: c  reason: collision with root package name */
    int[] f33730c;

    /* renamed from: d  reason: collision with root package name */
    boolean f33731d;

    public a(c cVar) {
        this.f33731d = false;
        this.f33728a = 2;
        this.f33729b = 2;
        if (TPStrategyUtils.isTVPlatform()) {
            this.f33729b = 4;
            this.f33728a = 2;
        }
        if (cVar == null) {
            return;
        }
        TPOptionalParam b10 = cVar.b(210);
        if (b10 != null && b10.getParamType() == 4) {
            this.f33730c = b10.getParamQueueInt().queueValue;
            this.f33731d = true;
            return;
        }
        TPOptionalParam b11 = cVar.b(202);
        if (b11 != null && b11.getParamType() == 2 && a(b11.getParamLong().value)) {
            this.f33729b = (int) b11.getParamLong().value;
        }
        TPOptionalParam b12 = cVar.b(203);
        if (b12 != null && b12.getParamType() == 2 && b(b12.getParamLong().value)) {
            this.f33728a = (int) b12.getParamLong().value;
        }
        a(this.f33729b, this.f33728a);
    }

    private void a(int i9, int i10) {
        if (i9 == 3 && i10 == 3) {
            throw new IllegalArgumentException("can not soft with systemplayer");
        }
    }

    private boolean a(long j10) {
        return j10 > 0 && j10 < 5;
    }

    private boolean b(long j10) {
        return j10 > 0 && j10 < 5;
    }

    public int a() {
        return this.f33729b;
    }

    public int b() {
        return this.f33728a;
    }

    public int[] c() {
        return this.f33730c;
    }

    public boolean d() {
        return this.f33731d;
    }
}
