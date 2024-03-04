package com.guochao.faceshow.userhomepage.act;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.ImageBrowse.EditBigImageAct;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.AResult;
import com.guochao.faceshow.utils.Ahttp;
import com.guochao.faceshow.utils.ArequestCallBack;
import com.guochao.faceshow.utils.Contants;
import java.io.File;
/* loaded from: classes4.dex */
public class HeadEditBigImageAct extends EditBigImageAct {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends ArequestCallBack<String> {
        a(Activity activity, Ahttp ahttp) {
            super(activity, ahttp);
        }

        @Override // com.guochao.faceshow.utils.ArequestCallBack
        public void onSuccess(String str) {
            super.onSuccess(str);
            AResult aResult = this.aresult;
            if (aResult == null || 1 != aResult.code) {
                return;
            }
            SpUtils.setStr(HeadEditBigImageAct.this, Contants.USER_HEADIMG, this.data);
            if (TextUtils.isEmpty(this.data)) {
                return;
            }
            hc.a.j(((EditBigImageAct) HeadEditBigImageAct.this).f16020f.Y1(), this.data);
        }
    }

    @Override // com.guochao.faceshow.activity.PhotoDialogAct
    protected void d0(String str) {
        m0(str);
        if (TextUtils.isEmpty(str)) {
            this.f16020f.Y1().setImageURI(Uri.fromFile(new File(str)));
        }
    }

    protected void m0(String str) {
        Ahttp ahttp = new Ahttp(this, Contants.updateImg, SpUtils.getStr(this, Contants.USER_TOKEN));
        ahttp.addStrParams(Contants.USER_ID, SpUtils.getStr(this, Contants.USER_ID));
        ahttp.hasFile();
        ahttp.addFile("img", str);
        ahttp.send(new a(this, ahttp));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.ImageBrowse.EditBigImageAct, com.guochao.faceshow.activity.PhotoDialogAct, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null ? getIntent().getBooleanExtra("SHOW_MORE_ICON", true) : true) {
            k0();
        }
    }
}
