.class public Lcom/tencent/imsdk/group/GroupMemberInfoResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private groupMemberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nextSeq:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupMemberInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->groupMemberInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getNextSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->nextSeq:J

    return-wide v0
.end method

.method public setGroupMemberInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->groupMemberInfoList:Ljava/util/List;

    return-void
.end method

.method public setNextSeq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/imsdk/group/GroupMemberInfoResult;->nextSeq:J

    return-void
.end method
