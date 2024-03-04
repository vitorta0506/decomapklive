package com.facebook.appevents.codeless.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\bR\u0011\u0010\u0010\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ParameterComponent;", "", "component", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "name", "", "getName", "()Ljava/lang/String;", "path", "", "Lcom/facebook/appevents/codeless/internal/PathComponent;", "getPath", "()Ljava/util/List;", "pathType", "getPathType", ParameterComponent.PARAMETER_VALUE_KEY, "getValue", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ParameterComponent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String PARAMETER_NAME_KEY = "name";
    @NotNull
    private static final String PARAMETER_PATH_KEY = "path";
    @NotNull
    private static final String PARAMETER_VALUE_KEY = "value";
    @NotNull
    private final String name;
    @NotNull
    private final List<PathComponent> path;
    @NotNull
    private final String pathType;
    @NotNull
    private final String value;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ParameterComponent$Companion;", "", "()V", "PARAMETER_NAME_KEY", "", "PARAMETER_PATH_KEY", "PARAMETER_VALUE_KEY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ParameterComponent(@NotNull JSONObject component) {
        Intrinsics.checkNotNullParameter(component, "component");
        String string = component.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "component.getString(PARAMETER_NAME_KEY)");
        this.name = string;
        String optString = component.optString(PARAMETER_VALUE_KEY);
        Intrinsics.checkNotNullExpressionValue(optString, "component.optString(PARAMETER_VALUE_KEY)");
        this.value = optString;
        String optString2 = component.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE);
        Intrinsics.checkNotNullExpressionValue(optString2, "component.optString(Constants.EVENT_MAPPING_PATH_TYPE_KEY, Constants.PATH_TYPE_ABSOLUTE)");
        this.pathType = optString2;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = component.optJSONArray("path");
        if (optJSONArray != null) {
            int i9 = 0;
            int length = optJSONArray.length();
            if (length > 0) {
                while (true) {
                    int i10 = i9 + 1;
                    JSONObject jSONObject = optJSONArray.getJSONObject(i9);
                    Intrinsics.checkNotNullExpressionValue(jSONObject, "jsonPathArray.getJSONObject(i)");
                    arrayList.add(new PathComponent(jSONObject));
                    if (i10 >= length) {
                        break;
                    }
                    i9 = i10;
                }
            }
        }
        this.path = arrayList;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final List<PathComponent> getPath() {
        return this.path;
    }

    @NotNull
    public final String getPathType() {
        return this.pathType;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
