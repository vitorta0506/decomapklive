package com.linecorp.linesdk.openchat;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatParameters;", "", "name", "", "description", "creatorDisplayName", "category", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "isSearchable", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V", "toJsonString", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class OpenChatParameters {
    private final OpenChatCategory category;
    private final String creatorDisplayName;
    private final String description;
    private final boolean isSearchable;
    private final String name;

    public OpenChatParameters(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull OpenChatCategory openChatCategory, boolean z10) {
        this.name = str;
        this.description = str2;
        this.creatorDisplayName = str3;
        this.category = openChatCategory;
        this.isSearchable = z10;
        boolean z11 = true;
        if ((str.length() > 0) && str.length() <= 50) {
            if (!(str2.length() <= 200)) {
                throw new IllegalArgumentException("String size needs to be less or equal to 200".toString());
            }
            if (!((!(str3.length() > 0) || str3.length() > 50) ? false : false)) {
                throw new IllegalArgumentException("String size needs to be less or equal to 50".toString());
            }
            return;
        }
        throw new IllegalArgumentException("String size needs to be less or equal to 50".toString());
    }

    @NotNull
    public final String toJsonString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", this.name);
            jSONObject.put("description", this.description);
            jSONObject.put("creatorDisplayName", this.creatorDisplayName);
            jSONObject.put("category", this.category.getId());
            jSONObject.put("allowSearch", this.isSearchable);
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkExpressionValueIsNotNull(jSONObject2, "JSONObject().apply {\n   …ble)\n        }.toString()");
            return jSONObject2;
        } catch (JSONException unused) {
            return "{}";
        }
    }

    public /* synthetic */ OpenChatParameters(String str, String str2, String str3, OpenChatCategory openChatCategory, boolean z10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i9 & 8) != 0 ? OpenChatCategory.Game : openChatCategory, (i9 & 16) != 0 ? true : z10);
    }
}
