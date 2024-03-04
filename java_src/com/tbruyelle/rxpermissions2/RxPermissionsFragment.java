package com.tbruyelle.rxpermissions2;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class RxPermissionsFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, ei.a<te.a>> f30076a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private boolean f30077b;

    public boolean P1(@NonNull String str) {
        return this.f30076a.containsKey(str);
    }

    public ei.a<te.a> Q1(@NonNull String str) {
        return this.f30076a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean R1(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.checkSelfPermission(str) == 0;
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean S1(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T1(String str) {
        if (this.f30077b) {
            Log.d(a.f30078b, str);
        }
    }

    void U1(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            T1("onRequestPermissionsResult  " + strArr[i9]);
            ei.a<te.a> aVar = this.f30076a.get(strArr[i9]);
            if (aVar == null) {
                Log.e(a.f30078b, "RxPermissions.onRequestPermissionsResult invoked but didn't find the corresponding permission request.");
                return;
            }
            this.f30076a.remove(strArr[i9]);
            aVar.onNext(new te.a(strArr[i9], iArr[i9] == 0, zArr[i9]));
            aVar.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V1(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }

    public void W1(@NonNull String str, @NonNull ei.a<te.a> aVar) {
        this.f30076a.put(str, aVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        if (i9 != 42) {
            return;
        }
        boolean[] zArr = new boolean[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            zArr[i10] = shouldShowRequestPermissionRationale(strArr[i10]);
        }
        U1(strArr, iArr, zArr);
    }
}
