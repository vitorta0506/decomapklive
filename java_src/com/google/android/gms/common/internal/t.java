package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.errorprone.annotations.RestrictedInheritance;
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms.*", explanation = "Use canonical fakes instead.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes2.dex */
public interface t extends com.google.android.gms.common.api.e<u> {
    @NonNull
    t4.g<Void> a(@NonNull TelemetryData telemetryData);
}
