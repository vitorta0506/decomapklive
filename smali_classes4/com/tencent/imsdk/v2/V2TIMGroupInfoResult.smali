.class public Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/imsdk/group/GroupInfoGetResult;

    invoke-direct {v0}, Lcom/tencent/imsdk/group/GroupInfoGetResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    return-void
.end method


# virtual methods
.method public getGroupInfo()Lcom/tencent/imsdk/v2/V2TIMGroupInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    invoke-virtual {v1}, Lcom/tencent/imsdk/group/GroupInfoGetResult;->getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupInfo;->setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V

    return-object v0
.end method

.method getGroupInfoGetResult()Lcom/tencent/imsdk/group/GroupInfoGetResult;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoGetResult;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getResultMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    invoke-virtual {v0}, Lcom/tencent/imsdk/group/GroupInfoGetResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setGroupInfoGetResult(Lcom/tencent/imsdk/group/GroupInfoGetResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMGroupInfoResult;->groupInfoGetResult:Lcom/tencent/imsdk/group/GroupInfoGetResult;

    return-void
.end method
