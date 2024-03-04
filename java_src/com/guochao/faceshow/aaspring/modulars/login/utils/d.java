package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.LineProfile;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import java.util.Arrays;
/* loaded from: classes3.dex */
public class d extends l {

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f20547a;

        static {
            int[] iArr = new int[LineApiResponseCode.values().length];
            f20547a = iArr;
            try {
                iArr[LineApiResponseCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20547a[LineApiResponseCode.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public d(Context context) {
        super(context);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        if (i9 != 1024) {
            LogUtils.e("ERROR", "Unsupported Request");
            return;
        }
        LineLoginResult d10 = com.linecorp.linesdk.auth.a.d(intent);
        int i11 = a.f20547a[d10.k().ordinal()];
        if (i11 == 1) {
            String a10 = d10.g().a().a();
            LineProfile i12 = d10.i();
            if (i12 == null) {
                e(-1, "no profile");
            } else {
                a(11, a10, i12.getUserId(), null);
            }
        } else if (i11 != 2) {
            e(d10.k().ordinal(), d10.e().c());
            LogUtils.e("ERROR", "Login FAILED!");
            LogUtils.e("ERROR", d10.e().toString());
        } else {
            d();
            LogUtils.e("ERROR", "LINE Login Canceled by user.");
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public boolean l() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        try {
            Intent b10 = com.linecorp.linesdk.auth.a.b(this.f20570b, "1571621511", new LineAuthenticationParams.b().f(Arrays.asList(qc.e.f57157c)).e());
            Context context = this.f20570b;
            if (context instanceof Activity) {
                ((Activity) context).startActivityForResult(b10, 1024);
            }
        } catch (Exception e10) {
            LogUtils.e("ERROR", e10.toString());
        }
    }
}
