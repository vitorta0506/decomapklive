package com.guochao.faceshow.aaspring.modulars.customerservice.helper;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import java.util.List;
/* loaded from: classes3.dex */
public class FeedbackImageViewModel extends ViewModel {

    /* renamed from: a  reason: collision with root package name */
    MutableLiveData<List<LocalImageOrVideoBean>> f17479a = new MutableLiveData<>();

    public MutableLiveData<List<LocalImageOrVideoBean>> b() {
        return this.f17479a;
    }
}
