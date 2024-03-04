package com.snapchat.kit.sdk.core.models;

import com.snapchat.kit.sdk.core.metrics.model.DailySessionBucket;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final c f29502a;

    /* renamed from: b  reason: collision with root package name */
    private int f29503b;

    public b(c cVar, int i9) {
        this.f29502a = cVar;
        this.f29503b = i9;
    }

    public int a() {
        return this.f29503b;
    }

    public DailySessionBucket b() {
        switch (this.f29503b) {
            case 1:
                return DailySessionBucket.ONE_SESSION;
            case 2:
                return DailySessionBucket.TWO_SESSION;
            case 3:
                return DailySessionBucket.THREE_SESSION;
            case 4:
                return DailySessionBucket.FOUR_SESSION;
            case 5:
                return DailySessionBucket.FIVE_SESSION;
            case 6:
                return DailySessionBucket.SIX_SESSION;
            case 7:
                return DailySessionBucket.SEVEN_SESSION;
            case 8:
                return DailySessionBucket.EIGHT_SESSION;
            case 9:
                return DailySessionBucket.NINE_SESSION;
            default:
                return DailySessionBucket.TEN_OR_MORE_SESSION;
        }
    }

    public void c() {
        this.f29503b++;
    }
}
