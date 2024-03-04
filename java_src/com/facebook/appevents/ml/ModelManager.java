package com.facebook.appevents.ml;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.FileDownloadTask;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.ShareConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001:\u000289B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u001aH\u0007J\b\u0010\u001e\u001a\u00020\u001aH\u0002J\n\u0010\u001f\u001a\u0004\u0018\u00010\u001cH\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&H\u0002J\u0014\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0002J\u0010\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u001cH\u0002J9\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u0010\"\u001a\u00020#2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020(0.2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00040.H\u0007¢\u0006\u0002\u00101J%\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002¢\u0006\u0002\u00106J%\u00107\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002¢\u0006\u0002\u00106R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager;", "", "()V", "ASSET_URI_KEY", "", "CACHE_KEY_MODELS", "CACHE_KEY_REQUEST_TIMESTAMP", "MODEL_ASSERT_STORE", "MODEL_REQUEST_INTERVAL_MILLISECONDS", "", "MTML_INTEGRITY_DETECT_PREDICTION", "", "MTML_SUGGESTED_EVENTS_PREDICTION", "MTML_USE_CASE", "RULES_URI_KEY", "SDK_MODEL_ASSET", "THRESHOLD_KEY", "USE_CASE_KEY", "VERSION_ID_KEY", "isLocaleEnglish", "", "()Z", "taskHandlers", "", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "addModels", "", ModelManager.CACHE_KEY_MODELS, "Lorg/json/JSONObject;", "enable", "enableMTML", "fetchModels", "getRuleFile", "Ljava/io/File;", "task", "Lcom/facebook/appevents/ml/ModelManager$Task;", "isValidTimestamp", "timestamp", "", "parseJsonArray", "", "jsonArray", "Lorg/json/JSONArray;", "parseRawJsonObject", "jsonObject", "predict", "", "denses", "texts", "(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;", "processIntegrityDetectionResult", "res", "Lcom/facebook/appevents/ml/MTensor;", ModelManager.THRESHOLD_KEY, "(Lcom/facebook/appevents/ml/MTensor;[F)[Ljava/lang/String;", "processSuggestedEventResult", "Task", "TaskHandler", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class ModelManager {
    @NotNull
    private static final String ASSET_URI_KEY = "asset_uri";
    @NotNull
    private static final String CACHE_KEY_MODELS = "models";
    @NotNull
    private static final String CACHE_KEY_REQUEST_TIMESTAMP = "model_request_timestamp";
    @NotNull
    private static final String MODEL_ASSERT_STORE = "com.facebook.internal.MODEL_STORE";
    private static final int MODEL_REQUEST_INTERVAL_MILLISECONDS = 259200000;
    @NotNull
    private static final List<String> MTML_INTEGRITY_DETECT_PREDICTION;
    @NotNull
    private static final List<String> MTML_SUGGESTED_EVENTS_PREDICTION;
    @NotNull
    private static final String MTML_USE_CASE = "MTML";
    @NotNull
    private static final String RULES_URI_KEY = "rules_uri";
    @NotNull
    private static final String SDK_MODEL_ASSET = "%s/model_asset";
    @NotNull
    private static final String THRESHOLD_KEY = "thresholds";
    @NotNull
    private static final String USE_CASE_KEY = "use_case";
    @NotNull
    private static final String VERSION_ID_KEY = "version_id";
    @NotNull
    public static final ModelManager INSTANCE = new ModelManager();
    @NotNull
    private static final Map<String, TaskHandler> taskHandlers = new ConcurrentHashMap();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$Task;", "", "(Ljava/lang/String;I)V", "toKey", "", "toUseCase", "MTML_INTEGRITY_DETECT", "MTML_APP_EVENT_PREDICTION", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum Task {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Task.valuesCustom().length];
                iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 1;
                iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Task[] valuesCustom() {
            Task[] valuesCustom = values();
            return (Task[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        @NotNull
        public final String toKey() {
            int i9 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    return "app_event_pred";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "integrity_detect";
        }

        @NotNull
        public final String toUseCase() {
            int i9 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    return "MTML_APP_EVENT_PRED";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "MTML_INTEGRITY_DETECT";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0010\u0010)\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\f\"\u0004\b\u001e\u0010\u000eR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\f\"\u0004\b$\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "", "useCase", "", "assetUri", "ruleUri", "versionId", "", ModelManager.THRESHOLD_KEY, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V", "getAssetUri", "()Ljava/lang/String;", "setAssetUri", "(Ljava/lang/String;)V", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/facebook/appevents/ml/Model;", "getModel", "()Lcom/facebook/appevents/ml/Model;", "setModel", "(Lcom/facebook/appevents/ml/Model;)V", "onPostExecute", "Ljava/lang/Runnable;", "ruleFile", "Ljava/io/File;", "getRuleFile", "()Ljava/io/File;", "setRuleFile", "(Ljava/io/File;)V", "getRuleUri", "setRuleUri", "getThresholds", "()[F", "setThresholds", "([F)V", "getUseCase", "setUseCase", "getVersionId", "()I", "setVersionId", "(I)V", "setOnPostExecute", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class TaskHandler {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private String assetUri;
        @Nullable
        private Model model;
        @Nullable
        private Runnable onPostExecute;
        @Nullable
        private File ruleFile;
        @Nullable
        private String ruleUri;
        @Nullable
        private float[] thresholds;
        @NotNull
        private String useCase;
        private int versionId;

        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\"\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0004J\u001c\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00042\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0016¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/ml/ModelManager$TaskHandler$Companion;", "", "()V", "build", "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;", "json", "Lorg/json/JSONObject;", "deleteOldFiles", "", "useCase", "", "versionId", "", "download", ShareConstants.MEDIA_URI, "name", "onComplete", "Lcom/facebook/appevents/internal/FileDownloadTask$Callback;", "execute", "handler", "master", "slaves", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final void deleteOldFiles(String str, int i9) {
                File[] listFiles;
                boolean startsWith$default;
                boolean startsWith$default2;
                Utils utils = Utils.INSTANCE;
                File mlDir = Utils.getMlDir();
                if (mlDir == null || (listFiles = mlDir.listFiles()) == null) {
                    return;
                }
                if (listFiles.length == 0) {
                    return;
                }
                String str2 = str + '_' + i9;
                int length = listFiles.length;
                int i10 = 0;
                while (i10 < length) {
                    File file = listFiles[i10];
                    i10++;
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "name");
                    startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, str, false, 2, null);
                    if (startsWith$default) {
                        startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(name, str2, false, 2, null);
                        if (!startsWith$default2) {
                            file.delete();
                        }
                    }
                }
            }

            private final void download(String str, String str2, FileDownloadTask.Callback callback) {
                Utils utils = Utils.INSTANCE;
                File file = new File(Utils.getMlDir(), str2);
                if (str != null && !file.exists()) {
                    new FileDownloadTask(str, file, callback).execute(new String[0]);
                } else {
                    callback.onComplete(file);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: execute$lambda-1  reason: not valid java name */
            public static final void m106execute$lambda1(List slaves, File file) {
                Intrinsics.checkNotNullParameter(slaves, "$slaves");
                Intrinsics.checkNotNullParameter(file, "file");
                final Model build = Model.Companion.build(file);
                if (build != null) {
                    Iterator it = slaves.iterator();
                    while (it.hasNext()) {
                        final TaskHandler taskHandler = (TaskHandler) it.next();
                        TaskHandler.Companion.download(taskHandler.getRuleUri(), taskHandler.getUseCase() + '_' + taskHandler.getVersionId() + "_rule", new FileDownloadTask.Callback() { // from class: com.facebook.appevents.ml.d
                            @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                            public final void onComplete(File file2) {
                                ModelManager.TaskHandler.Companion.m107execute$lambda1$lambda0(ModelManager.TaskHandler.this, build, file2);
                            }
                        });
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: execute$lambda-1$lambda-0  reason: not valid java name */
            public static final void m107execute$lambda1$lambda0(TaskHandler slave, Model model, File file) {
                Intrinsics.checkNotNullParameter(slave, "$slave");
                Intrinsics.checkNotNullParameter(file, "file");
                slave.setModel(model);
                slave.setRuleFile(file);
                Runnable runnable = slave.onPostExecute;
                if (runnable == null) {
                    return;
                }
                runnable.run();
            }

            @Nullable
            public final TaskHandler build(@Nullable JSONObject jSONObject) {
                String useCase;
                String assetUri;
                String optString;
                int i9;
                float[] access$parseJsonArray;
                if (jSONObject != null) {
                    try {
                        useCase = jSONObject.getString(ModelManager.USE_CASE_KEY);
                        assetUri = jSONObject.getString(ModelManager.ASSET_URI_KEY);
                        optString = jSONObject.optString(ModelManager.RULES_URI_KEY, null);
                        i9 = jSONObject.getInt(ModelManager.VERSION_ID_KEY);
                        access$parseJsonArray = ModelManager.access$parseJsonArray(ModelManager.INSTANCE, jSONObject.getJSONArray(ModelManager.THRESHOLD_KEY));
                        Intrinsics.checkNotNullExpressionValue(useCase, "useCase");
                        Intrinsics.checkNotNullExpressionValue(assetUri, "assetUri");
                    } catch (Exception unused) {
                        return null;
                    }
                }
                return new TaskHandler(useCase, assetUri, optString, i9, access$parseJsonArray);
            }

            public final void execute(@NotNull TaskHandler handler) {
                List<TaskHandler> listOf;
                Intrinsics.checkNotNullParameter(handler, "handler");
                listOf = CollectionsKt__CollectionsJVMKt.listOf(handler);
                execute(handler, listOf);
            }

            public final void execute(@NotNull TaskHandler master, @NotNull final List<TaskHandler> slaves) {
                Intrinsics.checkNotNullParameter(master, "master");
                Intrinsics.checkNotNullParameter(slaves, "slaves");
                deleteOldFiles(master.getUseCase(), master.getVersionId());
                download(master.getAssetUri(), master.getUseCase() + '_' + master.getVersionId(), new FileDownloadTask.Callback() { // from class: com.facebook.appevents.ml.e
                    @Override // com.facebook.appevents.internal.FileDownloadTask.Callback
                    public final void onComplete(File file) {
                        ModelManager.TaskHandler.Companion.m106execute$lambda1(slaves, file);
                    }
                });
            }
        }

        public TaskHandler(@NotNull String useCase, @NotNull String assetUri, @Nullable String str, int i9, @Nullable float[] fArr) {
            Intrinsics.checkNotNullParameter(useCase, "useCase");
            Intrinsics.checkNotNullParameter(assetUri, "assetUri");
            this.useCase = useCase;
            this.assetUri = assetUri;
            this.ruleUri = str;
            this.versionId = i9;
            this.thresholds = fArr;
        }

        @NotNull
        public final String getAssetUri() {
            return this.assetUri;
        }

        @Nullable
        public final Model getModel() {
            return this.model;
        }

        @Nullable
        public final File getRuleFile() {
            return this.ruleFile;
        }

        @Nullable
        public final String getRuleUri() {
            return this.ruleUri;
        }

        @Nullable
        public final float[] getThresholds() {
            return this.thresholds;
        }

        @NotNull
        public final String getUseCase() {
            return this.useCase;
        }

        public final int getVersionId() {
            return this.versionId;
        }

        public final void setAssetUri(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.assetUri = str;
        }

        public final void setModel(@Nullable Model model) {
            this.model = model;
        }

        @NotNull
        public final TaskHandler setOnPostExecute(@Nullable Runnable runnable) {
            this.onPostExecute = runnable;
            return this;
        }

        public final void setRuleFile(@Nullable File file) {
            this.ruleFile = file;
        }

        public final void setRuleUri(@Nullable String str) {
            this.ruleUri = str;
        }

        public final void setThresholds(@Nullable float[] fArr) {
            this.thresholds = fArr;
        }

        public final void setUseCase(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.useCase = str;
        }

        public final void setVersionId(int i9) {
            this.versionId = i9;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Task.valuesCustom().length];
            iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 1;
            iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        List<String> listOf;
        List<String> listOf2;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"other", AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION, AppEventsConstants.EVENT_NAME_ADDED_TO_CART, AppEventsConstants.EVENT_NAME_PURCHASED, AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT});
        MTML_SUGGESTED_EVENTS_PREDICTION = listOf;
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{IntegrityManager.INTEGRITY_TYPE_NONE, IntegrityManager.INTEGRITY_TYPE_ADDRESS, IntegrityManager.INTEGRITY_TYPE_HEALTH});
        MTML_INTEGRITY_DETECT_PREDICTION = listOf2;
    }

    private ModelManager() {
    }

    public static final /* synthetic */ float[] access$parseJsonArray(ModelManager modelManager, JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            return modelManager.parseJsonArray(jSONArray);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
            return null;
        }
    }

    private final void addModels(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    TaskHandler build = TaskHandler.Companion.build(jSONObject.getJSONObject(keys.next()));
                    if (build != null) {
                        taskHandlers.put(build.getUseCase(), build);
                    }
                } catch (JSONException unused) {
                    return;
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @JvmStatic
    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            Utility utility = Utility.INSTANCE;
            Utility.runOnNonUiThread(new Runnable() { // from class: com.facebook.appevents.ml.c
                @Override // java.lang.Runnable
                public final void run() {
                    ModelManager.m103enable$lambda0();
                }
            });
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[Catch: all -> 0x007d, Exception -> 0x0081, TryCatch #2 {Exception -> 0x0081, all -> 0x007d, blocks: (B:5:0x000d, B:7:0x0021, B:12:0x002b, B:14:0x0036, B:16:0x0046, B:18:0x004c, B:24:0x0074, B:20:0x0054, B:23:0x005d, B:13:0x0031), top: B:30:0x000d }] */
    /* renamed from: enable$lambda-0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m103enable$lambda0() {
        /*
            java.lang.String r0 = "model_request_timestamp"
            java.lang.String r1 = "models"
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r2 = com.facebook.appevents.ml.ModelManager.class
            boolean r3 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r2)
            if (r3 == 0) goto Ld
            return
        Ld:
            com.facebook.FacebookSdk r3 = com.facebook.FacebookSdk.INSTANCE     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            android.content.Context r3 = com.facebook.FacebookSdk.getApplicationContext()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            java.lang.String r4 = "com.facebook.internal.MODEL_STORE"
            r5 = 0
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r5)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r4 = 0
            java.lang.String r4 = r3.getString(r1, r4)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r4 == 0) goto L31
            int r6 = r4.length()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r6 != 0) goto L28
            r5 = 1
        L28:
            if (r5 == 0) goto L2b
            goto L31
        L2b:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            goto L36
        L31:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r5.<init>()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
        L36:
            r6 = 0
            long r6 = r3.getLong(r0, r6)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            com.facebook.internal.FeatureManager r4 = com.facebook.internal.FeatureManager.INSTANCE     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            com.facebook.internal.FeatureManager$Feature r4 = com.facebook.internal.FeatureManager.Feature.ModelRequest     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            boolean r4 = com.facebook.internal.FeatureManager.isEnabled(r4)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r4 == 0) goto L54
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r4 == 0) goto L54
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            boolean r4 = r4.isValidTimestamp(r6)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r4 != 0) goto L74
        L54:
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            org.json.JSONObject r5 = r4.fetchModels()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            if (r5 != 0) goto L5d
            return
        L5d:
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            android.content.SharedPreferences$Editor r1 = r3.putString(r1, r4)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            android.content.SharedPreferences$Editor r0 = r1.putLong(r0, r3)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r0.apply()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
        L74:
            com.facebook.appevents.ml.ModelManager r0 = com.facebook.appevents.ml.ModelManager.INSTANCE     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r0.addModels(r5)     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            r0.enableMTML()     // Catch: java.lang.Throwable -> L7d java.lang.Exception -> L81
            goto L81
        L7d:
            r0 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r2)
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.ml.ModelManager.m103enable$lambda0():void");
    }

    private final void enableMTML() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = null;
            int i9 = 0;
            for (Map.Entry<String, TaskHandler> entry : taskHandlers.entrySet()) {
                String key = entry.getKey();
                TaskHandler value = entry.getValue();
                if (Intrinsics.areEqual(key, Task.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                    String assetUri = value.getAssetUri();
                    int max = Math.max(i9, value.getVersionId());
                    FeatureManager featureManager = FeatureManager.INSTANCE;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.SuggestedEvents) && isLocaleEnglish()) {
                        arrayList.add(value.setOnPostExecute(new Runnable() { // from class: com.facebook.appevents.ml.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                ModelManager.m104enableMTML$lambda1();
                            }
                        }));
                    }
                    str = assetUri;
                    i9 = max;
                }
                if (Intrinsics.areEqual(key, Task.MTML_INTEGRITY_DETECT.toUseCase())) {
                    str = value.getAssetUri();
                    i9 = Math.max(i9, value.getVersionId());
                    FeatureManager featureManager2 = FeatureManager.INSTANCE;
                    if (FeatureManager.isEnabled(FeatureManager.Feature.IntelligentIntegrity)) {
                        arrayList.add(value.setOnPostExecute(new Runnable() { // from class: com.facebook.appevents.ml.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                ModelManager.m105enableMTML$lambda2();
                            }
                        }));
                    }
                }
            }
            if (str == null || i9 <= 0 || arrayList.isEmpty()) {
                return;
            }
            TaskHandler.Companion.execute(new TaskHandler(MTML_USE_CASE, str, null, i9, null), arrayList);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enableMTML$lambda-1  reason: not valid java name */
    public static final void m104enableMTML$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            SuggestedEventsManager suggestedEventsManager = SuggestedEventsManager.INSTANCE;
            SuggestedEventsManager.enable();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enableMTML$lambda-2  reason: not valid java name */
    public static final void m105enableMTML$lambda2() {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return;
        }
        try {
            IntegrityManager integrityManager = IntegrityManager.INSTANCE;
            IntegrityManager.enable();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
        }
    }

    private final JSONObject fetchModels() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            String[] strArr = {USE_CASE_KEY, VERSION_ID_KEY, ASSET_URI_KEY, RULES_URI_KEY, THRESHOLD_KEY};
            Bundle bundle = new Bundle();
            bundle.putString(GraphRequest.FIELDS_PARAM, TextUtils.join(",", strArr));
            GraphRequest newGraphPathRequest = GraphRequest.Companion.newGraphPathRequest(null, "app/model_asset", null);
            newGraphPathRequest.setParameters(bundle);
            JSONObject jSONObject = newGraphPathRequest.executeAndWait().getJSONObject();
            if (jSONObject == null) {
                return null;
            }
            return parseRawJsonObject(jSONObject);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final File getRuleFile(@NotNull Task task) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(task, "task");
            TaskHandler taskHandler = taskHandlers.get(task.toUseCase());
            if (taskHandler == null) {
                return null;
            }
            return taskHandler.getRuleFile();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
            return null;
        }
    }

    private final boolean isLocaleEnglish() {
        boolean contains$default;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Utility utility = Utility.INSTANCE;
            Locale resourceLocale = Utility.getResourceLocale();
            if (resourceLocale != null) {
                String language = resourceLocale.getLanguage();
                Intrinsics.checkNotNullExpressionValue(language, "locale.language");
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) language, (CharSequence) "en", false, 2, (Object) null);
                if (!contains$default) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    private final boolean isValidTimestamp(long j10) {
        if (CrashShieldHandler.isObjectCrashing(this) || j10 == 0) {
            return false;
        }
        try {
            return System.currentTimeMillis() - j10 < 259200000;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    private final float[] parseJsonArray(JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(this) || jSONArray == null) {
            return null;
        }
        try {
            float[] fArr = new float[jSONArray.length()];
            int i9 = 0;
            int length = jSONArray.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    try {
                        String string = jSONArray.getString(i9);
                        Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                        fArr[i9] = Float.parseFloat(string);
                    } catch (JSONException unused) {
                    }
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return fArr;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final JSONObject parseRawJsonObject(JSONObject jSONObject) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int i9 = 0;
                int length = jSONArray.length();
                if (length <= 0) {
                    return jSONObject2;
                }
                while (true) {
                    int i10 = i9 + 1;
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i9);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(VERSION_ID_KEY, jSONObject3.getString(VERSION_ID_KEY));
                    jSONObject4.put(USE_CASE_KEY, jSONObject3.getString(USE_CASE_KEY));
                    jSONObject4.put(THRESHOLD_KEY, jSONObject3.getJSONArray(THRESHOLD_KEY));
                    jSONObject4.put(ASSET_URI_KEY, jSONObject3.getString(ASSET_URI_KEY));
                    if (jSONObject3.has(RULES_URI_KEY)) {
                        jSONObject4.put(RULES_URI_KEY, jSONObject3.getString(RULES_URI_KEY));
                    }
                    jSONObject2.put(jSONObject3.getString(USE_CASE_KEY), jSONObject4);
                    if (i10 >= length) {
                        return jSONObject2;
                    }
                    i9 = i10;
                }
            } catch (JSONException unused) {
                return new JSONObject();
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String[] predict(@NotNull Task task, @NotNull float[][] denses, @NotNull String[] texts) {
        if (CrashShieldHandler.isObjectCrashing(ModelManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(task, "task");
            Intrinsics.checkNotNullParameter(denses, "denses");
            Intrinsics.checkNotNullParameter(texts, "texts");
            TaskHandler taskHandler = taskHandlers.get(task.toUseCase());
            Model model = taskHandler == null ? null : taskHandler.getModel();
            if (model == null) {
                return null;
            }
            float[] thresholds = taskHandler.getThresholds();
            int length = texts.length;
            int length2 = denses[0].length;
            MTensor mTensor = new MTensor(new int[]{length, length2});
            if (length > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    System.arraycopy(denses[i9], 0, mTensor.getData(), i9 * length2, length2);
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
            MTensor predictOnMTML = model.predictOnMTML(mTensor, texts, task.toKey());
            if (predictOnMTML != null && thresholds != null) {
                if (!(predictOnMTML.getData().length == 0)) {
                    if (!(thresholds.length == 0)) {
                        int i11 = WhenMappings.$EnumSwitchMapping$0[task.ordinal()];
                        if (i11 != 1) {
                            if (i11 == 2) {
                                return INSTANCE.processIntegrityDetectionResult(predictOnMTML, thresholds);
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        return INSTANCE.processSuggestedEventResult(predictOnMTML, thresholds);
                    }
                }
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ModelManager.class);
            return null;
        }
    }

    private final String[] processIntegrityDetectionResult(MTensor mTensor, float[] fArr) {
        IntRange until;
        int collectionSizeOrDefault;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape2 != fArr.length) {
                return null;
            }
            until = RangesKt___RangesKt.until(0, shape);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                String str = IntegrityManager.INTEGRITY_TYPE_NONE;
                int length = fArr.length;
                int i9 = 0;
                int i10 = 0;
                while (i9 < length) {
                    int i11 = i10 + 1;
                    if (data[(nextInt * shape2) + i10] >= fArr[i9]) {
                        str = MTML_INTEGRITY_DETECT_PREDICTION.get(i10);
                    }
                    i9++;
                    i10 = i11;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final String[] processSuggestedEventResult(MTensor mTensor, float[] fArr) {
        IntRange until;
        int collectionSizeOrDefault;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape2 != fArr.length) {
                return null;
            }
            until = RangesKt___RangesKt.until(0, shape);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<Integer> it = until.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                String str = "other";
                int length = fArr.length;
                int i9 = 0;
                int i10 = 0;
                while (i9 < length) {
                    int i11 = i10 + 1;
                    if (data[(nextInt * shape2) + i10] >= fArr[i9]) {
                        str = MTML_SUGGESTED_EVENTS_PREDICTION.get(i10);
                    }
                    i9++;
                    i10 = i11;
                }
                arrayList.add(str);
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }
}
