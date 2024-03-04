package com.guochao.faceshow.aaspring.utils;
/* loaded from: classes3.dex */
public abstract class BasePermissionObserver extends SimpleObserver<te.a> {
    public void onDenied(te.a aVar) {
    }

    public abstract void onGranted(te.a aVar);

    public void onShouldShowRequestPermissionRationale(te.a aVar) {
    }

    @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
    public void onNext(te.a aVar) {
        super.onNext((BasePermissionObserver) aVar);
        if (aVar.f58133b) {
            onGranted(aVar);
        } else if (!aVar.f58134c) {
            onShouldShowRequestPermissionRationale(aVar);
        } else {
            onDenied(aVar);
        }
    }
}
