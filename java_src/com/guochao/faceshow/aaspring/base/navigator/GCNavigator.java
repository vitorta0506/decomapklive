package com.guochao.faceshow.aaspring.base.navigator;

import android.content.Context;
import android.os.Bundle;
import com.guochao.faceshow.utils.TCConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0010\b&\u0018\u00002\u00020\u0001B\u0019\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0001H&J\b\u0010\u0018\u001a\u00020\u0000H&J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;", "", "context", "Landroid/content/Context;", TCConstants.VIDEO_RECORD_VIDEPATH, "", "(Landroid/content/Context;Ljava/lang/String;)V", "bundle", "Landroid/os/Bundle;", "getBundle", "()Landroid/os/Bundle;", "setBundle", "(Landroid/os/Bundle;)V", "code", "", "getCode", "()I", "setCode", "(I)V", "getContext", "()Landroid/content/Context;", "getPath", "()Ljava/lang/String;", "findObject", "go", "requestCode", "withParam", "key", "value", "withParams", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCNavigator {
    @Nullable
    private Bundle bundle;
    private int code;
    @Nullable
    private final Context context;
    @NotNull
    private final String path;

    public GCNavigator(@Nullable Context context, @NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.context = context;
        this.path = path;
        this.code = -1;
    }

    @Nullable
    public abstract Object findObject();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Bundle getBundle() {
        return this.bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getCode() {
        return this.code;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public abstract GCNavigator go();

    @NotNull
    public final GCNavigator requestCode(int i9) {
        this.code = i9;
        return this;
    }

    protected final void setBundle(@Nullable Bundle bundle) {
        this.bundle = bundle;
    }

    protected final void setCode(int i9) {
        this.code = i9;
    }

    @NotNull
    public final GCNavigator withParam(@NotNull String key, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this;
    }

    @NotNull
    public final GCNavigator withParams(@NotNull Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Bundle bundle2 = this.bundle;
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        bundle2.putAll(bundle);
        this.bundle = bundle2;
        return this;
    }

    public /* synthetic */ GCNavigator(Context context, String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? null : context, str);
    }
}
