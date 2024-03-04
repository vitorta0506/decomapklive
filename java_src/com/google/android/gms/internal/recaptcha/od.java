package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public interface od extends ExecutorService {
    <T> nd<T> c(Callable<T> callable);
}
