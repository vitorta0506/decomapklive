package com.previewlibrary;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import bd.c;
import com.previewlibrary.enitity.IThumbViewInfo;
import com.previewlibrary.view.BasePhotoFragment;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public final class GPreviewBuilder {

    /* renamed from: a  reason: collision with root package name */
    private Activity f28897a;

    /* renamed from: b  reason: collision with root package name */
    private Intent f28898b = new Intent();

    /* renamed from: c  reason: collision with root package name */
    private Class f28899c;

    /* renamed from: d  reason: collision with root package name */
    private c f28900d;

    /* loaded from: classes4.dex */
    public enum IndicatorType {
        Dot,
        Number
    }

    private GPreviewBuilder(@NonNull Activity activity) {
        this.f28897a = activity;
    }

    public static GPreviewBuilder a(@NonNull Activity activity) {
        return new GPreviewBuilder(activity);
    }

    public GPreviewBuilder b(int i9) {
        this.f28898b.putExtra("position", i9);
        return this;
    }

    public <T extends IThumbViewInfo> GPreviewBuilder c(@NonNull List<T> list) {
        this.f28898b.putParcelableArrayListExtra("imagePaths", new ArrayList<>(list));
        return this;
    }

    public GPreviewBuilder d(boolean z10) {
        this.f28898b.putExtra("isDrag", z10);
        return this;
    }

    public GPreviewBuilder e(boolean z10) {
        this.f28898b.putExtra("isSingleFling", z10);
        return this;
    }

    public GPreviewBuilder f(@NonNull IndicatorType indicatorType) {
        this.f28898b.putExtra("type", indicatorType);
        return this;
    }

    public void g() {
        Class<?> cls = this.f28899c;
        if (cls == null) {
            this.f28898b.setClass(this.f28897a, GPreviewActivity.class);
        } else {
            this.f28898b.setClass(this.f28897a, cls);
        }
        BasePhotoFragment.f28903h = this.f28900d;
        this.f28897a.startActivity(this.f28898b);
        this.f28897a.overridePendingTransition(0, 0);
        this.f28898b = null;
        this.f28897a = null;
    }

    public GPreviewBuilder h(@NonNull Class cls) {
        this.f28899c = cls;
        this.f28898b.setClass(this.f28897a, cls);
        return this;
    }
}
