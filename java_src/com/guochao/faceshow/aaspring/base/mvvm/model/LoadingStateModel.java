package com.guochao.faceshow.aaspring.base.mvvm.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "LoadingCancelModel", "LoadingFailModel", "LoadingSuccessModel", "StartLoadingModel", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingCancelModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingFailModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingSuccessModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class LoadingStateModel extends BaseModel {

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingCancelModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "loadingTag", "", "reason", "", "(Ljava/lang/String;I)V", "getLoadingTag", "()Ljava/lang/String;", "getReason", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LoadingCancelModel extends LoadingStateModel {
        @Nullable
        private final String loadingTag;
        private final int reason;

        public LoadingCancelModel() {
            this(null, 0, 3, null);
        }

        public /* synthetic */ LoadingCancelModel(String str, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? 0 : i9);
        }

        public static /* synthetic */ LoadingCancelModel copy$default(LoadingCancelModel loadingCancelModel, String str, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = loadingCancelModel.loadingTag;
            }
            if ((i10 & 2) != 0) {
                i9 = loadingCancelModel.reason;
            }
            return loadingCancelModel.copy(str, i9);
        }

        @Nullable
        public final String component1() {
            return this.loadingTag;
        }

        public final int component2() {
            return this.reason;
        }

        @NotNull
        public final LoadingCancelModel copy(@Nullable String str, int i9) {
            return new LoadingCancelModel(str, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof LoadingCancelModel) {
                LoadingCancelModel loadingCancelModel = (LoadingCancelModel) obj;
                return Intrinsics.areEqual(this.loadingTag, loadingCancelModel.loadingTag) && this.reason == loadingCancelModel.reason;
            }
            return false;
        }

        @Nullable
        public final String getLoadingTag() {
            return this.loadingTag;
        }

        public final int getReason() {
            return this.reason;
        }

        public int hashCode() {
            String str = this.loadingTag;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.reason;
        }

        @NotNull
        public String toString() {
            return "LoadingCancelModel(loadingTag=" + this.loadingTag + ", reason=" + this.reason + ')';
        }

        public LoadingCancelModel(@Nullable String str, int i9) {
            super(null);
            this.loadingTag = str;
            this.reason = i9;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingFailModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "loadingTag", "", "reason", "", "(Ljava/lang/String;I)V", "getLoadingTag", "()Ljava/lang/String;", "getReason", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LoadingFailModel extends LoadingStateModel {
        @Nullable
        private final String loadingTag;
        private final int reason;

        public LoadingFailModel() {
            this(null, 0, 3, null);
        }

        public /* synthetic */ LoadingFailModel(String str, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? 0 : i9);
        }

        public static /* synthetic */ LoadingFailModel copy$default(LoadingFailModel loadingFailModel, String str, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = loadingFailModel.loadingTag;
            }
            if ((i10 & 2) != 0) {
                i9 = loadingFailModel.reason;
            }
            return loadingFailModel.copy(str, i9);
        }

        @Nullable
        public final String component1() {
            return this.loadingTag;
        }

        public final int component2() {
            return this.reason;
        }

        @NotNull
        public final LoadingFailModel copy(@Nullable String str, int i9) {
            return new LoadingFailModel(str, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof LoadingFailModel) {
                LoadingFailModel loadingFailModel = (LoadingFailModel) obj;
                return Intrinsics.areEqual(this.loadingTag, loadingFailModel.loadingTag) && this.reason == loadingFailModel.reason;
            }
            return false;
        }

        @Nullable
        public final String getLoadingTag() {
            return this.loadingTag;
        }

        public final int getReason() {
            return this.reason;
        }

        public int hashCode() {
            String str = this.loadingTag;
            return ((str == null ? 0 : str.hashCode()) * 31) + this.reason;
        }

        @NotNull
        public String toString() {
            return "LoadingFailModel(loadingTag=" + this.loadingTag + ", reason=" + this.reason + ')';
        }

        public LoadingFailModel(@Nullable String str, int i9) {
            super(null);
            this.loadingTag = str;
            this.reason = i9;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$LoadingSuccessModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "loadingTag", "", "(Ljava/lang/String;)V", "getLoadingTag", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class LoadingSuccessModel extends LoadingStateModel {
        @Nullable
        private final String loadingTag;

        public LoadingSuccessModel() {
            this(null, 1, null);
        }

        public LoadingSuccessModel(@Nullable String str) {
            super(null);
            this.loadingTag = str;
        }

        public static /* synthetic */ LoadingSuccessModel copy$default(LoadingSuccessModel loadingSuccessModel, String str, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = loadingSuccessModel.loadingTag;
            }
            return loadingSuccessModel.copy(str);
        }

        @Nullable
        public final String component1() {
            return this.loadingTag;
        }

        @NotNull
        public final LoadingSuccessModel copy(@Nullable String str) {
            return new LoadingSuccessModel(str);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LoadingSuccessModel) && Intrinsics.areEqual(this.loadingTag, ((LoadingSuccessModel) obj).loadingTag);
        }

        @Nullable
        public final String getLoadingTag() {
            return this.loadingTag;
        }

        public int hashCode() {
            String str = this.loadingTag;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadingSuccessModel(loadingTag=" + this.loadingTag + ')';
        }

        public /* synthetic */ LoadingSuccessModel(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel$StartLoadingModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/LoadingStateModel;", "loadingTag", "", "msg", "(Ljava/lang/String;Ljava/lang/String;)V", "getLoadingTag", "()Ljava/lang/String;", "getMsg", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class StartLoadingModel extends LoadingStateModel {
        @Nullable
        private final String loadingTag;
        @Nullable
        private final String msg;

        public StartLoadingModel() {
            this(null, null, 3, null);
        }

        public /* synthetic */ StartLoadingModel(String str, String str2, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? null : str, (i9 & 2) != 0 ? null : str2);
        }

        public static /* synthetic */ StartLoadingModel copy$default(StartLoadingModel startLoadingModel, String str, String str2, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = startLoadingModel.loadingTag;
            }
            if ((i9 & 2) != 0) {
                str2 = startLoadingModel.msg;
            }
            return startLoadingModel.copy(str, str2);
        }

        @Nullable
        public final String component1() {
            return this.loadingTag;
        }

        @Nullable
        public final String component2() {
            return this.msg;
        }

        @NotNull
        public final StartLoadingModel copy(@Nullable String str, @Nullable String str2) {
            return new StartLoadingModel(str, str2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StartLoadingModel) {
                StartLoadingModel startLoadingModel = (StartLoadingModel) obj;
                return Intrinsics.areEqual(this.loadingTag, startLoadingModel.loadingTag) && Intrinsics.areEqual(this.msg, startLoadingModel.msg);
            }
            return false;
        }

        @Nullable
        public final String getLoadingTag() {
            return this.loadingTag;
        }

        @Nullable
        public final String getMsg() {
            return this.msg;
        }

        public int hashCode() {
            String str = this.loadingTag;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.msg;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "StartLoadingModel(loadingTag=" + this.loadingTag + ", msg=" + this.msg + ')';
        }

        public StartLoadingModel(@Nullable String str, @Nullable String str2) {
            super(null);
            this.loadingTag = str;
            this.msg = str2;
        }
    }

    private LoadingStateModel() {
    }

    public /* synthetic */ LoadingStateModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
