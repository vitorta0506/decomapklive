.class public Lcom/guochao/faceshow/aaspring/utils/SpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAME:Ljava/lang/String; = "faceshow"

.field public static final SP_LAST_LOGIN_TYPE:Ljava/lang/String; = "last_login_type"

.field public static final SP_REASON_LOGOUT:Ljava/lang/String; = "logout_reason"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllData(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->clearAll()V

    return-void
.end method

.method public static getBool(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBool(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)Ljava/lang/Float;
    .locals 0

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 4
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLastLoginType()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "last_login_type"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "vk"

    return-object v0

    :pswitch_1
    const-string v0, "line"

    return-object v0

    :pswitch_2
    const-string v0, "ins"

    return-object v0

    :pswitch_3
    const-string v0, "g"

    return-object v0

    :pswitch_4
    const-string v0, "twitter"

    return-object v0

    :pswitch_5
    const-string v0, "facebook"

    return-object v0

    :pswitch_6
    const-string v0, "\u5fae\u535a"

    return-object v0

    :pswitch_7
    const-string v0, "qq"

    return-object v0

    :pswitch_8
    const-string v0, "\u5fae\u4fe1"

    return-object v0

    :pswitch_9
    const-string v0, "\u624b\u673a"

    return-object v0

    :pswitch_a
    const-string v0, "\u90ae\u7bb1"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLogoutReason()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "logout_reason"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "not set"

    return-object v0

    :cond_0
    const-string v0, "\u5176\u4ed6\u8bbe\u5907\u767b\u5f55"

    return-object v0

    :cond_1
    const-string v0, "\u8d26\u53f7\u51bb\u7ed3"

    return-object v0

    :cond_2
    const-string v0, "token\u5931\u6548"

    return-object v0

    :cond_3
    const-string v0, "\u624b\u52a8\u9000\u51fa"

    return-object v0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSelfInt(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSelfInt(Ljava/lang/String;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSelfInt2(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSelfLong(Ljava/lang/String;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSelfString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelfString2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShareActivityBean(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStr(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 5
    :cond_0
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static setBool(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setSelfInt(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSelfInt2(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setSelfLong(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setSelfString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSelfString2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setStr(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 4
    :cond_0
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
