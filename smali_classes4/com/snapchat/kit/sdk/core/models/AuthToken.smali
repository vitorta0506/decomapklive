.class public Lcom/snapchat/kit/sdk/core/models/AuthToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private mExpiresIn:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private mLastUpdated:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_updated"
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mAccessToken:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mTokenType:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    .line 6
    iput-wide p6, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    .line 7
    iput-object p8, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mScope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mAccessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mAccessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mTokenType:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mTokenType:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    return-wide v0
.end method

.method public getExpiresInMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getLastUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public hasAccessToScope(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mAccessToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mTokenType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mExpiresIn:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getTokenType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bearer"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getExpiresIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getLastUpdated()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getExpiresInMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLastUpdated(J)V
    .locals 0

    iput-wide p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mLastUpdated:J

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/models/AuthToken;->mRefreshToken:Ljava/lang/String;

    return-void
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

    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willBeExpiredAfter(Ljava/lang/Long;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getLastUpdated()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/models/AuthToken;->getExpiresInMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
