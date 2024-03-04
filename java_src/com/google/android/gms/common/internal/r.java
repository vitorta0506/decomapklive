package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.R$string;
/* loaded from: classes2.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f7780a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7781b;

    public r(@NonNull Context context) {
        p.j(context);
        Resources resources = context.getResources();
        this.f7780a = resources;
        this.f7781b = resources.getResourcePackageName(R$string.common_google_play_services_unknown_issue);
    }

    @Nullable
    public String a(@NonNull String str) {
        int identifier = this.f7780a.getIdentifier(str, TypedValues.Custom.S_STRING, this.f7781b);
        if (identifier == 0) {
            return null;
        }
        return this.f7780a.getString(identifier);
    }
}
