.class public Lcom/tencent/imsdk/group/GroupInfoGetResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private groupID:Ljava/lang/String;

.field private groupInfo:Lcom/tencent/imsdk/group/GroupInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfo()Lcom/tencent/imsdk/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->errorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->groupID:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfo(Lcom/tencent/imsdk/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoGetResult;->groupInfo:Lcom/tencent/imsdk/group/GroupInfo;

    return-void
.end method
