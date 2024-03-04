package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import androidx.webkit.internal.AssetHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import io.reactivex.k;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
import vh.o;
@Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils$saveMsgRecord$1$1", "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;", "Lte/a;", "o", "", "onNext", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatRecordUtils$saveMsgRecord$1$1 extends SimpleObserver<te.a> {
    final /* synthetic */ String $record;
    final /* synthetic */ String $userName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChatRecordUtils$saveMsgRecord$1$1(String str, String str2) {
        this.$userName = str;
        this.$record = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onNext$lambda-1  reason: not valid java name */
    public static final String m356onNext$lambda1(String userName, String record, String it) {
        List<String> split$default;
        Intrinsics.checkNotNullParameter(userName, "$userName");
        Intrinsics.checkNotNullParameter(record, "$record");
        Intrinsics.checkNotNullParameter(it, "it");
        File file = new File(Environment.getExternalStorageDirectory() + File.separator + Environment.DIRECTORY_DOWNLOADS + IOUtils.DIR_SEPARATOR_UNIX + BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name) + "/im_files");
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        sb2.append(BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name));
        sb2.append("]  ");
        sb2.append(BaseApplication.getInstance().getString(R.string.chat_record_title, new Object[]{userName}));
        String sb3 = sb2.toString();
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, sb3 + ".txt");
            if (!file2.exists()) {
                file2.createNewFile();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2));
            split$default = StringsKt__StringsKt.split$default((CharSequence) record, new String[]{IOUtils.LINE_SEPARATOR_UNIX}, false, 0, 6, (Object) null);
            for (String str : split$default) {
                bufferedWriter.write(str);
                bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            }
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return sb3 + ".txt";
    }

    @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
    public void onNext(@NotNull te.a o10) {
        Intrinsics.checkNotNullParameter(o10, "o");
        if (o10.f58133b) {
            k just = k.just(this.$userName);
            final String str = this.$userName;
            final String str2 = this.$record;
            k map = just.map(new o() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.b
                @Override // vh.o
                public final Object apply(Object obj) {
                    String m356onNext$lambda1;
                    m356onNext$lambda1 = ChatRecordUtils$saveMsgRecord$1$1.m356onNext$lambda1(str, str2, (String) obj);
                    return m356onNext$lambda1;
                }
            });
            final String str3 = this.$userName;
            map.subscribe(new SimpleObserver<String>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.ChatRecordUtils$saveMsgRecord$1$1$onNext$2
                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(@NotNull String path) {
                    Intrinsics.checkNotNullParameter(path, "path");
                    super.onNext((ChatRecordUtils$saveMsgRecord$1$1$onNext$2) path);
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.SEND");
                    intent.setFlags(268435459);
                    intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
                    if (Build.VERSION.SDK_INT >= 24) {
                        intent.putExtra("android.intent.extra.STREAM", path);
                        intent.addFlags(1);
                    } else {
                        intent.putExtra("android.intent.extra.STREAM", path);
                    }
                    String string = BaseApplication.getInstance().getString(R.string.chat_record_text, new Object[]{BaseApplication.getInstance().getString(R.string.FaceCast_APP_Name), str3});
                    Intrinsics.checkNotNullExpressionValue(string, "getInstance().getString(…Cast_APP_Name), userName)");
                    intent.putExtra("android.intent.extra.TEXT", string);
                    Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                    if (currTopActivity != null) {
                        currTopActivity.startActivity(intent);
                    }
                }
            });
        }
    }
}
