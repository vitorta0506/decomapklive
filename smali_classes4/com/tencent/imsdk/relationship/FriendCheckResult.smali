.class public Lcom/tencent/imsdk/relationship/FriendCheckResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private relationType:I

.field private resultCode:I

.field private resultInfo:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelationType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendCheckResult;->relationType:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/relationship/FriendCheckResult;->resultCode:I

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendCheckResult;->resultInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/relationship/FriendCheckResult;->userID:Ljava/lang/String;

    return-object v0
.end method
