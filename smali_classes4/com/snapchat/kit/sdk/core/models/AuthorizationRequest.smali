.class public Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mClientId"
    .end annotation
.end field

.field private mCodeChallenge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCodeChallenge"
    .end annotation
.end field

.field private mCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCodeChallengeMethod"
    .end annotation
.end field

.field private mCodeVerifier:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCodeVerifier"
    .end annotation
.end field

.field private mFeatures:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mFeatures"
    .end annotation
.end field

.field private mIsForFirebaseAuthentication:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mIsForFirebaseAuthentication"
    .end annotation
.end field

.field private mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mKitPluginType"
    .end annotation
.end field

.field private mRedirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mRedirectUri"
    .end annotation
.end field

.field private mResponseType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mResponseType"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mScope"
    .end annotation
.end field

.field private mSdkIsFromReactNativePlugin:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mSdkIsFromReactNativePlugin"
    .end annotation
.end field

.field private mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mState"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mScope:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mScope:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeVerifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeVerifier:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    .line 11
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 12
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean p1, p1, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getCodeVerifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getIsForFirebaseAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    return v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkIsFromReactNativePlugin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mScope:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeVerifier:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "https://accounts.snapchat.com/accounts"

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    const-string v0, "response_type"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    const-string v0, "client_id"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    const-string v0, "redirect_uri"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mScope:Ljava/lang/String;

    const-string v0, "scope"

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    const-string/jumbo v0, "state"

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    const-string v0, "code_challenge_method"

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    const-string v0, "code_challenge"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdk_is_from_react_native_plugin"

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_for_firebase_authentication"

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "package_name"

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 17
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "source"

    .line 18
    invoke-virtual {p1, p2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    :cond_2
    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    const-string p3, "features"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string p2, "kit_version"

    const-string p3, "1.13.2"

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    const-string p3, "link"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    iget-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    sget-object p3, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->NO_PLUGIN:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    if-eq p2, p3, :cond_4

    .line 24
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "kitPluginType"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public withClientId(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public withCodeChallenge(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallenge:Ljava/lang/String;

    return-object p0
.end method

.method public withCodeChallengeMethod(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeChallengeMethod:Ljava/lang/String;

    return-object p0
.end method

.method public withCodeVerifier(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mCodeVerifier:Ljava/lang/String;

    return-object p0
.end method

.method public withFeatures(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mFeatures:Ljava/lang/String;

    return-object p0
.end method

.method public withIsForFirebaseAuthentication(Z)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mIsForFirebaseAuthentication:Z

    return-object p0
.end method

.method public withKitPluginType(Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mKitPluginType:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    return-object p0
.end method

.method public withRedirectUri(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public withResponseType(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mResponseType:Ljava/lang/String;

    return-object p0
.end method

.method public withScope(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public withSdkIsFromReactNativePlugin(Z)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mSdkIsFromReactNativePlugin:Z

    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthorizationRequest;->mState:Ljava/lang/String;

    return-object p0
.end method
