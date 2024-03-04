package com.tencent.thumbplayer.adapter.strategy;

import com.tencent.thumbplayer.utils.TPLogUtil;
/* loaded from: classes4.dex */
public class d extends b {

    /* renamed from: b  reason: collision with root package name */
    private int f33737b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f33738c;

    public d(com.tencent.thumbplayer.adapter.strategy.a.a aVar) {
        super(aVar);
        this.f33737b = 0;
        int[] c10 = aVar.c();
        this.f33738c = c10;
        if (c10 == null || c10.length == 0) {
            this.f33738c = new int[1];
        }
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int a(com.tencent.thumbplayer.adapter.b bVar) {
        int[] iArr = this.f33738c;
        int length = iArr.length;
        int i9 = this.f33737b;
        int i10 = length > i9 ? iArr[i9] : 0;
        int i11 = (!(i10 == 2 || i10 == 3) || b(bVar)) ? i10 : 0;
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForOpen, playerType:".concat(String.valueOf(i11)));
        return i11;
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int a(com.tencent.thumbplayer.adapter.b bVar, com.tencent.thumbplayer.adapter.strategy.a.b bVar2) {
        int i9;
        if (bVar2 == null || bVar2.a() != 0) {
            int[] iArr = this.f33738c;
            int length = iArr.length - 1;
            int i10 = this.f33737b;
            if (length > i10) {
                int i11 = i10 + 1;
                this.f33737b = i11;
                i9 = iArr[i11];
            } else {
                i9 = 0;
            }
            int i12 = (!(i9 == 2 || i9 == 3) || b(bVar)) ? i9 : 0;
            TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", "strategyForRetry, playerType:".concat(String.valueOf(i12)));
            return i12;
        }
        return a(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.strategy.b, com.tencent.thumbplayer.adapter.strategy.a
    public int[] a() {
        StringBuilder sb2;
        int i9;
        int[] iArr = {-1};
        int i10 = this.f33737b;
        int[] iArr2 = this.f33738c;
        if (i10 >= iArr2.length) {
            sb2 = new StringBuilder("strategyForDec error, decType:");
            i9 = iArr[0];
        } else {
            if (iArr2[i10] == 1 || iArr2[i10] == 2) {
                iArr[0] = 102;
            } else if (iArr2[i10] == 3) {
                iArr[0] = 101;
            }
            sb2 = new StringBuilder("strategyForDec, decType:");
            i9 = iArr[0];
        }
        sb2.append(i9);
        TPLogUtil.i("TPThumbPlayer[TPExtStrategy.java]", sb2.toString());
        return iArr;
    }
}
