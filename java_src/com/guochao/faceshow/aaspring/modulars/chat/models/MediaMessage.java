package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.Contants;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.io.File;
/* loaded from: classes3.dex */
public abstract class MediaMessage extends a {
    public MediaMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
    }

    public File getBaseDir(String str, String str2) {
        File file = new File(new File(FilePathProvider.getPrivateRootPathV2("im_files")), SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        if (TextUtils.isEmpty(this.message.getGroupID())) {
            file = new File(file, "c2c");
        }
        File file2 = new File(new File(new File(file, this.message.getSender()), str), str2);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }
}
