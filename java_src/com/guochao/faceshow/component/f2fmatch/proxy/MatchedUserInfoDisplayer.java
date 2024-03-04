package com.guochao.faceshow.component.f2fmatch.proxy;

import android.view.ViewGroup;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/MatchedUserInfoDisplayer;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "displayUserInfo", "", Contants.USER_INFO, "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "container", "Landroid/view/ViewGroup;", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface MatchedUserInfoDisplayer extends IProvider {
    void displayUserInfo(@NotNull GCUser gCUser, @NotNull ViewGroup viewGroup);
}
